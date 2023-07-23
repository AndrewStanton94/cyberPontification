---
abstract: More of an intro
abstract-title: null
aliases:
  - null
date: 22/7/2023
date created: Saturday, 2023-07-01, 18:33:02
date modified: Sunday, 2023-07-23, 20:46:01
lang: en-GB
subtitle: Where the browser gets something to show you
tags:
  - null
title: Infrastructure | Cyber Pontification
---

# infrastructure

With what we've covered so far, you've got web pages that look good and can respond to external data, enhanced by external services. But how do we share this with the world and write our own APIs?

## Server languages

If you're creating your own API, you will probably need to code something. While any established programming language is likely to have code that allows it to respond to network requests, these are some common and rising languages:

Java

: A language that is well established in enterprise. Java programs are compiled (pre-built) so they are in theory faster than interpreted languages (code processed as needed).

PHP

: A widely supported and widely used language. It was designed for the web. It's the language that Drupal and WordPress are written in. There's a low barrier to entry meaning a lot of code has been written in PHP, some of it isn't so good, which can fuel disparagement from fans of other languages.

Python

: A general purpose language that's used in a lot of fields, which includes the web.

Node.js

: This is JavaScript, the front-end language, running on the server. An advantage is not needing to learn another language to handle the backend, in addition to the front-end.

Go and Rust

: These are newer languages. They are compiled like Java.

## Hosting

This is where your code will run. There are options that can cheaply serve personal blogs, through to the kit that keeps massive commercial sites going.

### CMS focused

If you have a particular CMS in mind, there's likely to be hosting options tailored to it. This can get you up and running quickly, but it may be more locked down than other options. You may have less control, with the company managing low-level tasks for you.

### Basic hosting

If you have a static site, one that only uses HTML, CSS and JavaScript, then basic hosting is fine. It will give you space to upload files and your code will share a server with other people. This keeps the costs low, but it's not designed for large amounts of traffic. If others on the server have a lot of traffic, then your site's performance may deteriorate. If you're the popular one, the company is likely to get you to move to something more powerful (and pricey).

This hosting might also be able to run PHP as this is a widely used web language. Other languages may be supported but these might be more fiddly to set up.

### Virtual Private Server

If this isn't enough, you need a Virtual Private Server (VPS). This removes the limitations of basic hosting as you have full access to a computer in the cloud. Allowing you to set up all the software you require.

### Enterprise solutions

While individuals should be satisfied with a VPS, organisations are likely to be more demanding.

Requiring a cluster of compute nodes to provide resilience and failover. In addition to networking equipment, separate databases and file storage. There are a lot of options. See this [Amazon Web Services (AWS) product page](https://aws.amazon.com/products) for an example.

## Content Delivery Networks and Caching

Content Delivery Networks (CDNs) are global networks of servers. They serve your content. By using a CDN, your content should be closer to your users. Which speeds up response times and makes users less likely to give up on your page and bounce (leave without interacting with the site).

Caching is the strategy of saving a copy of the requested resource. This can happen at multiple stages between the server and your device. This is great for performance, but it can be an issue if an older version has been saved.

## IP addresses

Internet Protocol (IP) addresses are how computers identify the machine they want to reach. There is a widely used version which is running out of addresses, and there's a newer format that isn't as widely supported.

### Version 4 IPv4

(`ww.xx.yy.zz`)

This is the widely used version. There's over 4 billion $(10^9)$ addresses. However, there are private ranges for use within home or organisation networks. This means there are less public IP addresses to use on the internet. Network equipment is able to take internet traffic and route it to the right device on your private network.

IPv4 addresses are made from 4 groups of digits 0 to 255 separated by full stops. The number 255 is significant as it's the largest number that can be represented by 2 hexadecimal digits $16^2$.

### Version 6 IPv6

(`ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz`)

There's a lot more IPv6 addresses. $10^{28}$ of them. They are made from 8 groups of 4 hexadecimal digits (which covers 0 to 65,365). These groups are separated by colons. Segments may be omitted if they are all 0.

Hexadecimal is used because it represents 16 values in one character (using 0-9 and then A-F). This is the equivalent of 4 binary digits, which the computer uses. Hexadecimal is easier for humans to work with than binary, and it's easier for the computer to convert hexadecimal back to binary than decimal to binary.

## Web Addresses (URLs)

Uniform Resource Locators (URLs) are how we identify a piece of content online. These are the components:

`scheme:[//[user[:password]@]domain[:port]][/path][?query][#fragment]`

### Protocol

The language that is used to communicate with the server. While there are many protocols, we mostly use HTTP and HTTPS. This is at the start of the URL and is followed by `://`

HTTPS is the secure version of HTTP, this just means the traffic between your computer and the server is encrypted. So anyone that monitors network traffic can see you've connected to a domain, but they can't see what you're doing there.

### Domain

This is the identifier of the system you're connecting to. It's the chunks of text separated by a full stop. They form a hierarchy from right to left.

The first segment or two is the Top Level Domain. This gives a hint about the sort of website it is. `com` for commercial sites, and Geographic TLDs (gTLDs) identify the country of the website. New TLDs have been released in recent years which can convey more information about the website.

Different TLDs are managed by different organisations and they have varying eligibility criteria. The domains are brought through Domain Name Registrars for a time period of one or more years.

Once you have a domain, you can use DNS to point to where the site is hosted using its IP address.

You can also create subdomains to point to additional services.

### Path

This is a representation of where the page is on the server, with the different levels separated by slashes. These levels can be an actual file system on the server, or a way of building up a request for an API (a website can be a mix of both). This works well when there is a clear hierarchy to the request. On a blog, `/posts` could list all the articles. `/posts/5` will fetch the fifth post, and `/posts/5/likes` could show all the users who like this post.

When serving files, a path should end with either a slash or a file with an extension. The slash means it is asking for the directory (folder), this can either return a list of all the files in that directory or look for an index file. This is just the default file to serve. This nuance isn't apparent to the user as the browser will append a slash if required.

### Query string

The other way of providing information is through a query string. This part of the URL starts with a question mark `?`. They are key-value pairs, with the key and value joined by an equals sign ` =`. An ampersand `&` is used between these pairs.

This data can be used by the server or by the client. The server can perform additional processing before sending out data, and Google Analytics looks for particular attributes when it runs on the client.

### Fragment

The fragment starts with a hash `#` and it is used to jump to a section of the page. It looks for an element with an ID that matches the fragment text.

### Other bits

I'm also mentioning these for thoroughness but they're less likely to be used on public sites:

#### Ports

After the domain, you may see a colon and then a number. This is the port. These are not normally included as protocols have default ports.

- HTTP on port 80
- HTTPS on port 443

The port acts as a door. Only one service can use a port at a time, so using another port allows a domain to offer multiple services. This could be useful during development but offering more from a single server increases the impact if the server goes down.

People may also move services to other ports to make them more difficult to find: security through obscurity. This has the twin drawbacks of making it more difficult for users to access, while not offering much protection.

#### User credentials

It is possible to provide credentials to log into some sites. This is done by putting a username (optionally with a password, separated by a colon) before the domain. Using an at `@` sign to link the credentials to the domain.

I haven't used this, and sending a password in this way may expose it to other people.

## DNS

Domain Name Service: The phone book of the internet. It translates domain names that are easy for people to understand into the IP addresses that computers use.

These are a few types of DNS records:

`A`

: Maps a domain name to an IPv4 address

`AA`

: Maps a domain name to an IPv6 address

`CNAME` (Canonical name)

: Used to make one domain an alias for another

`MX`

: Used to identify an email server.

`TXT`

: A way of adding notes to DNS. This is used for security features. Adding a code to prove to other service providers that you own that domain. It also provides additional information to help secure email.
