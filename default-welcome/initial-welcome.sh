#!/bin/zsh
# Uncomment this for verbose debug
#set -x 

##########
# This is an example script designed to show some of the features of Baseline.
# Written by: Trevor Sysock of Second Son Consulting
# @BigMacAdmin on Github and Slack
#############
# Functions #
#############

# Verify we are running as root
if [[ $(id -u) -ne 0 ]]; then
  echo "ERROR: This script must be run as root **EXITING**"
  exit 1
fi

#############
# Variables #
#############

# Company name or abbreviation used for naming the computer
companyName="Monge IT Consulting"

# Path to SwiftDialog
dialogPath='/usr/local/bin/dialog'

# Path to Baseline Scripts directory
# BaselineScripts="/usr/local/Baseline/Scripts"

# Setup your welcome experience
welcomeTitle="Let's setup your Mac!"
welcomeBody="Hi there, lets get your computer setup.\n\n If you run into any issues call (224) 280-0926 x502 "

######################
# Script Starts Here #
######################

# Call the dialog command and put the results in a variable, so we can check against them afterwards
departmentSelection=$("$dialogPath" \
--title "$welcomeTitle" \
--message "$welcomeBody" \
--ontop \
--blurscreen \
--position top \
