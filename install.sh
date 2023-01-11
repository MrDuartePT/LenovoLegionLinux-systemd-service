#!/bin/zsh

USER=$(whoami)

mkdir .config/lenovo-fan-control

sed -i "s/user_name/$USER/g" "lenovo-fancurve.service"

cp *.sh .config/lenovo-fan-control

if ! type "$foobar_doas" > /dev/null; then
  Sudo=doas
else 
  Sudo=sudo
fi

$Sudo cp *.service /etc/systemd/system
$Sudo cp *.path /etc/systemd/system
$Sudo systemctl daemon-reload
$Sudo systemctl enable --now lenovo-fancurve.service lenovo-fancurve-restart.path lenovo-fancurve-restart.service

#repair install script after install
sed -i "s/$USER/user_name/g" "lenovo-fancurve.service"