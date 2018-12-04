a = 137.5;
od = 60;
h = 20;
$fn = 8*6;

union() {
  difference() {
    cylinder(h=4,d=od);

    intersection() {
      translate([0, 0, -0.5]) cylinder(h=5,d=od-8);
      
      for (r = [17:1:od*3])
        rotate([0, 0, r*a]) translate([r/6, 0, -0.5]) cylinder(h=5,d=(r+30)/od*1.5);
    }
    
    cylinder(h=5,d=4);
  }

  color("blue") difference() {
    cylinder(h=h,d=od);
    translate([0, 0, -0.5]) cylinder(h=h+1,d=od-8);

    for (r = [0:180/4:180])
      rotate([0, 0, r]) cube([od*2, od/4, h*2-8], true);
  }
}
