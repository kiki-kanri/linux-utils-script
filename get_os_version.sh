export os_id=$(grep "^ID=" /etc/os-release | cut -d'=' -f2 | tr -d '"')
export os_version=$(grep "^VERSION_ID=" /etc/os-release | cut -d'=' -f2 | tr -d '"')

if [ $os_id = "centos" ]; then
	if [ $os_version != "7" ]; then
		echo "This script only work for centos7!"
		exit
	else
		export pgm="yum"
	fi
elif [ $os_id = "ubuntu" ]; then
	if [ $os_version != "20.04" ] && [ $os_version != "22.04" ]; then
		echo "This script only work for ubuntu 20.04 or 22.04!"
		exit
	else
		export pgm="apt-get"
	fi
else
	echo "This script does not support this operating system!"
	exit
fi