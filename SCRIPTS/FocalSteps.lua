--[[

Copyright (c) 2025, Jose R Garcia (jg-fossh@protonmail.com).
All rights reserved.

| Meta      | Data       
| :-------- | :-----------
| _Project_ |
| _Version_ | 1.0
| _Author_  | Jose Garcia
| _License_ | GNU GPLv3

@chdk_version 1.7
@title FocalSteps
@description 
This script gets the amount of available zoom steps for the camera and loops over 
each step to find the 35mm equivalent focal length. For each step the code prints to
screen and to a log file in /LOGS both the step and the focal length in a Markdown
syntax table. 

--]]

-- Main Section

-- Set a low zoom speed and enable print logging to log file *_0001.log
set_zoom_speed(30)
print_screen(true)
print_screen(1)

-- Get/Set initial state
dof = get_dofinfo()
vsteps = get_zoom_steps()
text = dof.eff_focal_length
z = 0

print("Start!\n")
-- Print the table's header
print("| Step | Eqv.FL |")
print("| :--: | :----: |")
-- Loop over all the available steps
while z ~= vsteps do
    -- Set zoom to current step value
    set_zoom(z)
    -- Fetch current equivalent focal length
    dof = get_dofinfo()
    -- Print table entry
    print("| "..z.." | "..(dof.eff_focal_length).." |")
    -- Increment step count
    z = (z+1)
    sleep(300)
end

print("\nDone!")

exit_alt()