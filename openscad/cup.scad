/**
 *A cup with a handle
 *
 *I'll make it cylindrical
 *
 */
 
 /*Fine details to use*/
 
diameter = 40;
height = 50;
wall_thickness = 1.5;
handle_thickness = 7;
resolution = 500;
bottom_thickness = 4;
hand_size = 15;
handle = true;
handle_resolution = 300;

$fn = resolution;

/* Modules */

module cup_added()
{
    cylinder(d=diameter, h=height);
    if(handle == true){
        handle();
    }
}

module cup_taken()
{
    translate([0,0,bottom_thickness]) cylinder(d=diameter-(wall_thickness*2), h=height);
    }
    
module handle()
    {
        $fn = handle_resolution;
        
        translate([hand_size,0,height-hand_size-(handle_thickness/2)]) rotate([90,0,0]) rotate_extrude(){
            translate([hand_size,0,0]) circle(d=handle_thickness);
            }
        }
        
/* Functions */
        
difference(){
    cup_added();
    cup_taken();
    }