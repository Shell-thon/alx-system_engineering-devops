    User's         Internet       Load Balancer       Load Balancer
   Computer                                           │
      │                        │                       │
      │ Request: www.foobar.com│                       │
      │───────────────────────>│                       │
      │                        │                       │
      │                        │                       │
      │                        │                       │
      │                        │                       │
      │                        │                       ▼
      │                        │              ┌──────────────┐
      │                        │              │   Load       │
      │                        │              │  Balancer 1  │
      │                        │              │ (HAproxy)   │
      │                        │              └──────────────┘
      │                        │                       │
      │                        │         Request: Dynamic Content
      │                        │───────────────────────>│
      │                        │                       ▼
      │                        │              ┌──────────────┐
      │                        │              │   Web        │
      │                        │              │  Server 1    │
      │                        │              └──────────────┘
      │                        │                       │
      │                        │         Request: Application Logic
      │                        │───────────────────────>│
      │                        │                       ▼
      │                        │              ┌──────────────┐
      │                        │              │ Application  │
      │                        │              │  Server 1    │
      │                        │              └──────────────┘
      │                        │                       │
      │                        │         Request: Database Query
      │                        │───────────────────────>│
      │                        │                       ▼
      │                        │              ┌──────────────┐
      │                        │              │   Database   │
      │                        │              │   Server 1   │
      │                        │              └──────────────┘
      │                        │                       │
      │            Response: Web Pages and Content
      │<───────────────────────────────────────────────│
      │                        │
