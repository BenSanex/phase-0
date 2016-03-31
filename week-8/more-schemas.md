![One-to-one](/imgs/one_to_one.png)
This is a one to one relationship because each individual article of could have a size, but since not all have sizes it makes sense to have a separate table for them.

![Many-to-many](/imgs/many_to_many.png)

What is a one-to-one database?
A one to one database is a database where each item in one table has at most one corresponding item in a second table.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
One-to-one makes sense when items might not have specific properties, or if your table is starting to get too big so you split some properties into a different table.

What is a many-to-many database?
Many to many database is a database where tables are connected by a neutral table of ids and because there is not a set correspondence of an item in one table to item in the other.
When would you use a many-to-many database? (Think generally, not in terms of the example you created).
Any time you have two lists of things that correspond to one another, but when they can have multiple values like a companies and a list of people with jobs or a list of cars and people who own cars.

What is confusing about database schemas? What makes sense?
Its confusing that the columns are listed in rows just for the sake of picturing the database. The concept itself is pretty simple though.
