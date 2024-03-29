#!/usr/bin/python3
"""A python module that queries the Reddit API, parses the
title of all hot articles, and prints a sorted count of
given keywords (case-insensitive, delimited by spaces.
Javascript should count as javascript, but java should not).
"""


import requests


def count_words(subreddit, word_list, hot_list=[], i=0,
                after=None, remaining_words=None):

    if remaining_words is None:
        remaining_words = word_list.copy()
    if subreddit:
        reddit_url = "https://www.reddit.com"
        hot = 'hot'
        limit = 30
        url = "{}/r/{}/.json?sort={}&limit={}&count={}&after={}".format(
                    reddit_url, subreddit, hot, limit, i,
                    after if after else '')

        headers = {
            "User-Agent": "Subreddit articles Viewer"
        }
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            data = response.json().get("data")
            item = data.get("children")
            count = len(item)
            after = data.get("after")
            hot_list.extend(list(map(lambda x: x['data']['title'], item)))
            if after:
                return count_words(subreddit, word_list, hot_list,
                                   i + count, after, remaining_words)
            else:
                filtered_hot_list = filter_titles(hot_list, remaining_words)
                return printer(filtered_hot_list, word_list, word_list)
        else:
            return


def filter_titles(hot_list, remaining_words):
    return [title for title in hot_list if any(word.lower()
            in title.lower() for word in remaining_words)]


def printer(hot_list, word_list, take, it=0, printed=[]):
    all_text = ' '.join(hot_list)
    all_words = all_text.lower().split()
    if it < len(word_list):
        word = word_list[0]
        temp = all_words.count(word)
        if temp and word not in printed:
            printed.append({word: temp})
            word_list.pop(0)
            # print("{}: {}".format(word, temp))
            return printer(hot_list, word_list, take, it + 1, printed)
        else:
            return printer(hot_list, word_list, take, it + 1, printed)
    else:
        sorted_printed = sorted(printed, key=lambda item: (
                    -list(item.values())[0], list(item.keys())[0]))
        return output(sorted_printed, take)


def output(printed, word_list, left=0):
    i = len(word_list)
    if left < i:
        word = list(printed[left].keys())[0]
        count = list(printed[left].values())[0]
        print(f"{word}: {count}")
        return output(printed, word_list, left + 1)
