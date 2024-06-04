import requests
import feedparser # atom parser

url = 'https://rss.arxiv.org/atom/math-ph'
data = requests.get(url)

xml_file = data.content

file = feedparser.parse(xml_file)

#print(file.entries)

for link_file in file.entries:
    print('>>', link_file.title)
    print('   ', link_file.author,' : ', link_file.link)
    print(' ')
