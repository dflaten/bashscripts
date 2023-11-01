#!/bin/bash

# Constants
export IAM_ROLE = "TestRole"

# Variables, these are changed depending on arguments passed into script
export SERIES_STATUS = "DISABLED"
export ACTION = "disable"
export AWS_ACCOUNT = "1234567890"
export REGION = "us-west-2"

# Parse Arguments
while [[ $# -gt 0]]; do
    key="$1"

    case $key in
        -a |--action)
            case $2 in
                "enable")
                    export SERIES_STATUS="ENABLED"
                    export Action="enable"
                    ;;
                "disable")
                    export SERIES_STATUS="DISABLED"
                    export Action="enable"
                    ;;
                *)
                   echo "Invalid status for parameter $key, use -h for help"
                   exit 1
                esac
                shift 2
                ;;
        -r|--region)
            case $2 in
                "us-west-2")
                    export REGION = "us-west-2"
                    export AWS_ACCOUNT = "1234567890"
                    ;;
                "us-east-1")
                    export REGION = "us-east-1"
                    export AWS_ACCOUNT = "2334452344"
                *)
                   echo "Invalid status for parameter $key, use -h for help"
                   exit 1
                esac
                shift 2
                ;;
        -h|--help)
            echo -e "\nThe commandLineBash.sh script supports the following"\
                    "-t-a <action> | -- action <action> \n"\
                    "\tThe action to preform upon the target.\n"
            shift
            exit 0
            ;;
        *)
            echo "Uknown arg $key, use -h for help"
            exit 1
            ;;
esac
done

#Here is where you start your script using the variables that were defined
#above. 
#
case $ACTION in
  "enable" | "disable")
      #commands here....
      ;;
esac
