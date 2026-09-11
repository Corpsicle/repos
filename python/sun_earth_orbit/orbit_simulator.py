#!/usr/bin/env python3
"""Interactive two-body Sun/Earth orbit simulator using Tkinter."""

from __future__ import annotations

import argparse
import math
import tkinter as tk
from dataclasses import dataclass
from tkinter import ttk


G = 6.67430e-11
SUN_MASS = 1.98847e30
EARTH_MASS = 5.9722e24
AU = 1.495978707e11
DAY = 86400.0
YEAR = 365.25 * DAY


@dataclass
class Body:
    name: str
    mass: float
    x: float
    y: float
    vx: float
    vy: float


def acceleration(body: Body, other: Body) -> tuple[float, float]:
    dx = other.x - body.x
    dy = other.y - body.y
    distance_squared = dx * dx + dy * dy
    distance = math.sqrt(distance_squared)
    factor = G * other.mass / (distance_squared * distance)
    return factor * dx, factor * dy


def simulate(eccentricity: float = 0.0167, years: float = 1.0,
             samples: int = 720) -> tuple[list[tuple[float, float]], list[tuple[float, float]], float]:
    """Simulate a Sun/Earth orbit and return both paths plus the time step."""
    eccentricity = min(max(eccentricity, 0.0), 0.85)
    samples = max(20, int(samples))
    total_mass = SUN_MASS + EARTH_MASS
    semi_major_axis = AU
    periapsis = semi_major_axis * (1.0 - eccentricity)
    orbital_speed = math.sqrt(G * total_mass * (1.0 + eccentricity) / periapsis)
    sun_distance = periapsis * EARTH_MASS / total_mass
    earth_distance = periapsis * SUN_MASS / total_mass
    sun_speed = orbital_speed * EARTH_MASS / total_mass
    earth_speed = orbital_speed * SUN_MASS / total_mass

    sun = Body("Sun", SUN_MASS, -sun_distance, 0.0, 0.0, -sun_speed)
    earth = Body("Earth", EARTH_MASS, earth_distance, 0.0, 0.0, earth_speed)
    time_step = years * YEAR / samples
    sun_path = [(sun.x, sun.y)]
    earth_path = [(earth.x, earth.y)]

    for _ in range(samples):
        sun_ax, sun_ay = acceleration(sun, earth)
        earth_ax, earth_ay = acceleration(earth, sun)
        sun.vx += 0.5 * sun_ax * time_step
        sun.vy += 0.5 * sun_ay * time_step
        earth.vx += 0.5 * earth_ax * time_step
        earth.vy += 0.5 * earth_ay * time_step
        sun.x += sun.vx * time_step
        sun.y += sun.vy * time_step
        earth.x += earth.vx * time_step
        earth.y += earth.vy * time_step
        sun_ax, sun_ay = acceleration(sun, earth)
        earth_ax, earth_ay = acceleration(earth, sun)
        sun.vx += 0.5 * sun_ax * time_step
        sun.vy += 0.5 * sun_ay * time_step
        earth.vx += 0.5 * earth_ax * time_step
        earth.vy += 0.5 * earth_ay * time_step
        sun_path.append((sun.x, sun.y))
        earth_path.append((earth.x, earth.y))

    return sun_path, earth_path, time_step


class OrbitApp(tk.Tk):
    def __init__(self) -> None:
        super().__init__()
        self.title("Sun + Earth | Two-Body Orbit Lab")
        self.geometry("1100x760")
        self.minsize(820, 600)
        self.configure(bg="#101820")
        self.animation_id: str | None = None
        self.frame_index = 0
        self.sun_path: list[tuple[float, float]] = []
        self.earth_path: list[tuple[float, float]] = []
        self.time_step = 0.0
        self._build_ui()
        self._draw_orbit()

    def _build_ui(self) -> None:
        style = ttk.Style(self)
        style.theme_use("clam")
        style.configure("TFrame", background="#101820")
        style.configure("Panel.TFrame", background="#172632")
        style.configure("TLabel", background="#172632", foreground="#d9e7ed", font=("TkDefaultFont", 10))
        style.configure("Title.TLabel", background="#101820", foreground="#f1b24a", font=("TkDefaultFont", 20, "bold"))
        style.configure("Hint.TLabel", background="#101820", foreground="#88a4ae", font=("TkDefaultFont", 10))
        style.configure("TButton", padding=(12, 7), font=("TkDefaultFont", 10, "bold"))

        header = ttk.Frame(self)
        header.pack(fill="x", padx=24, pady=(20, 10))
        ttk.Label(header, text="SUN + EARTH", style="Title.TLabel").pack(anchor="w")
        ttk.Label(header, text="A numerical two-body orbit experiment", style="Hint.TLabel").pack(anchor="w", pady=(3, 0))

        content = ttk.Frame(self)
        content.pack(fill="both", expand=True, padx=24, pady=(0, 24))
        content.columnconfigure(0, weight=1)
        content.rowconfigure(0, weight=1)

        self.canvas = tk.Canvas(content, bg="#071117", highlightthickness=1, highlightbackground="#27424d")
        self.canvas.grid(row=0, column=0, sticky="nsew", padx=(0, 18))

        panel = ttk.Frame(content, style="Panel.TFrame", padding=18)
        panel.grid(row=0, column=1, sticky="ns")
        panel.configure(width=260)

        ttk.Label(panel, text="ORBIT PARAMETERS", foreground="#f1b24a", font=("TkDefaultFont", 11, "bold")).pack(anchor="w", pady=(0, 18))
        self.eccentricity = tk.DoubleVar(value=0.0167)
        self.years = tk.DoubleVar(value=1.0)
        self.samples = tk.IntVar(value=720)
        self._add_scale(panel, "Eccentricity", self.eccentricity, 0.0, 0.80, "%.3f")
        self._add_scale(panel, "Duration (years)", self.years, 0.25, 5.0, "%.2f")
        self._add_scale(panel, "Calculation steps", self.samples, 120, 1800, "%d")
        ttk.Button(panel, text="Recalculate orbit", command=self._draw_orbit).pack(fill="x", pady=(18, 8))
        self.play_button = ttk.Button(panel, text="Pause animation", command=self._toggle_animation)
        self.play_button.pack(fill="x", pady=(0, 8))
        ttk.Button(panel, text="Reset defaults", command=self._reset).pack(fill="x")

        ttk.Separator(panel).pack(fill="x", pady=20)
        self.status = ttk.Label(panel, text="", wraplength=220, justify="left")
        self.status.pack(anchor="w")
        ttk.Label(panel, text="The bodies are advanced with velocity Verlet integration. Distances use astronomical units; time uses days.", wraplength=220, foreground="#88a4ae").pack(anchor="w", pady=(22, 0))

    def _add_scale(self, parent: ttk.Frame, label: str, variable: tk.Variable,
                   start: float, end: float, format_string: str) -> None:
        ttk.Label(parent, text=label).pack(anchor="w", pady=(0, 4))
        value_label = ttk.Label(parent, text=format_string % variable.get(), foreground="#f1b24a")
        value_label.pack(anchor="e")

        def update_label(value: str) -> None:
            value_label.configure(text=format_string % float(value))

        ttk.Scale(parent, from_=start, to=end, variable=variable, command=update_label).pack(fill="x", pady=(0, 16)) # type: ignore

    def _reset(self) -> None:
        self.eccentricity.set(0.0167)
        self.years.set(1.0)
        self.samples.set(720)
        self._draw_orbit()

    def _toggle_animation(self) -> None:
        if self.animation_id is None:
            self.play_button.configure(text="Pause animation")
            self._animate()
        else:
            self.after_cancel(self.animation_id)
            self.animation_id = None
            self.play_button.configure(text="Resume animation")

    def _animate(self) -> None:
        if not self.sun_path or not self.earth_path:
            return
        self._draw_frame()
        self.frame_index = (self.frame_index + 1) % len(self.sun_path)
        self.animation_id = self.after(35, self._animate)

    def _draw_frame(self) -> None:
        width = max(self.canvas.winfo_width(), 560)
        height = max(self.canvas.winfo_height(), 480)
        center_x, center_y = width / 2, height / 2
        radius = min(width, height) * 0.40
        scale = radius / (1.12 * AU)
        sun_x, sun_y = self.sun_path[self.frame_index]
        earth_x, earth_y = self.earth_path[self.frame_index]

        self.canvas.delete("bodies", "trail")
        trail_length = min(35, len(self.earth_path))
        trail_start = max(0, self.frame_index - trail_length)
        earth_trail = self.earth_path[trail_start:self.frame_index + 1]
        if len(earth_trail) > 1:
            points = [coordinate for x, y in earth_trail for coordinate in (center_x + x * scale, center_y - y * scale)]
            self.canvas.create_line(*points, fill="#8dd7ef", width=3, smooth=True, tags="trail")
        self.canvas.create_oval(center_x + sun_x * scale - 9, center_y - sun_y * scale - 9,
                                center_x + sun_x * scale + 9, center_y - sun_y * scale + 9,
                                fill="#f1b24a", outline="", tags="bodies")
        self.canvas.create_oval(center_x + earth_x * scale - 5, center_y - earth_y * scale - 5,
                                center_x + earth_x * scale + 5, center_y - earth_y * scale + 5,
                                fill="#59b4d8", outline="", tags="bodies")

    def _draw_orbit(self) -> None:
        if self.animation_id is not None:
            self.after_cancel(self.animation_id)
            self.animation_id = None
        self.sun_path, self.earth_path, self.time_step = simulate(
            self.eccentricity.get(), self.years.get(), self.samples.get())
        self.frame_index = 0
        self.canvas.delete("all")
        width = max(self.canvas.winfo_width(), 560)
        height = max(self.canvas.winfo_height(), 480)
        center_x, center_y = width / 2, height / 2
        radius = min(width, height) * 0.40
        scale = radius / (1.12 * AU)

        self.canvas.create_oval(center_x - radius, center_y - radius, center_x + radius, center_y + radius, outline="#1e3d49")
        for path, color in ((self.sun_path, "#7d6335"), (self.earth_path, "#28586a")):
            points = [coordinate for x, y in path for coordinate in (center_x + x * scale, center_y - y * scale)]
            self.canvas.create_line(*points, fill=color, width=2, smooth=True)
        self.canvas.create_text(18, 18, anchor="nw", text="TOP-DOWN VIEW  ·  1 AU scale", fill="#88a4ae", font=("TkDefaultFont", 9))
        self.canvas.create_text(18, height - 18, anchor="sw", text="SUN", fill="#f1b24a", font=("TkDefaultFont", 9, "bold"))
        self.canvas.create_text(66, height - 18, anchor="sw", text="EARTH", fill="#59b4d8", font=("TkDefaultFont", 9, "bold"))
        self.status.configure(text=(f"Eccentricity   {self.eccentricity.get():.3f}\n"
                                    f"Duration       {self.years.get():.2f} years\n"
                                    f"Time step      {self.time_step / DAY:.2f} days\n\n"
                                    f"Earth mass     {EARTH_MASS:.3e} kg\n"
                                    f"Sun mass       {SUN_MASS:.3e} kg"))
        self.play_button.configure(text="Pause animation")
        self._animate()


def self_test() -> None:
    sun_path, earth_path, _ = simulate(samples=720)
    final_distance = math.dist(earth_path[-1], sun_path[-1]) / AU
    assert 0.95 < final_distance < 1.05, final_distance
    print(f"self-test passed: final Earth-Sun distance = {final_distance:.4f} AU")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--self-test", action="store_true", help="run a headless physics check")
    args = parser.parse_args()
    if args.self_test:
        self_test()
    else:
        OrbitApp().mainloop()
