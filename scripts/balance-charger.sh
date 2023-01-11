#!/bin/bash
set -e
#export DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=/run/user/${UID}/bus}"
echo "Applying Balance Mode Fan Curve   -> ..."

hwmondir=`find /sys/module/legion_laptop/drivers/platform:legion/PNP0C09:00/hwmon -mindepth 1 -name "hwmon*"`
echo "Using hwmon directory: ${hwmondir}"

# Disable (0) or Enable (1) switching to minifancurve when everything seems very cool
echo 0 > ${hwmondir}/minifancurve

# 1. Fan: Set the fan speed (rmp) of the first fan for the first 10 points (first must be 0)
# If you want more, just continue 
echo 0    > ${hwmondir}/pwm1_auto_point1_pwm
echo 0 > ${hwmondir}/pwm1_auto_point2_pwm
echo 500 > ${hwmondir}/pwm1_auto_point3_pwm
echo 800 > ${hwmondir}/pwm1_auto_point4_pwm
echo 1000 > ${hwmondir}/pwm1_auto_point5_pwm
echo 1200 > ${hwmondir}/pwm1_auto_point6_pwm
echo 1600 > ${hwmondir}/pwm1_auto_point7_pwm
echo 2800 > ${hwmondir}/pwm1_auto_point8_pwm
echo 3500 > ${hwmondir}/pwm1_auto_point9_pwm
echo 4000 > ${hwmondir}/pwm1_auto_point10_pwm

# 2. Fan: Set the fan speed (rmp) of the second fan for the first 10 points; first must be 0)
# If you want more, just continue 
echo 0    > ${hwmondir}/pwm2_auto_point1_pwm
echo 0 > ${hwmondir}/pwm2_auto_point2_pwm
echo 0 > ${hwmondir}/pwm2_auto_point3_pwm
echo 0 > ${hwmondir}/pwm2_auto_point4_pwm
echo 800 > ${hwmondir}/pwm2_auto_point5_pwm
echo 1200 > ${hwmondir}/pwm2_auto_point6_pwm
echo 2200 > ${hwmondir}/pwm2_auto_point7_pwm
echo 2800 > ${hwmondir}/pwm2_auto_point8_pwm
echo 3500 > ${hwmondir}/pwm2_auto_point9_pwm
echo 4000 > ${hwmondir}/pwm2_auto_point10_pwm


# CPU lower temperature for each level for the first 10 points; first must be 0
echo 0  > ${hwmondir}/pwm1_auto_point1_temp_hyst
echo 40 > ${hwmondir}/pwm1_auto_point2_temp_hyst
echo 45 > ${hwmondir}/pwm1_auto_point3_temp_hyst
echo 50 > ${hwmondir}/pwm1_auto_point4_temp_hyst
echo 60 > ${hwmondir}/pwm1_auto_point5_temp_hyst
echo 65 > ${hwmondir}/pwm1_auto_point6_temp_hyst
echo 72 > ${hwmondir}/pwm1_auto_point7_temp_hyst
echo 78 > ${hwmondir}/pwm1_auto_point8_temp_hyst
echo 83 > ${hwmondir}/pwm1_auto_point9_temp_hyst
echo 88 > ${hwmondir}/pwm1_auto_point10_temp_hyst

# CPU upper temperature for each level for the first 10 points; 
echo 40 > ${hwmondir}/pwm1_auto_point1_temp
echo 45 > ${hwmondir}/pwm1_auto_point2_temp
echo 50 > ${hwmondir}/pwm1_auto_point3_temp
echo 55 > ${hwmondir}/pwm1_auto_point4_temp
echo 60 > ${hwmondir}/pwm1_auto_point5_temp
echo 65 > ${hwmondir}/pwm1_auto_point6_temp
echo 78 > ${hwmondir}/pwm1_auto_point7_temp
echo 83 > ${hwmondir}/pwm1_auto_point8_temp
echo 88 > ${hwmondir}/pwm1_auto_point9_temp
echo 127 > ${hwmondir}/pwm1_auto_point10_temp

# GPU lower temperature for each level for the first 10 points; first must be 0
echo 0  > ${hwmondir}/pwm2_auto_point1_temp_hyst
echo 30 > ${hwmondir}/pwm2_auto_point2_temp_hyst
echo 45 > ${hwmondir}/pwm2_auto_point3_temp_hyst
echo 50 > ${hwmondir}/pwm2_auto_point4_temp_hyst
echo 52 > ${hwmondir}/pwm2_auto_point5_temp_hyst
echo 53 > ${hwmondir}/pwm2_auto_point6_temp_hyst
echo 54 > ${hwmondir}/pwm2_auto_point7_temp_hyst
echo 55 > ${hwmondir}/pwm2_auto_point8_temp_hyst
echo 58 > ${hwmondir}/pwm2_auto_point9_temp_hyst
echo 60 > ${hwmondir}/pwm2_auto_point10_temp_hyst

# GPU upper temperature for each level for the first 10 points; 
echo 30 > ${hwmondir}/pwm2_auto_point1_temp
echo 45 > ${hwmondir}/pwm2_auto_point2_temp
echo 50 > ${hwmondir}/pwm2_auto_point3_temp
echo 52 > ${hwmondir}/pwm2_auto_point4_temp
echo 53 > ${hwmondir}/pwm2_auto_point5_temp
echo 54 > ${hwmondir}/pwm2_auto_point6_temp
echo 55 > ${hwmondir}/pwm2_auto_point7_temp
echo 59 > ${hwmondir}/pwm2_auto_point8_temp
echo 60 > ${hwmondir}/pwm2_auto_point9_temp
echo 127 > ${hwmondir}/pwm2_auto_point10_temp

# IC lower temperature for each level for the first 10 points; first must be 0
echo 0  > ${hwmondir}/pwm3_auto_point1_temp_hyst
echo 30 > ${hwmondir}/pwm3_auto_point2_temp_hyst
echo 40 > ${hwmondir}/pwm3_auto_point3_temp_hyst
echo 50 > ${hwmondir}/pwm3_auto_point4_temp_hyst
echo 51 > ${hwmondir}/pwm3_auto_point5_temp_hyst
echo 53 > ${hwmondir}/pwm3_auto_point6_temp_hyst
echo 55 > ${hwmondir}/pwm3_auto_point7_temp_hyst
echo 57 > ${hwmondir}/pwm3_auto_point8_temp_hyst
echo 59 > ${hwmondir}/pwm3_auto_point9_temp_hyst
echo 60 > ${hwmondir}/pwm3_auto_point10_temp_hyst

# IC upper temperature for each level for the first 6 points; 
echo 30  > ${hwmondir}/pwm3_auto_point1_temp
echo 40 > ${hwmondir}/pwm3_auto_point2_temp
echo 50 > ${hwmondir}/pwm3_auto_point3_temp
echo 51 > ${hwmondir}/pwm3_auto_point4_temp
echo 53 > ${hwmondir}/pwm3_auto_point5_temp
echo 55 > ${hwmondir}/pwm3_auto_point6_temp
echo 57 > ${hwmondir}/pwm3_auto_point7_temp
echo 59 > ${hwmondir}/pwm3_auto_point8_temp
echo 60 > ${hwmondir}/pwm3_auto_point9_temp
echo 127 > ${hwmondir}/pwm3_auto_point10_temp

# Acceleration time (larger = slower acceleartion) for each level for the first 6 points; 
echo 5 > ${hwmondir}/pwm1_auto_point1_accel
echo 5 > ${hwmondir}/pwm1_auto_point2_accel
echo 5 > ${hwmondir}/pwm1_auto_point3_accel
echo 5 > ${hwmondir}/pwm1_auto_point4_accel
echo 5 > ${hwmondir}/pwm1_auto_point5_accel
echo 4 > ${hwmondir}/pwm1_auto_point6_accel
echo 4 > ${hwmondir}/pwm1_auto_point7_accel
echo 3 > ${hwmondir}/pwm1_auto_point8_accel
echo 3 > ${hwmondir}/pwm1_auto_point9_accel
echo 3 > ${hwmondir}/pwm1_auto_point10_accel

# Decleration time (larger = slower acceleartion) for each level for the first 6 points; 
echo 4 > ${hwmondir}/pwm1_auto_point1_decel
echo 4 > ${hwmondir}/pwm1_auto_point2_decel
echo 4 > ${hwmondir}/pwm1_auto_point3_decel
echo 4 > ${hwmondir}/pwm1_auto_point4_decel
echo 4 > ${hwmondir}/pwm1_auto_point5_decel
echo 4 > ${hwmondir}/pwm1_auto_point6_decel
echo 3 > ${hwmondir}/pwm1_auto_point7_decel
echo 3 > ${hwmondir}/pwm1_auto_point8_decel
echo 2 > ${hwmondir}/pwm1_auto_point9_decel
echo 1 > ${hwmondir}/pwm1_auto_point10_decel

echo "Fan Curve Applyied"
