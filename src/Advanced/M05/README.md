# Database

## 1. Core Data

Persist or cache data and support undo on a single device.

There is a simple app built based on Core Data, you can download it and have a quick look at [here](https://www.raywenderlich.com/7569-getting-started-with-core-data-tutorial)

> Note: Please jump to **Modeling Your Data** chapter directly, focus on Core Data part.

For deep learning, please read the doc [Core Data Programming Guide](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreData/index.html#//apple_ref/doc/uid/TP40001075-CH2-SW1)

## 2. SQLite

SQLite is a C-language library that implements a [small](https://www.sqlite.org/footprint.html), [fast](https://www.sqlite.org/fasterthanfs.html), [self-contained](https://www.sqlite.org/selfcontained.html), [high-reliability](https://www.sqlite.org/hirely.html), [full-featured](https://www.sqlite.org/fullsql.html), SQL database engine.

I believe you are familiar with database and SQL syntax, so let's skip the basic knowledge, I will introduce you a wrapper for SQLite3.

[SQLite.swift](https://github.com/stephencelis/SQLite.swift) is a type-safe, Swift-language layer over SQLite3. We don't need to use SQL commands to operate database.

## 3. Realm

Realm Database is a fast, easy to use, and open source alternative to SQLite and Core Data.

You can try by yourself, follow the [Doc](https://realm.io/docs/swift/latest/)



## Challenge

Please choose a database to uplift your POS App at **Basic M10**

Requirements:

- Fetch data from server at first time the app installed and write them to database, then use and operate data through database
- Data persistence, include goods in shopping cart that doesn't been settled
- User can edit goods price
- User can delete goods
- User can add goods (Optional)