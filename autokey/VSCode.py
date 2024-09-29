import subprocess

# Execute the command using subprocess
command = 'wmctrl -lx'
output = subprocess.check_output(command, shell=True, text=True)

# Check if Firefox is running
if 'code.Code' in output:
    # Get the active window class
    active_win_class_command = "xdotool getactivewindow getwindowclassname"
    winClass = subprocess.check_output(active_win_class_command, shell=True, text=True).strip()

    # If the active window is Firefox, minimize it
    if winClass == 'Code':
        subprocess.run("xdotool windowminimize $(xdotool getactivewindow)", shell=True)
    else:
        # Otherwise, activate Firefox
        subprocess.run("wmctrl -xa code.Code", shell=True)
else:
    # If Firefox is not running, start it
    #subprocess.Popen(["/usr/bin/firefox"])
    pass
