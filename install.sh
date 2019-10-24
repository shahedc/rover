#!/bin/bash

# Create the base folder structure
folder="${HOME}/git/github.com/aztfmod"
alias baseFolder="cd ${folder}"
mkdir -p ${folder}
baseFolder

# check the pre-requisites
./scripts/pre_requisites.sh

# Clone the rover
git clone https://github.com/aztfmod/rover.git
cd rover

alias rover=$(pwd)/rover.sh

echo ""
echo "The Azure CAF Rover has been installed sucessfully."
echo ""
echo "As a next steps you need to do:"
echo " - build the rover with the public landingzones (just type 'make')"
echo " - login to the Azure subscription 'rover login [optional_subscription_id] [optional_tenantname.onmicrosoft.com_or_tenantguid]'"
echo " - initialise the launchpad by running 'rover'"
echo " - your are now set to deploy your landingzones. Refer to the readme for more details on those steps"
echo ""


