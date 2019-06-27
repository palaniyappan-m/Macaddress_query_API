MAC Address Lookup Via macaddress.io API
==========================================
Simple Script to query Mac address Vendor details using macaddress.io

Used Centos 7 Docker image to build this script

As per macaddress.io API, we should have API_Key with us. For testing purpose I have provided my Key in the script. You can generate your own key and place inside script for validation

With help of this script we can get Vendor details, because I have used only vendor details on it. if require we can get query MAC output in different format also like JSON,XML and CSV

Usage
-------
Arguments
----------
For executing this script, you need pass mac address as argument on any manner with delimters as “: or –“. 
macaddress-query.sh 00:50:56:82:a6:7f

Environment variables
-----------------------
Two environment variables used

•	API_KEY
o	Required. The API key from your macaddress.io account.

•	OUTPUT_TYPE
o	Optional. A supported output type from macaddress.io. Common values are 'json', 'xml', 'csv', and 'vendor'. Defaults to 'vendor'.

Docker
-------
Docker used to execute the script

Used below method to build docker

•	Place the script and Dockerfile on any of the folder as per your wish

•	Then execute below command to build the docker

                  # docker build -t macaddreslookup .
                  
•	Execute above command from same directory, or provide Full path

•	Make sure you have installed docker package on the server to execute this command

Executing Docker image
-----------------------
Use below command to exeute via docker

    # docker run macaddreslookup 00:50:56:82:a6:7f
MAC Interface Company Name : VMware, Inc

===============================================================================




