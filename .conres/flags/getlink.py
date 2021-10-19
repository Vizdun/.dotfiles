import requests
import random

page = "Sovereign-state_flags"

def formatImages(page):
    return page["title"][5:].replace(" ", "_")

def getImageUrl(page):
    return requests.get("https://commons.wikimedia.org/w/index.php?title=Special:Redirect/file/" + page + "&width=200").url

x = requests.get("https://commons.wikimedia.org/w/api.php?action=query&prop=images&titles=" + page + "&format=json&imlimit=max").json()

x = x["query"]["pages"]["2330347"]["images"]

y = list(map(formatImages, x))

import os
for i in y:
    os.system('ascii-image-converter ' + getImageUrl(i) + ' -C -H 20 -m "██" > ' + i + '.ansi')
