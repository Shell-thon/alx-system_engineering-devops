0x0A. Configuration management
==============================

-   By Sylvain Kalache
-   Weight: 1

Background Context
------------------

[![](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2019/6/6a0a8024f2b1c47a9d1e.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220311%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220311T121959Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9ce50e87387c9b01da2af22461873db9083bc0b6e62ba9603674d6dd1abd3029)](https://youtu.be/ogYLFyp68cI)

When I was working for SlideShare, I worked on an auto-remediation tool called [Skynet](https://alx-intranet.hbtn.io/rltoken/0zbIzBqH_ktMmRQvJwZs2A "Skynet") that monitored, scaled and fixed Cloud infrastructure. I was using a parallel job-execution system called MCollective that allowed me to execute commands to one or multiple servers at the same time. I could apply an action to a selected set of servers by applying a filter such as the server's hostname or any other metadata we had (server type, server environment...). At some point, a bug was present in my code that sent `nil` to the filter method.

There were 2 pieces of bad news:

1.  When MCollective receives `nil` as an argument for its filter method, it takes this to mean 'all servers'
2.  The action I sent was to terminate the selected servers

I started the parallel job-execution and after some time, I realized that it was taking longer than expected. Looking at logs I realized that I was shutting down SlideShare's entire document conversion environment. Actually, 75% of all our conversion infrastructure servers had been shut down, resulting in users not able to convert their PDFs, powerpoints, and videos... Pretty bad!

Thanks to Puppet, we were able to restore our infrastructure to normal operation in under 1H, pretty impressive. Imagine if we had to do everything manually: launching the servers, configuring and linking them, importing application code, starting every process, and obviously, fixing all the bugs (you should know by now that complicated infrastructure always goes sideways)...

Obviously writing Puppet code for your infrastructure requires an investment of time and energy, but in the long term, it is for sure a must-have.

![](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/292/4i8il3B.gif)

That was me ^_^': [https://twitter.com/devopsreact/status/836971570136375296](https://alx-intranet.hbtn.io/rltoken/jIyF-Oa80s40ssG21cyNAg "https://twitter.com/devopsreact/status/836971570136375296")

Resources
---------

**Read or watch**:

-   [Intro to Configuration Management](https://alx-intranet.hbtn.io/rltoken/GL30hu-aRcKzPOvK8JO-Bg "Intro to Configuration Management")
-   [Puppet resource type: file](https://alx-intranet.hbtn.io/rltoken/DjSqEUZh5jSvzQbr8Hn_hA "Puppet resource type: file") (*check "Resource types" for all manifest types in the left menu*)
-   [Puppet's Declarative Language: Modeling Instead of Scripting](https://alx-intranet.hbtn.io/rltoken/fZbIuIwhPZWQUQNTjsqu1A "Puppet's Declarative Language: Modeling Instead of Scripting")
-   [Puppet lint](https://alx-intranet.hbtn.io/rltoken/CRUMeEMdcX-UtbWsUM9xLQ "Puppet lint")
-   [Puppet emacs mode](https://alx-intranet.hbtn.io/rltoken/MzHXCntAkPzOqMnI6_rpWQ "Puppet emacs mode")

Requirements
------------

### General

-   All your files will be interpreted on Ubuntu 20.04 LTS
-   All your files should end with a new line
-   A `README.md` file at the root of the folder of the project is mandatory
-   Your Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors
-   Your Puppet manifests must run without error
-   Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
-   Your Puppet manifests files must end with the extension `.pp`

Note on Versioning
------------------

Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

### Install `puppet`

```
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet

```

You do **not** need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax which is virtually identical in newer versions of Puppet.

[Puppet 5 Docs](https://alx-intranet.hbtn.io/rltoken/u-eUjjYAqDDoxYFeyrA3GA "Puppet 5 Docs")

### Install `puppet-lint`

```
$ gem install puppet-lint

```