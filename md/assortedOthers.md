---
aliases:
  - null
date created: Monday, 2023-07-10, 01:26:35
date modified: Wednesday, 2023-07-26, 02:44:13
lang: en-GB
subtitle: A couple more things I wanted to mention
tags:
  - null
title: Assorted others | Cyber Pontification
---


## Markdown

While HTML is a powerful language for creating documents, there are times when a simpler syntax is sufficient.

Markdown uses symbols to offer a subset of HTML. This has the benefits of being more concise and readable, even when the symbols haven't been converted to a display format.

Markdown covers headers, links, lists, and emphasis. People have expanded the syntax to include new features, like tables, call-outs and definition lists.

It's not a language supported by browsers, but it can be converted to HTML and an increasing number of websites use this for user provided content.

Here are a couple of sites showing the syntax:

- [markdown cheat sheet](https://www.markdown-cheatsheet.com/)
- [Basic Syntax](https://www.markdownguide.org/basic-syntax)

## RegEx

Regular Expression (RegEx) is a syntax that allows people to search for a pattern. Rather than looking for a particular term, you can specify what characters you want and how many times they should appear. Describing the shape the data should have.

The simplest search would be a series of letters, numbers, and spaces. These characters don't have any special meaning, so they would work like a basic search. Just be aware that it is case-sensitive by default. So `result` is not the same as `RESULT`.

### Multiple choices?

If you're looking for multiple things, you can tell the regex to look for `this` or `that`. Just use a vertical bar `|` to connect the choices. E.g. `cat|dog`. This works well by itself if there are a finite number of options.

### Where are you looking?

By default, the regex will take the text you give it and look everywhere for the pattern. This is a sensible default, but you might want to narrow it down. You can refer to the start or end of the input.

Use the caret (`^`) for the start and (`$`) for the end. Taking the URL structure from [Infrastructure](/infrastructure.html). We can look for secure URLs by checking the protocol with `^https` and look for PDFs with `pdf$`. However, that won't include URLs with a query string.

### Choosing characters

If you want to capture any character, you can use a full stop `.`. This will match a single instance of any character.

#### Make your own group

You can specify particular characters by listing them inside square brackets. This will cover all the vowels: `[aeiou]`.

You can include any character. Just don't put a caret (`^`) as the first character, as this changes the group to mean anything except these characters. `[^aeiou]` matches anything but vowels.

You can also use ranges. So you can get all letters with `[A-Za-z]`. This works as computers represent all characters with numbers, so groups like letters and numbers are stored sequentially. While you could look for less intuitive sequences to use as a range, it wouldn't be recommended.

#### Premade groups

These are some shorter representations of common groups so they don't need to be redefined each time. Like the caret, you can get the opposite group. Use the capital version of these letters.

Digits `\d`

: This covers the numbers [0-9]

Spaces `\s`

: Representing spaces, tabs and new lines.

Words `\w`

: A bit misleading, these covers letters, numbers, and underscores. Not just letters.

### How many?

The previous section shows you how to refer to particular characters, but it only looks for a single instance. How do we get more?

Quantifiers can be explicit numbers, or vaguer categories. By default, regexes are greedy. They will look for the largest possible match and reduce until all segments of the regex are used.

There are a few characters that capture some rough quantities.

Asterisk `*`

: This covers zero or more options. So any number of matches.

Plus `+`

: This matches one or more occurrences. The thing I'm looking for must exist.

Question mark `?`

: This represents zero or one matches. This item is optional.

If you want more precise quantities, you can use curly brackets. A single value can be given `{5}`, or it can take a minimum and a maximum `{4,6}`.

### Capture groups

Sometimes you just use a regex to find a match. Other times, you need to do something with parts of the match. Wrap the parts of interest in brackets `()` and then you can reference them in a substitution using a dollar and the ordinal number of the capture group. E.g. `$2` for the second group.

### Examples

One of the simplest regex's is `.*`. Which means any character any number of times. This is useful if you need to capture everything between other specific items.

This regex will match on an IPv6 segment `[0-9A-Fa-f]{4}`. The square brackets describe the characters you want. In this case, the ranges 0 to 9 and the letters A to F in both upper and lower cases. The 4 in the braces specify how many times you want the preceding group.

If you need to work with regexes then a site like [regex101](https://regex101.com/) is useful as it explains the regex and allows you to test it against examples. Unless you're working with one of the other languages given in the "Flavor" list, choose `ECMAScript (JavaScript)`. Screaming Frog is written in Java, so that's one exception.
