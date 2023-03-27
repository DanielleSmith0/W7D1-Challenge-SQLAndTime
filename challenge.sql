Create table If Not Exists Customers (id int, name varchar(255))

Create table If Not Exists Orders (id int, customerId int)

Truncate table Customers
insert into Customers (id, name) values ('1', 'Joe')
insert into Customers (id, name) values ('2', 'Henry')
insert into Customers (id, name) values ('3', 'Sam')
insert into Customers (id, name) values ('4', 'Max')
Truncate table Orders
insert into Orders (id, customerId) values ('1', '3')
insert into Orders (id, customerId) values ('2', '1')


SELECT name FROM Customers
WHERE id IN (SELECT Country FROM Suppliers) = NULL;
 

SELECT name
FROM table2
WHERE name NOT IN
    (SELECT name 
     FROM table1)


SELECT name 
FROM table2 
WHERE NOT EXISTS 
    (SELECT * 
     FROM table1 
     WHERE table1.name = table2.name)

SELECT customers.name AS customers FROM Customers 
LEFT JOIN Orders ON Customers.id = Orders.customerId
WHERE Orders.customerId = NULL;

Telling time:

let conversionTable = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
    5: 'five',
    6: 'six',
    7: 'seven',
    8: 'eight',
    9: 'nine',
    10: 'ten',
    11: 'eleven',
    12: 'twelve',
    13: 'thirteen',
    14: 'fourteen',
    15: 'fifteen',
    16: 'sixteen',
    17: 'seventeen',
    18: 'eighteen',
    19: 'nineteen',
    20: 'twenty',
    30: 'thirty',
    40: 'fourty',
    50: 'fifty'
}

function convertNumber(n) {
    if (n < 21 || n % 10 === 0) {
        return conversionTable[n]
    } else {
        let onesCol = n % 10
        let tensCol = Math.floor(n / 10) * 10
        return conversionTable[tensCol] + ' ' + conversionTable[onesCol]
    }
}

function timeWord(givenTime) {
    if (givenTime === '00:00') {
        return 'midnight'
    }

    if (givenTime === '12:00') {
        return 'noon'
    }

    let givenHours = +(givenTime[0] + givenTime[1])
    let givenMinutes = +(givenTime[3] + givenTime[4])