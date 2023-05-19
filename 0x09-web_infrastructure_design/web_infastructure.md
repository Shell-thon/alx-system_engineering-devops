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
</details>
```