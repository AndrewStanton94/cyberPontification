---
aliases:
  - null
date created: Saturday, 2023-07-01, 18:33:36
date modified: Tuesday, 2023-07-25, 02:12:19
lang: en-GB
subtitle: A few developer terms that might be of interest
tags:
  - null
title: Developer stuff | Cyber Pontification
---


Here are some terms that you shouldn't need to worry about but they might be interesting if you encounter them.

## Semantic versioning

When developers need to track version numbers, we tend to use Semantic Versioning. These are three numbers separated by a full stop. The first release will be `1.0.0`. Future updates will increment one of these numbers depending on the sort of change.

The smallest change is a patch. Representing a correction to the code. This using the digit on the right. I have fixed a bug, so I release version `1.0.1`.

When I add new features, I release either a minor (middle number), or major (left number) version. The differentiating factor is if the change is breaking.

A minor (non-breaking) change means that the new version will be compatible with the previous versions. We get new features and the current ones won't (intentionally) break. This becomes release `1.1.1`.

A major (breaking) release will be more disruptive. Some parts of the code won't work in the same way as they used to, and this will require changes by people using this code. This breaking change is `2.0.0`

The major/minor version difference is the most obvious in APIs or software that is used by other programs. For applications with users, the major version could be for scheduled releases or to denote a major UI change.

## Code stuff

### Libraries and Frameworks

These are both bundles of code that can be added to your project to make things easier. This code already exists, and if there's a community around it, that shows other people see the benefits from it. They have hopefully already found and fixed the bugs that you would otherwise encounter by making your own solution.

The difference between these terms is that a library offers a set of tools you can pick from. This is helpful to fill in the gaps.

Whereas a framework tends to solve a particular problem in a particular way. As long as their method makes sense to you, and you can follow their structure, this can offer a significant speed-up.

### Linters, formatters, and minifiers

These are some tools developers use when writing code.

Linters

: These review the code for known issues. Highlighting them explicitly before they cause problems while running.

Formatters

: Using formatters ensures that the code looks the same across the project. This consistency helps during code review and saves people debating the layout rather than what the code does.

Minifiers

: These compress the code down to reduce size when sending it to the client. They remove all unneeded spaces and can rename variables to make them shorter.

## Git

Git is a version control system, used to track changes in code (or other text based projects). It was created by Linus Torvalds, the initial developer of the Linux kernel: The core of the superior Operating System.

Git allows people to collaborate on code. The project is called a repo (repository). Each developer `clone`s the repository to their machine from a remote source.

People work independently on their own local copies of the repo. Changes are saved as snapshots called `commits`. They include instructions for git to update the code (a `diff`), and a description of the changes for users to understand the purpose of the commit.

It is important to keep your code in sync with other collaborators. You `pull` down their changes and `push` your commits back up. If others have made changes to the same code, you get a `merge conflict` which has to be resolved manually.

When working on complex projects, `branch`es are helpful. These allow you to work on new features or bug fixes separately, and then `merge` your commits back in once they are complete. You may have to do a `pull request` before your branch can be merged in. This allows code to be reviewed by other collaborators first.

### GitHub

The collaborative nature of Git requires a place to store the code. While developers could pull changes from each other's computers, this requires them to be turned on at the same time and reachable over the network/internet. So the simplest solution is to have a server that everyone uses. The most popular site for this is GitHub.

GitHub hosts the code, it also offers an issue tracker and some basic project management tools. GitHub pages allow you to host a static website. There is also GitHub Actions which can run tasks. Either on a schedule or in response to changes to the repo. This can be used to run automated testing on the new commits.

## Docker and Kubernetes

An issue with a team developing an application is the need to have a consistent environment. Different Operating Systems and program versions could lead to different results. And this is likely to be different from where the code runs in production.

Virtual machines were a good starting point, as this allowed people to work with a more consistent environment. However, they are rather resource intensive as they have to simulate everything from the hardware up.

Containers are more efficient as they only have to simulate things from the Operating System up. By using a Dockerfile, you can choose an existing docker image (a template for the operating system that's ready to run) and run additional commands on top of it to produce a docker image that is configured for your situation.

Kubernetes (Abbreviated as K8s, the Greek word for helmsman) is a container orchestration tool. You specify how many containers you want running, and Kubernetes will start them up and keep them running. Replacing any broken instances as needed.
