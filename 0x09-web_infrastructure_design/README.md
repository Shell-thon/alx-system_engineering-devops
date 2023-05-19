<details>
<summary>Web Infrastructure Description</summary>

```diff
   User's                  Internet                    Server
  Computer                                             8.8.8.8
     │                         │                          ▼
     │ Request: www.foobar.com│
     │───────────────────────>│                          ┌──────────────┐
     │                         │                          │ Web Server   │
     │                         │                          │  (Nginx)     │
     │                         │                          └──────────────┘
     │                         │                                   │
     │                         │         Request: Dynamic Content │
     │                         │───────────────────────────────>│
     │                         │                                   ▼
     │                         │                          ┌──────────────┐
     │                         │                          │ Application  │
     │                         │                          │  Server      │
     │                         │                          └──────────────┘
     │                         │                                   │
     │                         │         Request: Database Query │
     │                         │───────────────────────────────>│
     │                         │                                   ▼
     │                         │                          ┌──────────────┐
     │                         │                          │ Database     │
     │                         │                          │  (MySQL)     │
     │                         │                          └──────────────┘
     │                         │                                   │
     │            Response: Web Pages and Content               │
     │<─────────────────────────────────────────────────────────│
     │                         │

```
   
# 0x09. Web Infrastructure Design

## Concepts

For this project, we expect you to look at these concepts:

- DNS

- Monitoring

- Web Server

- Network basics

- Load balancer

- Server

## Resources

Read or watch:

- [Network basics concept page](https://searchnetworking.techtarget.com/definition/network-basics)

- [Server concept page](https://www.webopedia.com/TERM/S/server.html)

- [Web server concept page](https://en.wikipedia.org/wiki/Web_server)

- [DNS concept page](https://www.webopedia.com/TERM/D/DNS_server.html)

- [Load balancer concept page](https://www.cloudflare.com/learning/dns/what-is-a-load-balancer/)

- [Monitoring concept page](https://en.wikipedia.org/wiki/Monitoring_(technical))

- [What is a database](https://www.youtube.com/watch?v=7S_tz1z_5bA)

- [What’s the difference between a web server and an app server?](https://www.youtube.com/watch?v=mSfkdCHFm1M)

- [DNS record types](https://www.cloudflare.com/learning/dns/dns-record-types/)

- [Single point of failure](https://en.wikipedia.org/wiki/Single_point_of_failure)

- [How to avoid downtime when deploying new code](https://www.youtube.com/watch?v=h_yzV8uGKms)

- [High availability cluster (active-active/active-passive)](https://www.cloudflare.com/learning/ddos/glossary/high-availability-cluster/)

- [What is HTTPS](https://www.youtube.com/watch?v=iH0JZFB2T3U)

- [What is a firewall](https://www.youtube.com/watch?v=GcFJjpMFJvI)

## Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- General

- You must be able to draw a diagram covering the web stack you built with the sysadmin/devops track projects

- You must be able to explain what each component is doing

- You must be able to explain system redundancy

- Know all the mentioned acronyms: LAMP, SPOF, QPS

## Copyright - Plagiarism

You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.

You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.

You are not allowed to publish any content of this project.

Any form of plagiarism is strictly forbidden and will result in removal from the program.

