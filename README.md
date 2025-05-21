# 🐤 DuckDB Product Analytics Tutorial
This project provides a lightweight, beginner-friendly dataset and SQL loader designed to help you explore real-world product analytics use cases using [DuckDB](https://duckdb.org/).  

You can follow a step-by-step tutorial based on this dataset on the [MotherDuck blog](TBD_LINK).

---

## 📁 Folder Structure

```

duckdb\_product\_analytics\_tutorial/
├── mock\_data/
│   ├── acquisitionCosts.csv
│   ├── conversions.csv
│   ├── events.csv
│   ├── npsResponses.csv
│   ├── subscriptions.csv
│   └── users.csv
├── load\_data.sql
└── README.md

````

---

## 📦 What's Included

- `mock_data/`: Sample CSVs simulating users, events, conversions, subscriptions, NPS feedback, and acquisition costs.
- `load_data.sql`: A single SQL file that:
  - Creates normalized tables matching the dataset schema
  - Loads each CSV into DuckDB using `COPY ... FROM` statements

---

## 🚀 Quickstart

### 1. Clone this repo

```bash
git clone https://github.com/YOUR_USERNAME/duckdb_product_analytics_tutorial.git
cd duckdb_product_analytics_tutorial
````

### 2. Launch DuckDB and load the data

```bash
duckdb
.read load_data.sql
```

This will create all the tables and populate them with data from the `mock_data/` folder.

### 3. Follow the tutorial

Follow along the tutorial on the [Motherduck blog](TBD_LINK)
---

## 🧠 Schema Overview

### `users`

| Column       | Type      | Description             |
| ------------ | --------- | ----------------------- |
| user\_id     | VARCHAR   | Unique ID for each user |
| signup\_time | TIMESTAMP | Timestamp of signup     |
| country      | VARCHAR   | User’s country          |

### `events`

| Column        | Type      | Description                                   |
| ------------- | --------- | --------------------------------------------- |
| event\_id     | VARCHAR   | Event identifier                              |
| user\_id      | VARCHAR   | User who performed the event                  |
| event\_time   | TIMESTAMP | Time of the event                             |
| event\_name   | VARCHAR   | Name of the event (e.g., `checkout_complete`) |
| feature\_name | VARCHAR   | Optional feature context                      |
| session\_id   | VARCHAR   | Session identifier                            |
| duration\_ms  | INTEGER   | Duration in milliseconds                      |

### `subscriptions`, `conversions`, `nps_responses`, `acquisition_costs`

All include appropriate IDs, timestamps, and metadata to simulate realistic SaaS behavior.

---

## 📚 Use Cases

* Funnel analysis
* User retention queries
* LTV vs. acquisition cost
* NPS segmentation
* Feature adoption & engagement

---

## 🪪 License

MIT License

---

## 🙌 Contributing

Have ideas for new mock datasets or improvements? PRs welcome!

---

## 🌐 Related

* [DuckDB Docs](https://duckdb.org/docs/)
* [MotherDuck](https://motherduck.com/) — DuckDB in the cloud

