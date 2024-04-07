#!/bin/bash

###############################################
#
# Author: Akhilesh K M
#
# Date: 07/04/2024
#
# Version: v1
#
# Lists the user who has access to the github orgenization
#
############################################################

# Github API URL
API_URL="https://api.github.com"

# Github username and personal access token
USERNAME=$username
TOKEN=$token # for security reasons export the username and token to the terminal and dynamically use it here

# user and Repository information
REPO_OWNER=$1 # here $1 represents first commandline argument
REPO_NAME=$2 # here $1 represents second commandline argument

# function to make a GET request to the GitHub API.

function github_api_get {
        local endpoint="$1"
        local url="${API_URL}/${endpoint}"

        # send a GET request  to the GitHub API with authentication
        curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# function to list  users with read access to the repository

function list_users_with_read_access {
        local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

        # Fetch the list of collaborators on the repository
        collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

        # Display the list of collaborators with read access
        if [[ -z "$collaborators" ]]; then # checking for empty
                echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
        else
                echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
                echo "$collaborators"
        fi
}

# Main script

echo "Listing users with  read access to ${REPO_OWNER}/${REPO_NAME}.."
list_users_with_read_access
