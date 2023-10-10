#!/usr/bin/python3
"""A python module that query the reddit api recursively

Return:
    a list containing titles of all hot articles
    otherwise None for invalid subreddit
"""


import requests


def recurse(subreddit, hot_list=[], i=0):
    if subreddit:
        url = f"https://www.reddit.com/r/{subreddit}/hot.json"
        headers = {
            "User-Agent": "Subreddit articles Viewer"
        }
        try:
            response = requests.get(url, headers=headers)
            if response.status_code == 200:
                data = response.json()
                item = data.get("data").get("children")
                if i < len(item):
                    title = item[i].get("data").get("title")
                    if title not in hot_list:
                        hot_list.append(title)
                    return recurse(subreddit, hot_list, i + 1)
                else:
                    return hot_list
                    # print(title.get("data").get("title"))
            else:
                return None
        except Exception:
            return None
    else:
        return None
