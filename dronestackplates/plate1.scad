// Plate to put in 30.5mm drone "stacks" to separate circuit boards

module aligned_cube( size, align = [ 0, 0, 0 ] )
  translate(-size/2*[[align[0],0,0],[0,align[1],0],[0,0,align[2]]])
  cube( size, center = false );

translate([0,0,0]) {
    difference() {
        union() {
            aligned_cube([36, 36, 1], [1, 1, 0]);
            for(i=[0:3]) {
            rotate(i*90)
            translate([30.5/2,30.5/2,-0.5])
            aligned_cube([6, 6, 2], [1, 1, 0]);
            }
        };
        for(i=[0:3]) {
        rotate(i*90)
        translate([30.5/2,30.5/2,-2])
        cylinder(8, r=2, fn=20);
        }
    }
}

echo(version=version());
