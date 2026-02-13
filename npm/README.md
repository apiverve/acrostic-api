# Acrostic Puzzle Generator API

Acrostic Puzzle Generator creates puzzles where the first letters of answer words spell out a hidden keyword.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/acrostic.svg)](https://www.npmjs.com/package/@apiverve/acrostic)

This is a Javascript Wrapper for the [Acrostic Puzzle Generator API](https://apiverve.com/marketplace/acrostic?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/acrostic
```

Using yarn:
```shell
yarn add @apiverve/acrostic
```

---

## Configuration

Before using the Acrostic Puzzle Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Acrostic Puzzle Generator API documentation is found here: [https://docs.apiverve.com/ref/acrostic](https://docs.apiverve.com/ref/acrostic?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const acrosticAPI = require('@apiverve/acrostic');
const api = new acrosticAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  word: "HAPPY",
  theme: "random"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  word: "HAPPY",
  theme: "random"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  word: "HAPPY",
  theme: "random"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
