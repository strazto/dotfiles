HOME_IP=2001:8003:3489:4600:f4c6:c2b2:48c3:a4c5
LAN_IP=192.168.0.234
HOME_DOMAIN=mstrasiotto.hopto.org

alias shpc='ssh mstr3336@hpc.sydney.edu.au'

function homosh {
	 mosh -p 60005 matty@${HOME_DOMAIN}

}

function lomosh {
	 mosh -p 60005 matty@${LAN_IP}
}
