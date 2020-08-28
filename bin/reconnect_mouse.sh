#!/usr/bin/expect -f
set MOUSE_MAC "28:18:78:61:E0:7A"

set prompt "#"
#set address [lindex $argv 0]
set address $MOUSE_MAC

set delim "\n===============\r\n"

proc repair {address} {
  set prompt "#"
  set delim "\n===============\r\n"

  send "remove $address\r"
  sleep 1
  expect -re $prompt

  sleep 1
  expect "Controller"
  send_user "${delim}Device Removed\n"

  send "pair $address\r"
  sleep 2

  send_user "${delim}Should be paired now.\n"

  sleep 1
  expect -re $prompt
  send "connect $address\r"

  expect -re $prompt
}

proc abort {} {
  send "quit\r"
  expect eof

  exit
}

spawn sudo bluetoothctl
expect -re $prompt

set idx 0
set timeout 3

send "scan on\r"

send "connect $address\r"

expect {
  -re "Failed" {send_user "Not connected\n"}
  -re "successful" {
    send_user "Already connected, exiting\n"
    abort
  }
  timeout {
    send "connect $address\r"

    incr idx
    if {$idx <= 3} {exp_continue}
  }
}

repair $address

abort
