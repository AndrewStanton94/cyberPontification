---
abstract: More of an intro
abstract-title: null
aliases:
  - null
date: 22/7/2023
date created: Saturday, 2023-07-01, 18:29:55
date modified: Sunday, 2023-07-23, 20:56:12
lang: en-GB
subtitle: How the browser gets data
tags:
  - null
title: Protocols and data-exchange | Cyber Pontification
---

# protocolsAndData-exchange

## HTTP

When your browser asks the server for data, it's using the Hyper Text Transfer Protocol (HTTP). The client connects to the server and makes a request. The server responds.

The simplest requests would be a `HTTP verb` and a URL path, but they and their responses can also have headers and a body. This is different from the HTML elements that share these names.

### HTTP verbs

#### `get`

If you want to see an existing resource, you use `GET`. On a public webpage this should be enough. However, headers are used for authentication if you need to access private pages. It can also perform content negotiation. The client lists languages the user speaks and data-formats the computer understands, then the server can see what it can do to serve these needs.

The response from the server will also have headers. This will usually include caching information.

#### `delete`

This is used to delete the resource at this URL.

#### `put` and `post`

These commands are used to create or update a resource. There are two verbs as `put` requests shouldn't behave differently if the request is repeated (the term is idempotent). `post` allows multiple requests to be handled separately.

### HTTP response codes

This is where the dreaded 404 comes from. These codes are 3 digits, with the first representing the category.

These responses are used to know what the program should do next. Move onto the next step, or inform you of a failure.

- `1xx`: Information, this isn't used much.
- `2xx`: Success, the request worked as intended.
- `3xx`: Redirects, we know what you want but it isn't here any more. Here's where to go.
- `4xx`: Client error: you have asked for something we can't do. This might be a resource we don't have, or something you're not allowed to access.
- `5xx`: Server error. Your request is probably valid, but I'm not in a position to fulfil it.

If you encounter a new code, a site like <https://http.dog/> is a fun way of getting an idea of what it means.

## Application Programming Interface

The Application Programming Interface (API) is the way computers can communicate. It uses the HTTP verbs and response codes but the details of the API depends on the website. It will be written for the requirements of the site.

Developers will need to read the documentation and probably write their own code to handle it. Unless someone else has already written something to use that API.

## Data exchange syntaxes

Servers can respond to requests with HTML documents, CSS, JavaScript, and media files. Generated resources. APIs are likely to produce raw data for JavaScript to process and display.

### eXtensible Markup Language

The older standard for transmitting this data is the eXtensible Markup Language (XML). This looks a lot like HTML, it uses the same tag structures, but it is a different language.

XML validates the data structure and will refuse to process anything that is invalid. HTML will attempt to show you something, it may look bad, but it tries.

### JavaScript Object Notation

The more recent syntax is JavaScript Object Notation (JSON). JSON works with lists and objects. These are combined to make complex data structures.

Lists are comma-separated items wrapped in square brackets.

```json
['string', 5, false]
```

Objects are key-value pairs wrapped in braces. The key is wrapped in double-quotes and is connected to the value with a colon.

```json
{
	"breakfast": "Hideout",
	"lunch": "Andres",
	"dinner": "Brewhouse"
}
```

The advantage of this syntax is that it's easy to transmit the data as text, and it can be converted into a JavaScript data structure. It's more concise than XML so it is quicker to send.
