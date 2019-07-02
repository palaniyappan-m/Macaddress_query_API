#!/bin/bash
##############################################################################
# macaddress-query-api.sh
#
# Perform an API call against madaddress.io's MAC address API service.
# 
# Parameters:
#   $1 - MAC address on which to perform a lookup
#
# Environment variables:
#   API_KEY     - The macaddress.io API key to be used to perform API calls.
#   OUTPUT_TYPE - The format in which to request data from the API. Defaults
#                 to 'vendor'.
#       
##############################################################################


# Values taken from https://macaddress.io/api/documentation/making-requests.
# If the API changes, so too may some of the below values.

# macaddress.io requires a valid API key to use their services.
# Use the value of the API_KEY environment variable or define it here.
API_KEY='at_99XZ2QoAcM33R83CYh3DiSj5S0GVT'

# An OUTPUT_TYPE variable is optional as per  macaddress.io API documentation.
# Valid types are 'json', 'xml', 'csv', 'vendor'. As we are queriying for Vendor
# So option type set as vendor
OUTPUT_TYPE=${OUTPUT_TYPE:-vendor}

# Input of MAC might with delimter ':' or '-" So converting it into standard format.
MAC_ADDR=${1//[-:]/}
if [ ${#MAC_ADDR} -lt 12 ]
then
    echo " Mac address should be 6 octet with : or -"
else
# Getting URL as a specific value
API_URL="https://api.macaddress.io/v1?&output=${OUTPUT_TYPE}&search=${MAC_ADDR}"

# Make the API call.
Vendor=`curl -sS -H "X-Authentication-Token:${API_KEY}" ${API_URL}`
 if [ -z "$Vendor" ]
 then
    echo "Please enter correct MAC address"
 else
    echo "MAC Interface Company Name : $Vendor"
 fi
fi

