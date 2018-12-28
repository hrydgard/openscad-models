// Cap for Swedish yoghurt tetra paks
// Print in Flex-98 or something

module aligned_cube( size, align = [ 0, 0, 0 ] )
  translate(-size/2*[[align[0],0,0],[0,align[1],0],[0,0,align[2]]])
  cube( size, center = false );

translate([0,0,0]) {
    difference() {
        union() {
            aligned_cube([65, 97.2, 17], [1, 1, 0]);
            translate([0,0,16])
            aligned_cube([65, 99.2, 1], [1, 1, 0]);
        };
        translate([0,0,-0.01])
        aligned_cube([63, 95.2, 16], [1, 1, 0]);
    }
}

echo(version=version());
