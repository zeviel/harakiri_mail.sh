#!/bin/bash

api="https://harakirimail.com/api/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0"

function get_inbox() {
	# 1 - inbox_name: (string): <inbox_name>
	curl --request GET \
		--url "$api/inbox/$1" \
		--user-agent "$user_agent"
}
