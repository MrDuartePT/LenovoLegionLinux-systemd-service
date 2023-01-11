# LenovoLegionLinux-systemd-service

## YOU CAN USE THIS REPO BUT I RECCOMEND THIS FORK: https://github.com/MrDuartePT/legion-fan-utils-linux

This Service can change the fan curve on the fly while chaging the Power Profile depending values set on the perfomance, balance and quiet.sh files (based on the set setmyfancurve from the LenovoLegionLinux repo: https://github.com/johnfanv2/LenovoLegionLinux/blob/main/setmyfancurve.sh)

For now after unpluging the charger you need to change the Power Profile for the service restart and use the battery fan curves

I dont have time to exausting test the fan curves i set i incorange you to changing and let me know your config.

To install this service you need to have the LenovoLegionLinux Kenel Module install, after that you can run the install.sh script (DON´T RUN WITH SUDO OU DOAS!!!)

