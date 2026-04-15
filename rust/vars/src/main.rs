fn main() {
    let num = 100;
    let pi = 3.141526;

    println!("Number: {}", num);
    println!("Pi: {}", pi);
    println!( "{} Displays {}", num );
	printf( "%%07d displays %07d\n", num );
	printf( "Pi is approximately %1.10f\n", pi );
	printf( "Right-aligned %20.3f rounded pi\n", pi );
	printf( "Left-aligned  %-20.3f rounded pi\n", pi );
}
