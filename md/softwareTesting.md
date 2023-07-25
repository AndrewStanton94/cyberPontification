---
aliases:
  - null
date created: Monday, 2023-07-10, 22:54:55
date modified: Tuesday, 2023-07-25, 02:12:21
lang: en-GB
subtitle: Types of testing to consider
tags:
  - null
title: Software Testing | Cyber Pontification
---


Testing is a process for checking that your software works as expected. There are multiple stages and types that can (and should) be used.

I've listed a few types here. If you want an overwhelming list, check out [Types of software testing (100 examples)](https://www.guru99.com/types-of-software-testing.html)

## Unit testing

Developers write these tests to ensure their code is behaving correctly at the lowest levels.

These tests should be automated so that they can be run easily and breakages can be discovered as soon as possible.

## Integration testing

This is used to ensure that the self-contained units of code will work together. This can be an issue if different teams are working on the code in parallel and there may be different assumptions.

## Exploratory (ad-hoc) testing

The tester tries to use the system and sees what issues occurs. With experienced testers, this is a good way to discover defects without the process and documentation that other methods require.

## Functional testing

Functional testing uses a test plan to describe what a system should do as a series of requirements.

Behaviour Driven Development (BDD) is a popular structure for these tests.

> Given [initial context and setup]  
> When [something happens]  
> Then [expected result]

If a functional test fails, the BDD structure helps with bug reports. This should also include a description of the expected and the actual results.

### System testing

Does it work on the expected hardware? This is also known as Configuration testing when multiple combinations are tested.

### End-to-end testing

This describes a user journey through the system. Can a use achieve their goals using the site?

## Non-functional testing

This is a broad category of tests that aren't covered by the functional requirements. They are equally important as the functional tests, but it can be more challenging to specify what is good enough up front.

### Accessibility

This ensures that everyone can use the product. This is essential as alienating users with an unusable site is a bad move, and it's a legal requirement.

On the web, accessibility can be increased by the use of semantic HTML (with supporting technologies like ARIA) to provide maximum clarity for accessibility software to communicate with users. Colour contrast is another important consideration.

### Security

This looks for ways the site could be compromised. This is a priority for any site that handles any personal or sensitive data, but any site breach is bad for the business.

Attackers could just vandalise the site, causing damage and data-loss, or they could subtly alter data, making the site less attractive than the competitors.

### Performance

Your site does everything it needs to do safely and accessibly, but how many people can use the site at the same time?

Performance tests check that the site can handle the expected number of users. This can check how the site handles prolonged usage, and also rapid increases, which requires the site to scale up quickly.

### User Acceptance

Hopefully the early stages of the project will have accurately captured all the requirements and these have been implemented as designed. This testing validates this assumption and checks if the users are happy with the product.
