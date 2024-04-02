---
layout: post
title: Setting up my Creality Ender 5 S1
date: 2023-08-27
author: Andy Aspell-Clark
tags:
    - computers
---


## setup Cura slicer 5.4.0

```
Print Speed : 120 mm/s
Infill speed : 120 mm/s
Outer wall speed : 50 mm/s
Travel speed : 300 mm/s
```

## Creality slicer start gcode:
```

;Nozzle diameter = {machine_nozzle_size}
;Filament type = {material_type}
;Filament name = {material_brand} {material_name}
;Filament weight = {filament_weight}
; M190 S{material_bed_temperature_layer_0}
; M109 S{material_print_temperature_layer_0}

G28 ;Home	
; G29
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 X10.1 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X10.4 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
```

## Creality slicer end gcode:
```
G91 ;Relative positionning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positionning

G1 X0 Y0 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

```
