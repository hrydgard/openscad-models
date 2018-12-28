// Spare part for cookie maker from the 50s
// Print in PLA
// rotate([0,0,0])
$fn=40;

// 2 extrusions of the polygonish shapes
module polygonish() {
translate([0,35,2]) {
    rotate([90, 0, 0])
    translate([8.5/2, 0])
    linear_extrude(height=2)
    polygon(points = [[0, 0], [7, 0], [5, 7.3], [2.5, 7.3], [0, 4]]);
}
}

module grip() {
    rotate([0, -90, 0])
    translate([0, 0, 18/2])
    rotate([0, 0, -90])
    difference() {
    linear_extrude(height=3)
    polygon(points = [[0, 0], [6, 0], [6, 5.4], [5, 5.5], [3, 2], [1, 5.5],[0, 5.4]]);
    translate([3, 3.3, -0.5])
    cylinder(4, r=3.5/2);
    }
}

translate([0, -23, 0]) {

linear_extrude(height=2)
translate([0,0,2])
polygon(points = [[17/2, 0], [-17/2, 0], [-26/2, 46], [26/2, 46]]);


polygonish();
mirror() polygonish();


translate([0, 46, 2]) {
grip();
mirror() grip();
}
}