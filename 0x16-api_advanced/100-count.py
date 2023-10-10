#!/usr/bin/python3
"""A python module that queries the Reddit API, parses the
title of all hot articles, and prints a sorted count of
given keywords (case-insensitive, delimited by spaces.
Javascript should count as javascript, but java should not).
"""


import requests


def count_words(subreddit, word_list, hot_list=[], num=0, it=0):
    if subreddit:
        url = f"https://www.reddit.com/r/{subreddit}/hot.json"
        headers = {
            "User-Agent": "Subreddit Articles Viewer"
        }
        try:
            response = requests.get(url, headers=headers)
            if response.status_code == 200:
                data = response.json()
                item = data.get("data").get("children")
                if num < len(item):
                    title = item[num].get("data").get("title")
                    if title not in hot_list:
                        hot_list.append(title.lower())
                    return count_words(subreddit, word_list,
                                       hot_list, num + 1, it)
                else:
                    all_text = ' '.join(hot_list)
                    all_words = all_text.split()
                    if it < len(word_list):
                        new = sorted(word_list)
                        word = new[it]
                        count = all_words.count(word)
                        if count:
                            print("{}: {}".format(word, count))
                            return count_words(subreddit, word_list,
                                               hot_list, num, it + 1)
                        else:
                            return count_words(subreddit, word_list,
                                               hot_list, num, it + 1)
                    else:
                        exit(1)
            else:
                print(None)
        except Exception:
            pass
