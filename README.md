# 🛒 ShopEase
### A Modern Rails 8 Journey: Honest Planning & Agile Execution

> *"Every piece of knowledge in a system should be expressed in one place."*
> — The DRY Principle, Rails Doctrine

---

## What This Is
ShopEase is a demonstration of **Honest Planning**. Instead of over-specifying complex systems like Payments and Shipping before we understand the domain, we build the core flows first.

### The Two Flows
1. **The Buyer Flow:**
   `Catalog` → `Add to Cart` → `Checkout` → `Receipt`

2. **The Seller Flow:**
   `Login` → `Product Management` → `Shipping Queue` → `Ship Order`

### Honest Planning
We deliberately leave certain areas vague:
- **Payments:** Defined as "fairly vague" until we choose a provider.
- **Shipping:** A placeholder implementation that "won't survive long," allowing us to ship value now and refactor later.

*"Overspecify it up front, and we're likely to get it wrong."*

---

## Who This Is For

| You are... | You'll get... |
|---|---|
| 🧑‍💻 A Rails developer | Confirmation of best practices, fresh perspective on Rails 8 features |
| 🌱 A junior developer | Architecture patterns and clean code habits explained in plain English |
| 🤔 Curious about Rails | A real app growing from zero — no shortcuts, no magic |
| ⚔️ A "Rails is dead" sceptic | Working software. Every commit. |

---

## How to Follow Along

### Option 1 — Just Read
Follow [my LinkedIn](https://linkedin.com/in/bunbee) where I post breakdowns of each concept with the key architectural lessons called out explicitly.

### Option 2 — Clone and Explore
```bash
git clone https://github.com/mutinhiri/Agile-Web-Development.git
cd Agile-Web-Development
```

### Option 3 — Build Alongside Me
Check out the branch for the concept you're on:
```bash
git checkout first-app
```

Each branch is a snapshot. You can read the code, run it locally, and compare it to where we started.

---

## Prerequisites

```bash
ruby --version   # 3.3+
rails --version  # 8.0+
node --version   # 18+
```

### Getting Started
```bash
bundle install
rails db:create db:migrate
rails server
```

Visit `http://localhost:3000` — you should see a working Rails app. That's always where we start.

---

## Branch Structure

Branches map directly to chapters in the book. Start at `main` for the current state of the app, or jump to any section:

```
main                    ← latest working state
section-01-intro        ← scaffolding, MVC introduction
section-02-first-app    ← first working application
section-03-architecture ← models, views, controllers in depth
section-04-models       ← ActiveRecord, relationships, validations
...
```

> ⭐ **Star this repo** to get notified when new chapters are pushed.

---

## The Agile Approach

We follow the principles from the Agile Manifesto throughout:

- **Working software over documentation** — every commit leaves the app in a runnable state
- **Responding to change** — we refactor openly; you'll see code evolve, not just appear perfect
- **Individuals over processes** — commit messages are written for humans, not CI logs

This means the codebase won't always be "finished." It'll always be **honest**.

---

## Architecture Principles Covered

As we build, we'll explicitly call out and apply:

- **MVC** — what each layer is responsible for, and what it isn't
- **Convention over Configuration** — why Rails defaults are a feature, not a constraint
- **DRY (Don't Repeat Yourself)** — one truth, one place, always
- **RESTful design** — building URLs that make sense
- **Test-first thinking** — Rails ships with testing scaffolded; we'll use it
- **ActiveRecord patterns** — relationships, validations, scopes done right

---

## For Junior Developers

Look for `# BEST PRACTICE:` comments in the code. These call out moments where Rails is teaching you something important — a pattern you can carry into any codebase.

Example:
```ruby
class Project < ApplicationRecord
  belongs_to :portfolio
  has_many   :milestones
  has_many   :deliverables, through: :milestones

  # BEST PRACTICE: Validations live in the model, not the controller.
  # The model is the single source of truth for business rules.
  validates :name,       presence: true
  validates :short_name, uniqueness: true
end
```

---

## Series Posts

| Chapter | LinkedIn Post | Branch |
|---|---|---|
| Introduction | [Why Rails Still Wins](#) | `section-01-intro` |
| First App | [Convention Over Configuration](#) | `section-02-first-app` |
| *(more coming)* | Follow on LinkedIn | — |

---

## Contributing

Found a better way to do something? Open a PR. I'll review it and, if it's a stronger approach, I'll commit it with full credit and write a LinkedIn post about why the change was right.

That's the agile way.

---

## About Me

I'm a Ruby on Rails developer who believes in building software that lasts. This series is my way of proving — publicly, in code — that Rails is not just alive, but still one of the best tools for shipping real web applications.

📎 [LinkedIn](https://linkedin.com/in/bunbee)
🐙 [GitHub](https://github.com/mutinhiri)

---

<p align="center">
  Built with ❤️ and Ruby on Rails
</p>