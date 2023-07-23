---
abstract: More of an intro
abstract-title: null
aliases:
  - null
build command: pandoc Client\ \(front-end\)\ languages.md -s -o client2.html
date: 22/7/2023
date created: Saturday, 2023-07-01, 18:25:33
date modified: Monday, 2023-07-24, 00:48:42
lang: en-GB
subtitle: The languages that put things on your screen
tags:
  - null
title: Front-end languages | Cyber Pontification
---

# front-endLanguages

The client is the device the site visitor uses to access websites. We need three front-end languages to make interactive webpages: HTML, CSS and JavaScript.

## HTML

The first web language is HTML: Hyper Text Markup Language. This is a document intended to be linked to other documents (Hyper Text). It's marked up to tell the computer how to display it. With this, you can present information to site visitors.

The document has two parts. The [`head`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head), and the [`body`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/body). What you see on the page appears in the `body`. The `head` provides additional information. Like the document title and description, which search engines use (unless Google thinks it knows better). The `head` also links to other resources which are added to the page.

When you add this additional information to your document, you use HTML tags. There is an opening tag, then your content and a closing tag. Together, this is called an element. The opening tag consists of a less-than sign `<`, the tag name, then there may be some extra information known as attributes, followed by a more-than sign `>`.

The closing tag puts a forward slash `/` between the less-than sign and the tag name. It won't have any attributes.

```html {data-theme="light"}

<html>
    <head>
        <!-- Information for the computer goes here -->
    </head>

    <body>
        <!-- The content for the humans to enjoy -->
    </body>
</html>

```

### HTML tags

Here are some examples of HTML tags, I'll start with text formatting ones and zoom out.

#### Strong and Emphasis

If you want to draw attention to pieces of text, you will use the emphasis [`em`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em) and the [`strong`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong) tags.

While these normally translate to italics and bold, they don't have to. You can create your own conventions for your site, and people using assistive technologies, like screen readers, will perceive it differently. When writing, focus on the tag goal, rather than the usual implementation.

```html {data-theme="light"}

These tags are useful for highlighting <strong>the important bits</strong>. They should be used <em>in moderation</em> as too much styling can reduce the impact and make it more difficult to read.

```

#### Paragraph

The [paragraph (`p`)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p) tag represents a chunk of text with a common theme. Then the browser can put space around these elements. This is important as HTML compresses multiple space characters and line breaks into a single space. This allows people writing HTML directly to format their code without these characters showing up for site visitors.

```html {data-theme="light"}

<p>This is a chunk of text with a single theme or goal. It's a paragraph.</p>

        <p>This is a second paragraph. The indent at the start of the line won't be displayed</p>

```

#### Line breaks

Sometimes we need to ensure that pieces of text are displayed on different lines, for example in addresses. In these cases, we use the [break `<br>` tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/br). These are placed where you want the line break to happen.

While the break tag is a valid choice in some circumstances, please review writing that has been brought in from other sources, in case they are using breaks when paragraph tags would be more suitable.

#### Headers

When you have a lot of text, headers are critical to add structure to the page. There are 6 levels. [`h1` to `h6`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements), where 1 is the largest and 6 is the smallest.

There should only be one `h1` per page, but you can use the other levels as many times as needed.

When creating a sub heading, use the level directly under the parent heading. A `h3` under a `h2`. Don't skip levels. This can be tempting if the correct header looks too big, but this causes accessibility issues. Headings provide information about the structure of the document.

```html {data-theme="light"}

<h1>The page title</h1>

<p>A bit of text to introduce the page.</p>

<h2>First main theme<h2>

<p>Talking about the first theme<p>

<h3>An important part of the first theme</h3>

<p>A deep dive on this part</p>

<h2>Second main theme</h2>

```

#### Lists

There are two basic types of lists: [Ordered `ol` (numbered)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol) and [unordered `ul` (bullet points)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul).

They require two tags. A container must be created to declare which type of list you want using `ol` or `ul`. Then use the [list item (`li`)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/li) tag to wrap each individual item.

```html {data-theme="light"}
<h2>Hampshire cities</h2>

<p>A list without rank</p>

<ul>
    <li>Portsmouth</li>
    <li>Winchester</li>
</ul>

<h2>Portsmouth train stations</h2>

<p>Ordered heading towards London</p>

<ol>
    <li>Portsmouth Harbour</li>
    <li>Portsmouth &amp; Southsea</li>
    <li>Fratton</li>
</ol>
```

#### Hyperlinks

To create links, we use the [`a` (anchor)](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a) tag. This requires an attribute, `href` to specify where the link goes.

When linking to an external site, you give the full URL `https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em`. If you're linking to another page on the same site, you only need to provide the path `/en-US/docs/Web/HTML/Element/em`.

```html {data-theme="light"}
<a
	href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em"
	>Learn about the em tag on MDN
</a>

<a
	href="/another/page"
	>Check out this other page on this site
</a>
```

#### HTML Attributes

Attributes provide additional details about an element. Sometimes you just need to add the attribute name to enable something. Usually you also need to give it a value. The value is wrapped in double quotes and connected to the attribute name with an equals sign.

Some tags have their own specific attributes (like `href`) but there are some [global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#list_of_global_attributes) available to all tags. For example:

[`id`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id)

: Use this to identify an element. Each value should be unique within the page. IDs can be used to jump to a part of the page. Pair it with an `a` tag and start the `href` value with a `#`, then add the ID.

```html {data-theme="light"}
<p id="top">
This is the introductory paragraph.
</p>

...

<a href="#top">Top of the page</a>
```

[`class`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/class)

: These are labels. They are normally used with CSS to change the element's appearance. An element can have multiple classes separated by spaces.

```html {data-theme="light"}
<a href="/buy" class="cta cta-primary">Buy now</a>
```

[`style`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/style)

: Use this to add CSS rules directly to an element. It can be useful, but having separate CSS activated by a class is better if this is required in multiple places.

```html {data-theme="light"}
<a href="/buy" style="width: 100%">Buy now</a>
```

[`data-`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*)

: A prefix for developer defined fields. This can be used by JavaScript to store useful information.

#### Images

A tag that depends on attributes is the [image `img`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img) tag. This uses the `src` to define the image URL and `alt` to provide alternative text if the image cannot be displayed. This could be due to the image being unavailable, or because the software the site visitor is using can't display the image. Search engines also use this attribute to understand the image.

The `img` tag doesn't need a closing tag. It is the instruction to insert an image rather than annotating existing text.

```html {data-theme="light"}
<img
	src="https://images.unsplash.com/photo-1596492784531-6e6eb5ea9993"
	alt="A white dog with long hair in front of a pink background">
```

There is also a [`picture` tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture) which allows you to offer multiple versions of the image. These cover different image dimensions and file formats, to select the most suitable option for the device the visitor is using.

#### Page structure

When you have control over the entire page, it is useful to mark up regions. This gives context for search engines and accessibility tools.

There are:

[`main`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/main)

: This contains the core content of the page. The reason visitors are here. Each page should only have one `main` element.

[`article`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/article)

: This is a self-contained piece of content that could be shared in isolation. A page can have multiple articles.

[`aside`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/aside)

: A way of identifying content that is loosely connected to the main content.

[`nav`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav)

: This is a region used for navigation. This can be within the page, or linking to other pages.

[`header`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header) and [`footer`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer)

: These introduce or wrap up the content. This can either be the entire page, or the other regions in this list.

```html {data-theme="light"}
<body>
	<header>
	</header>

	<nav>
	</nav>

	<main>
		<article>
			<aside>
			</aside>
		</article>
	</main>

	 <footer>
	 </footer>
</body>
```

### Semantic HTML

The use of the `strong`, `em` and page structure tags allows you to provide additional meaning to the document. This helps search engines and accessibility tools to understand the page. Without this, these tools would have to guess, or developers would have to provide information in other ways.

The opposite of semantic tags are [`span`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/span) and [`div`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div). These have no additional information, so they're an option for developers, but content writers have better options. If you see these tags in user submitted content, they were probably copied unintentionally from other websites. You can either remove them in an HTML view, or use Ctrl-Shift-V to paste the text in without formatting.

## CSS

Using HTML will give you a website that both humans and computers can understand. However, it probably won't look pretty, and it doesn't allow you to identify your brand.

Browsers have default styling but is rather basic and isn't the same between browsers. So it can't be relied upon for a consistent experience.

The code snippets in this section are used to demonstrate the syntax. There are no guarantees it will look good.

### Making a rule

Cascading Style Sheets (CSS) works by setting properties. The property and the value are connected by a colon. When you have multiple declarations, they are separated by a semicolon.

```css {data-theme="light"}
	width: 100%;
	background-color: teal;
```

I'm not going to explain individual CSS properties. There's a lot of them. They are usually easy to understand, and they can be researched as you discover new properties.

### Inline CSS

At this point, you're saying what you want something to look like, but how is this attached to the HTML? The quickest way to see the result is to inline it. Take the declarations and put them into the `style` attribute of an HTML element.

```html {data-theme="light"}
<a href="/buy"
   style="width: 100%; background-color: teal;"
   >
	   Buy now
</a>
```

This will work, but it's not a sustainable way to style an entire page, or website. Declaring everything every time it is needed will increase the size of the page, and there is a risk that design updates won't be applied everywhere. Which can detract from the design and could produce inaccessible content.

### Embedded CSS

There is a [`style` element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style). This allows you to add style rules to the page `head` (don't add it to the body as that causes it to fail accessibility checks).

It is better than inline CSS but leaving the style definitions in the page still leads to duplication across the website.

### CSS files and selectors

To build in a scalable way, the CSS should be moved into a separate file, and [`link`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link)ed from the `head`.

Wrap each group of declarations in braces (aka curly brackets `{}`) and put a selector in front of it to target particular elements on the page.

```css {data-theme="light"}
selectorGoesHere {
	width: 100%;
	background-color: teal;
}
```

#### Benefits of knowing about selectors

Firstly, this allows you to write and understand CSS. Secondly, this syntax can be used when searching for elements in the browser dev tools, or when using the Screaming Frog Web crawler. Without this notation, using a basic text search, there may be a lot of matches that aren't relevant to go through.

#### Available selectors

When choosing selectors, the basic options are:

- classes
- tag names
- IDs

##### class

[Class selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/Class_selectors) are a good option in most cases. The class name should be descriptive, and it is opt-in: it will only happen when you add the class to an element. Classes are identified by putting a full stop in front of the class name.

It is normal to combine multiple classes. A base class that does most of the setup, followed by supporting classes that apply variants.

```html {data-theme="light"}
<style>
	.cta {
		width: 100%;
	}
	.cta-primary {
		background-color: teal;
	}
</style>

<a href="/buy" class="cta cta-primary">Buy now</a>
```

##### Tags

[Tag names](https://developer.mozilla.org/en-US/docs/Web/CSS/Type_selectors) are a tempting choice for selectors, but there is the risk of finding situations where you don't want the styling. Then it needs to be unpicked and reversed with additional CSS.

Even if the core site doesn't have issues, it may affect third-party services the site uses.

It's not that tag rules should never be used, but be careful to limit it to properties that are needed every time the tag is used.

```html {data-theme="light"}
<style>
	a {
		background-color: teal;
		/*	This makes the link stand out
			but do you want that for the 
			legal pages in the footer?
		*/
	}
</style>

<a href="/buy">Buy now</a>
```

##### IDs

[IDs](https://developer.mozilla.org/en-US/docs/Web/CSS/ID_selectors) should normally be avoided. They're based on the assumption that this CSS will only ever be required in this single place. Using a class pre-empts the need to use it more. If you do need it, the selector starts with a hash.

```html {data-theme="light"}
<style>
	#top {
		background-color: teal
	}
</style>

<h1 id="top">Top of the page</h1>
```

#### Combining selectors

You are not limited to using a single selector. You can target particular situations with a combination. The computer looks for elements matching the first part of the selector, and then checks for the next part in any descendant elements. You separate each part of the selector by a space.

If there are no spaces, you're looking for an element with all these selectors.

If you want to refer to an element that is the direct child of another, connect these selectors with a `>`.

If there are multiple selectors that should be styled the same, you can separate them with a comma.

```html {data-theme="light"}
<style>
header p {
	/* This is applied. In 2 places */
	font-family: cursive;
}

header > strong {
	/* This won't be applied */
	color: red;
}

p > strong {
	/* This will be applied */
	color: blue;
}

p.subtitle {
	/*	No space so we're looking for paragraph tags
		with the subtitle class */
	font-size: 1.5rem;
	font-variant: small-caps;
}

h1, h2 {
	font-weight: 700;
}
</style>

<header>
	<h1>Page title</h1>
	<p class="subtitle">Strapline with a <strong>keyword</strong></p>
	<nav><p>Add a link here</p></nav>
</header>

<h2>Introducing the first part of the content</h2>
```

#### Advanced selectors

With the above selectors, you can style elements on the page, but here are a couple of options to pick elements more contextually. Without these, you would have to use JavaScript to add and remove classes. Achieving the same results with more effort.

##### Selecting elements by attributes

You can select elements by their [attributes](https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors). Either just finding elements with that attribute, or by testing its value.

```css {data-theme="light"}
a[href] {
	/* All anchor tags with an href. */
}

a[href="https://developer.mozilla.org/"] {
	/* Styles any link to the MDN homepage */
}

a[href^="https://developer.mozilla.org/"] {
	/* Styles any links starting to a page on MDN */
}

a[href$="php"] {
	/* 	Any links ending in php.
		This won't match php files with a query string
	*/
}

a[href*="developer"] {
	/* Links including the word developer */
}
```

##### Pseudo-elements and pseudo-classes

There are [pseudo-elements](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-elements) to select part of an element, these are identified by two leading colons.

[pseudo-classes](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes) selects states that an element can be in, they begin with a single colon.

[`::before`](https://developer.mozilla.org/en-US/docs/Web/CSS/::before), [`::after`](https://developer.mozilla.org/en-US/docs/Web/CSS/::after)

: These allow you to add text or symbols when paired with the [content property](https://developer.mozilla.org/en-US/docs/Web/CSS/content). This isn't part of the HTML, so it shouldn't be the only source of important information. Visual cues for additional context: yes; crucial insights: no.

[`::marker`](https://developer.mozilla.org/en-US/docs/Web/CSS/::marker)

: The symbol or number used in a list.

[`::selection`](https://developer.mozilla.org/en-US/docs/Web/CSS/::selection)

: This formats the text a user has selected.

[`:hover`](https://developer.mozilla.org/en-US/docs/Web/CSS/:hover)

: For elements the user is mousing over.

[`:focus`](https://developer.mozilla.org/en-US/docs/Web/CSS/:focus)

: These are used to style elements that are currently being interacted with.

### Concepts

This section covers the approach CSS uses to determine which rule is used when there are conflicts.

While this process exists, it is better to keep your CSS as simple as possible. Being “clever” in coding only works if it makes sense to the next person to work on it.

#### Inheritance

When a property is defined, this is (usually) also applied to its child elements until it is overruled by something more specific.

To set a default font, create a definition and apply it to the `body` element. Then create a new rule for the things that need a different font.

This is useful as it allows the overall appearance of the site to be determined and then the exceptions can be addressed locally.

#### Order of appearance (The cascade)

When there are multiple rules affecting the same property, all else being equal, the latest definition wins. This works across selectors and files. So there is a risk that wide-ranging rules in third-party code could conflict with the rules developed for the site.

#### Specificity

This is used to prioritise certain selectors. The lowest priority is an element selector, then classes and attributes, and then IDs. Inline styles have the highest priority. The scores for each level are calculated separately so a lower level can be useful for a tie-break.

#### Important

There is a way of overriding the normal priority of a rule. Using the important key word. `!important` is added after the value and before the semicolon.

This is a bad sign as the developers weren't able to fit their rules into the existing styling and needed a queue-jump. If there are multiple important rules, they will be ordered using the approaches described above.

## JavaScript

By using HTML and CSS, you can produce a website that displays content and looks good. However, it won't be able to respond to much. JavaScript makes the site interactive.

JavaScript allows a page to fetch, evaluate and display new data. It can react to events that occur on the page. Like button presses and users submitting information.

Without JavaScript, all processing would have to happen on the server. With data being passed through URLs or web forms. Doing this slows down the experience for users. However, any important calculations **must** be performed/verified on the server as users could edit the code on their machine, or generate fake responses.
