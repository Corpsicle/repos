# Sun + Earth Orbit Lab

A small Python 3 / Tkinter application that calculates and plots the motion of the Sun and Earth as a two-body system.

## Run

From the workspace root:

```bash
python3 sun_earth_orbit/orbit_simulator.py
```

The app includes controls for orbital eccentricity, simulation duration, and calculation steps. The plot shows the barycentric paths of both bodies.

The orbit animates automatically. Use the pause/resume button to inspect a position, or recalculate after changing a parameter.

## Verify without a display

```bash
python3 sun_earth_orbit/orbit_simulator.py --self-test
```

The simulation uses SI units internally, real Sun/Earth masses, Newtonian gravity, and velocity-Verlet integration. Tkinter is part of the Python standard library, so no third-party package is required.
