/**
 *A cup with a handle
 *
 *I'll make it cylindrical
 *
 */
 
 /*Fine details to use*/
 
diameter = 50;
height = 60;
wall_thickness = 2;
handle_thickness = 8;
icon_size = 15;
resolution = 500;
bottom_thickness = 5;
hand_size = 20;
handle = true;
handle_resolution = 300;

$fn = resolution;

/* Modules */

module mug_added()
{
    cylinder(d=diameter, h=height);
    if(handle == true){
        handle();
    }
}

module mug_taken()
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
    mug_added();
    mug_taken();
    }