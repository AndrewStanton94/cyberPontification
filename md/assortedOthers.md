---
abstract: More of an intro
abstract-title: null
aliases:
  - null
date: 22/7/2023
date created: Monday, 2023-07-10, 01:26:35
date modified: Sunday, 2023-07-23, 20:57:21
lang: en-GB
subtitle: A couple more things I wanted to mention that didn't fit into the
tags:
  - null
title: Assorted others | Cyber Pontification
---

# assortedOthers

## Markdown

While HTML is a powerful language for creating documents, there are times when a simpler syntax is sufficient.

Markdown uses symbols to offer a subset of HTML. This has the benefits of being more concise and readable, even when the symbols haven't been converted to a display format.

Markdown covers headers, links, lists, and emphasis. People have expanded the syntax to include new features, like tables, call-outs and definition lists.

It's not a language supported by browsers, but it can be converted to HTML and an increasing number of websites use this for user provided content.

Here are a couple of sites showing the syntax:

- [markdown cheat sheet](https://www.markdown-cheatsheet.com/)
- [Basic Syntax](https://www.markdownguide.org/basic-syntax)

## RegEx

Regular Expression (RegEx) is a syntax that allows people to search for a pattern. Rather than just looking for a particular term, you can specify what characters you want and how many times they should appear.

You can use a vertical bar `|` if there are multiple choices. E.g. `cat|dog`

It's also possible to use character sets. Either predefined ones (covering letters, numbers, or spaces), or your own groups of characters. This can be paired with quantifiers.

Quantifiers can be explicit numbers, or vaguer categories. By default, regexes are greedy. They will look for the largest possible match and reduce until all segments of the regex are used.

One of the simplest regex's is `.*`. Which means any character any number of times. This is useful if you need to capture everything between other specific items.

This regex will match on an IPv6 segment `[0-9A-Fa-f]{4}`. The square brackets describe the characters you want. In this case, the ranges 0 to 9 and the letters A to F in both upper and lower cases. The 4 in the braces specify how many times you want the preceding group.

If you need to work with regexes then a site like [regex101](https://regex101.com/) is useful as it explains the regex and allows you to test it against examples. Unless you're working with one of the other languages given in the "Flavor" list, choose `ECMAScript (JavaScript)`. Screaming Frog is written in Java, so that's one exception.
