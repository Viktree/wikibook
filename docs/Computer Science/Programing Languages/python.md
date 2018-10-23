# Python

## Built in tools

### Iterators

![](http://res.cloudinary.com/dyd911kmh/image/upload/f_auto,q_auto:best/v1517824971/python-iterators-tutorial_2x_z24ygb.png)

### Yeild From

One function can yield the result of another function.

```python
def search_folders(folder, text):
    # for macOS if .DS_Store error
    # glob.glob(os.path.join(folder, '*'))
    items = os.listdir(folder)

    for item in items:
        full_item = os.path.join(folder, item)
        if os.path.isdir(full_item):
            yield from search_folders(full_item, text)
        else:
            yield from search_file(full_item, text)

def search_file(filename, search_text):
    # matches = []
    with open(filename, 'r', encoding='utf-8') as fin:

        line_num = 0
        for line in fin:
            line_num += 1
            if line.lower().find(search_text) >= 0:
                m = SearchResult(line=line_num, file=filename, text=line)
                yield m
```

## Boiler Plate

### Transfer a file

```python
import requests

url = 'https://us-central1-datascience-181217.cloudfunctions.net/example'
response= requests.post(url, files={ 'file': open('drum.wav', 'rb')})

print(response.status_code)
req = response.request
print(help(req))
```
