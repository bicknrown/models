module halfPart()
{
    difference()
    {
        difference()
        {
            difference()
            {
                cube([70.5, 110, 19]);
                translate([0, 2, 2])
                {
                    cube([68.5, 108, 17]);
                }
            }

            hull()
            {
                translate([68.5,109,19])
                {
                    cube([2, 1, 1]);
                }

                translate([68.5,61,19])
                {
                    cube([2, 1, 1]);
                }

                translate([68.5,109,2])
                {
                    cube([2, 1, 1]);
                }
            }
        }

        translate([59.5, 100, 0])
        {
            hull()
            {
                cylinder(h = 8, r = 2, $fn = 100);
                translate([0 , 20, 0])
                {
                    cylinder(h = 8, r = 2, $fn = 100);
                }
            }
        }
    }

    difference()
    {
        translate([0, 110, 3])
        {
            rotate([0,90,0])
            {
                cylinder(h = 77, r = 3, $fn = 100);
            }
        }
        translate([59.5, 100, 0])
        {
            hull()
            {
                cylinder(h = 8, r = 2, $fn = 100);
                translate([0 , 20, 0])
                {
                    cylinder(h = 8, r = 2, $fn = 100);
                }
            }
        }
    }

    translate([58.5, 41, 17])
    {
        cube([10, 20, 2]);
    }

    translate([0, 0, 17])
    {
        cube([10, 10, 2]);
    }

    translate([0, 65, 2])
    {
        cube([25, 2, 6]);
    }
}

halfPart();
mirror([1, 0, 0]) halfPart();
