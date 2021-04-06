# These commands edit the .sch and .sym files in the current directory and below
# I used them to try and replace absolute paths with local paths
# they do simple text replacements to try and replace absolute paths with local paths
# You will need to edit them to the personal absolute paths you want to replace

# The second set is trying to point to the folder containing sky130_fd_pr
# for me, that is ~/share/sky130_fd_pr but it might be different for you

# replace paths to this folder with "."
find . -name "*.sch" -print0 | xargs -0 sed -i "s/\/home\/users\/dstanley\/EE272B\/xschem_tests/\./g"
find . -name "*.sch" -print0 | xargs -0 sed -i "s/\/home\/users\/dstanley\/EE272B\/xschem_tests/\./g"
# replace paths to my share directory with paths to ~/share
find . -name "*.sch" -print0 | xargs -0 sed -i "s/\/home\/users\/dstanley\/share/\~\/share/g"
find . -name "*.sym" -print0 | xargs -0 sed -i "s/\/home\/users\/dstanley\/share/\~\/share/g"
