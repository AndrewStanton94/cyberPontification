---
aliases:
  - null
date created: Saturday, 2023-07-01, 18:29:15
date modified: Tuesday, 2023-07-25, 02:12:28
lang: en-GB
subtitle: Adding external features to the site
tags:
  - null
title: Adding stuff to the website | Cyber Pontification
---


Having read the [[front-endLanguages]] section, you have an understanding of the HTML we write and the styling and interactivity added by our agency.

Now, I'm going to mention a couple of ways we add additional functionality and information. Plus a way to manage the risk this introduces.

## New functionality: GTM and third-party code

There are businesses that offer services to enhance websites with additional functionality. Like chatbots, displaying data from other sites and user analytics. While these can be very helpful for both visitors and site editors, it can be difficult for non-technical people to set these new tools up. Or pricey to get an agency to integrate them.

### Google Tag Manager

Once set up, Google Tag Manager (GTM) allows you to define chunks of code and inject them conditionally into your website. You can give it a block of HTML which may include CSS and JavaScript. These are attached to triggers that will cause the code to run.

The easiest trigger is to run on every page load. If you need more selectiveness, you can specify the page URLs. This can be an exact match for a particular page, or partial matches to cover a group of pages. Useful for grabbing a section of the website.

Clicks are another useful trigger, and it is possible to chain tags together so that chunks of code will be run consecutively. See [Trigger types](https://support.google.com/tagmanager/topic/7679108) for a breakdown of the triggers available.

### Google Analytics

GTM is an established way of loading Google Analytics (GA). GA has its own tag type so you don't have to use the Custom HTML tag described above.

After it has been added to the site, GA can observe site visitors behaviour. Recording the URL they entered the site from (which can include campaign information in a UTM code), and their journey through subsequent pages.

Additional GTM tags can be created to monitor other events on the page.

Change warning: The current version of Google Analytics (Universal Analytics) is shutting down for most people in July 2023. Paid customers of the current system have another year with it. The newest version is GA4. It has been released, but most people are still missing features.

### Other analytics services

#### Clarity

There are other analytics tools like MS Clarity, which does screen recordings. This is useful for observing how an individual interacts with the site.

It also generates click heatmaps and scroll-depth maps. The click maps provide an aggregated view of where people have clicked on the page, this highlights what site users are most interested in. It is also useful to identify if people are clicking in places without buttons. If people click rapidly in an area, this is known as rage clicking.

Scroll depth shows an average of how far down a page people scroll.

#### VWO

VWO is used to do A/B tests. This is where a piece of the page is swapped out for an alternative version. These versions are served to different users and the conversions (desired user actions) are tracked to see which version is the most effective.

### The performance cost

While the additional features can enhance the user experience and analytics can inform business strategy, this requires the client to download more data. Fetching and processing additional code takes longer, which can deteriorate the user experience. Downloading more data could cost people if their internet usage is capped.

## Support for sharing: Open Graph

The [Open Graph Protocol](https://ogp.me/) is used to produce a richer sharing experience. When someone links to your site, platforms that support Open Graph can look for additional information to display. Instead of just showing the URL, this preview can include a title, canonical URL and an image. The protocol also supports particular content types with additional information. Like songs, films, books, articles, and profiles.

This information is added to the page using the [metadata (`meta`)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta) tag in the `head`. Using the example from the Open Graph website:

```html {data-theme="light"}
<html prefix="og: https://ogp.me/ns#">
<head>
<title>The Rock (1996)</title>
<meta property="og:title" content="The Rock" />
<meta property="og:type" content="video.movie" />
<meta property="og:url" content="https://www.imdb.com/title/tt0117500/" />
<meta property="og:image" content="https://ia.media-imdb.com/images/rock.jpg" />
...
</head>
...
</html>
```

For each Open Graph property, you make a `meta` tag. You put the property name from the protocol website (e.g. `og:title`) into the `property` attribute. Then the value (e.g. `The Rock`) goes into the `content` attribute.

There's also a `prefix` attribute on `html`. This allows `og` to be used as an abbreviation while the computer can still understand it as a full URL. The URL is used as a unique identifier, as any competing standards wouldn't use the Open Graph domain in their identifiers.

## More context for search engines: Schema.org

While Google can explore your site and get a good understanding of the content by itself, using the Schema.org syntax allows you to be more explicit about the content. You can describe your business, its location, opening times and reviews. There's syntax for events, recipes, and courses. Plus many more.

While there are more types available on the [schema.org website](https://schema.org/docs/schemas.html) . It is probably more effective to focus on [the ones that google supports](https://developers.google.com/search/docs/appearance/structured-data/search-gallery). This information may be displayed in the Search Engine Results Page (SERP).

## Security rules: CSP and CORS

Here are a couple of protocols for security, they limit where resources can be used.

### Content Security Policy

Content Security Policy (CSP) allows you to specify which domains the page is allowed to fetch resources from. This is a good security measure against unwanted code being injected and run on your site, which could happen through GTM or from user submitted content.

This information is served in the network request header. It can individually regulate these resource types:

- Scripts
- Styles
- Fonts
- Images
- Video and audio
- iframes

### Cross-Origin Resource Sharing

While CSP protects your front-end from untrusted servers. Cross-Origin Resource Sharing (CORS) protects your server from talking to unknown servers or clients. This is applied to the server.

This is something that shouldn't be an issue for a content team but if an integration isn't working, a quick look at the dev tools console may be helpful.
