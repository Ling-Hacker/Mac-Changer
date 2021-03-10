# Mac-Changer
ChangeMac

Simple Shell Script to change mac address from linux based systems
Information

Leave some frequently used mac addresses saved or enter a new mac address
Installation

    Clone this project with git clone https://github.com/AndersonRezende/changemac.git
    Open terminal and install $ sudo apt-get install macchanger
    Identifying Your Network Card running $ sudo ifconfig
    It will be something like:
    Change cardname on line 3 to your Network Card name
    (This is an optional step) Change or add frequently used Mac addresses in the changemac.sh file in the case structure
    Copy the changemac.sh file to the folder /usr/bin

Running

    Open terminal
    Run the script using the command: $ sudo changemac.sh

