# Acrostic Puzzle Generator API - PHP Package

Acrostic Puzzle Generator creates puzzles where the first letters of answer words spell out a hidden keyword.

## Installation

Install via Composer:

```bash
composer require apiverve/acrostic
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Acrostic\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'word' => 'HAPPY',
    'theme' => 'random',
    'image' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Acrostic\Client;
use APIVerve\Acrostic\Exceptions\APIException;
use APIVerve\Acrostic\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'HAPPY', 'theme' => 'random', 'image' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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
    "html": "<html><head><title>Acrostic Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px; max-width: 700px; margin: 0 auto;}h1 {text-align: center; color: #FF5722;}.intro {text-align: center; color: #666; margin-bottom: 30px;}.puzzle {margin: 20px 0;}.line {display: flex; align-items: center; margin: 10px 0; padding: 10px; background: #f5f5f5; border-radius: 5px;}.number {width: 30px; font-weight: bold; color: #FF5722;}.first-letter {width: 40px; height: 40px; background: #FF5722; color: white; display: flex; align-items: center; justify-content: center; font-size: 24px; font-weight: bold; border-radius: 5px; margin-right: 10px;}.blanks {display: flex; gap: 3px; margin-right: 15px;}.blank {width: 25px; height: 30px; border-bottom: 2px solid #333;}.clue {flex: 1; font-size: 14px; color: #666; font-style: italic;}.keyword {text-align: center; margin-top: 30px; padding: 20px; background: #FFF3E0; border-radius: 10px;}.keyword-letters {display: flex; justify-content: center; gap: 10px;}.keyword-letter {width: 40px; height: 40px; background: #FF5722; color: white; display: flex; align-items: center; justify-content: center; font-size: 24px; font-weight: bold; border-radius: 5px;}</style></head><body><h1>Acrostic Puzzle</h1><div class='intro'>Solve the clues. The first letters spell a word!</div><div class='puzzle'><div class='line'><span class='number'>1.</span><span class='first-letter'>H</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Favored by hap, luck, or fortune; lucky; fortunate; successful; prosperous; s...</span></div><div class='line'><span class='number'>2.</span><span class='first-letter'>A</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>Causing amazement; very wonderful; as, amazing grace. -- A*maz'ing*ly, adv.</span></div><div class='line'><span class='number'>3.</span><span class='first-letter'>P</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Possessing or enjoying peace; not disturbed by war, tumult, agitation, anxiet...</span></div><div class='line'><span class='number'>4.</span><span class='first-letter'>P</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Possessing or enjoying peace; not disturbed by war, tumult, agitation, anxiet...</span></div><div class='line'><span class='number'>5.</span><span class='first-letter'>Y</span><span class='blanks'><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span><span class='blank'></span></span><span class='clue'>1. Not yet mature or aged; young. 'Two youthful knights.' Dryden.  Also used fig...</span></div></div><div class='keyword'><p>Hidden word:</p><div class='keyword-letters'><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div><div class='keyword-letter'>?</div></div></div></body></html>",
    "image": {
      "imageName": "8b67d4ec-c262-4f7b-9cf1-b8c2766e8c54_acrostic.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/acrostic/8b67d4ec-c262-4f7b-9cf1-b8c2766e8c54_acrostic.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766009969&Signature=IBbnpk61J5uW7bsfoqRwceF7weeBO%2Bq63BKH7LZpXLhZJk1vYISzRXy%2BPeZnH0t4h%2FvK%2BIJCv84THbV5ym9KkdLUXJK3wYkh8XoyZz%2FyFsBNJ6YCtFLkb0F3AULXyOGEcJ3F3mz4f2oS9P6Wtx4bX8NKVs3B316pY0aJzKo%2Fm5Lnv81i9y%2BRA7EMc9f7M8N9Nin08T%2F4K3W3LxO%2FJUcwocs7UTAORbhCSTqbSn2eIhJLKAN%2B4gSvDghzigwHT9THBVAD1VHgmkfxPNKMqFcarnah7Lfh78RcZM5Zfubl50YgBLVwwwQ%2Bp0Sxbjgeb0osdEkHwAfXbKP2bmA9%2B3TrLA%3D%3D",
      "expires": 1766009969599
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/acrostic?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/acrostic?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/acrostic?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
