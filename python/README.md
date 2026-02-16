Acrostic Puzzle Generator API
============

Acrostic Puzzle Generator creates puzzles where the first letters of answer words spell out a hidden keyword.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Acrostic Puzzle Generator API](https://apiverve.com/marketplace/acrostic?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-acrosticpuzzlegenerator
```

Using `pip3`:

```bash
pip3 install apiverve-acrosticpuzzlegenerator
```

---

## Configuration

Before using the acrostic API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient

# Initialize the client with your APIVerve API key
api = AcrosticAPIClient("[YOUR_API_KEY]")

query = {
    "word": "HAPPY",
    "theme": "random"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Acrostic Puzzle Generator API documentation is found here: [https://docs.apiverve.com/ref/acrostic](https://docs.apiverve.com/ref/acrostic?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient

# Initialize the client with your APIVerve API key
api = AcrosticAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "word": "HAPPY",
    "theme": "random"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "keyword": "HAPPY",
    "theme": "positive",
    "lines": [
      {
        "position": 1,
        "letter": "H",
        "answer": "HAPPY",
        "letterCount": 5,
        "clue": "1. Favored by hap, luck, or fortune; lucky; fortunate; successful; prosperous; s..."
      },
      {
        "position": 2,
        "letter": "A",
        "answer": "AMAZING",
        "letterCount": 7,
        "clue": "Causing amazement; very wonderful; as, amazing grace. -- A*maz\"ing*ly, adv."
      },
      {
        "position": 3,
        "letter": "P",
        "answer": "PEACEFUL",
        "letterCount": 8,
        "clue": "1. Possessing or enjoying peace; not disturbed by war, tumult, agitation, anxiet..."
      },
      {
        "position": 4,
        "letter": "P",
        "answer": "PEACEFUL",
        "letterCount": 8,
        "clue": "1. Possessing or enjoying peace; not disturbed by war, tumult, agitation, anxiet..."
      },
      {
        "position": 5,
        "letter": "Y",
        "answer": "YOUTHFUL",
        "letterCount": 8,
        "clue": "1. Not yet mature or aged; young. \"Two youthful knights.\" Dryden.  Also used fig..."
      }
    ],
    "lineCount": 5,
    "html": "<html><head><title>Acrostic Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 700px; margin: 0 auto;}h1 {text-align: center; color: #FF5722;}.intro {text-align: center; color: #666; margin-bottom: 30px;}.puzzle {margin: 20px 0;}.line {display: flex; align-items: center; margin: 10px 0; padding: 10px; background: #f5f5f5; border-radius: 5px;}.number {width: 30px; font-weight: bold; color: #FF5722;}.first-letter {width: 40px; height: 40px; background: #FF5722; color: white; display: flex; align-items: center; justify-content: center; font-size: 24px; font-weight: bold; border-radius: 5px; margin-right: 10px;}.blanks {display: flex; gap: 3px; margin-right: 15px;}.blank {width: 25px; height: 30px; border-bottom: 2px solid #333;}.clue {flex: 1; font-size: 14px; color: #666; font-style: italic;}.keyword {text-align: center; margin-top: 30px; padding: 20px; background: #FFF3E0; border-radius: 10px;}.keyword-letters {display: flex; justify-content: center; gap: 10px;}.keyword-letter {width: 40px; height: 40px; background: #FF5722; color: white; display: flex; align-items: center; justify-content: center; font-size: 24px; font-weight: bold; border-radius: 5px;}</style></head><body><h1>Acrostic Puzzle</h1><div class='intro'>Solve the clues. The first letters spell a word!</div><div class='puzzle'><div class='line'><span class='number'>1.</span><span class='first-letter'>H</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Favored by hap, luck, or fortune; lucky; fortunate; successful; prosperous; s...</span></div><div class='line'><span class='number'>2.</span><span class='first-letter'>A</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>Causing amazement; very wonderful; as, amazing grace. -- A*maz'ing*ly, adv.</span></div><div class='line'><span class='number'>3.</span><span class='first-letter'>P</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Possessing or enjoying peace; not disturbed by war, tumult, agitation, anxiet...</span></div><div class='line'><span class='number'>4.</span><span class='first-letter'>P</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Possessing or enjoying peace; not disturbed by war, tumult, agitation, anxiet...</span></div><div class='line'><span class='number'>5.</span><span class='first-letter'>Y</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Not yet mature or aged; young. 'Two youthful knights.' Dryden.  Also used fig...</span></div></div><div class='keyword'><p>Hidden word:</p><div class='keyword-letters'><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div></div></div></body></html>"
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `AcrosticAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient, AcrosticAPIClientError

api = AcrosticAPIClient("[YOUR_API_KEY]")

query = {
    "word": "HAPPY",
    "theme": "random"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except AcrosticAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient, AcrosticAPIClientError

api = AcrosticAPIClient("[YOUR_API_KEY]")

query = {
    "word": "HAPPY",
    "theme": "random"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except AcrosticAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient, AcrosticAPIClientError

query = {
    "word": "HAPPY",
    "theme": "random"
}

# Using context manager ensures proper cleanup
with AcrosticAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except AcrosticAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient

# Enable debug mode
api = AcrosticAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "word": "HAPPY",
    "theme": "random"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_acrosticpuzzlegenerator.apiClient import AcrosticAPIClient

api = AcrosticAPIClient("[YOUR_API_KEY]")

query = {
    "word": "HAPPY",
    "theme": "random"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
