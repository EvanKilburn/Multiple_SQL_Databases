/*This program demonstrates an outer join */
CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);

/*outer join*/
SELECT customers.name, customers.email, orders.item, orders.price
    FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT customers.name, customers.email, sum(orders.price) As moneySpent
    FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    group by Customers.name
    order by orders.price desc;