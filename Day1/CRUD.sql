Last login: Wed May 17 17:08:45 on ttys000
(base) bhubeshsr@Bhubeshs-MacBook-Air ~ % mongo
zsh: command not found: mongo
(base) bhubeshsr@Bhubeshs-MacBook-Air ~ % mongosh
Current Mongosh Log ID:	6464bcf8497bf36529db1cc4
Connecting to:		mongodb://127.0.0.1:27017/?directConnection=true&serverSelectionTimeoutMS=2000&appName=mongosh+1.8.2
Using MongoDB:		6.0.5
Using Mongosh:		1.8.2

For mongosh info see: https://docs.mongodb.com/mongodb-shell/

------
   The server generated these startup warnings when booting
   2023-05-17T17:01:26.950+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
   2023-05-17T17:01:26.950+05:30: Soft rlimits for open file descriptors too low
------
test> show dbs
admin   40.00 KiB
config  60.00 KiB
local   72.00 KiB
test> use students
switched to db students
students> show dbs
admin   40.00 KiB
config  60.00 KiB
local   72.00 KiB
students> db.studentData.insertOne({
... 	"name": "Hitesh",
... 	"email": "hitesh@hiteshchoudhary.com",
... 	"contact": "9999999999",
... 	"courseCount": 4,
... 	"isVerified": true
... })
{
  acknowledged: true,
  insertedId: ObjectId("6464be6b497bf36529db1cc5")
}
students> db.studentData.find()
[
  {
    _id: ObjectId("6464be6b497bf36529db1cc5"),
    name: 'Hitesh',
    email: 'hitesh@hiteshchoudhary.com',
    contact: '9999999999',
    courseCount: 4,
    isVerified: true
  }
]
students> db.studentData.find().pretty()
[
  {
    _id: ObjectId("6464be6b497bf36529db1cc5"),
    name: 'Hitesh',
    email: 'hitesh@hiteshchoudhary.com',
    contact: '9999999999',
    courseCount: 4,
    isVerified: true
  }
]
students> db.studentData.insertOne({ name : "karan" , email: "kara@gmail.com" }) 
{
  acknowledged: true,
  insertedId: ObjectId("6464c334497bf36529db1cc6")
}
students> db.studentData.find()
[
  {
    _id: ObjectId("6464be6b497bf36529db1cc5"),
    name: 'Hitesh',
    email: 'hitesh@hiteshchoudhary.com',
    contact: '9999999999',
    courseCount: 4,
    isVerified: true
  },
  {
    _id: ObjectId("6464c334497bf36529db1cc6"),
    name: 'karan',
    email: 'kara@gmail.com'
  }
]
students> db.studentData.insertOne({ name : "charan" , email: "chaara@gmail.com" , _id : "123fgh" })
{ acknowledged: true, insertedId: '123fgh' }
students> db.studentData.find()
[
  {
    _id: ObjectId("6464be6b497bf36529db1cc5"),
    name: 'Hitesh',
    email: 'hitesh@hiteshchoudhary.com',
    contact: '9999999999',
    courseCount: 4,
    isVerified: true
  },
  {
    _id: ObjectId("6464c334497bf36529db1cc6"),
    name: 'karan',
    email: 'kara@gmail.com'
  },
  { _id: '123fgh', name: 'charan', email: 'chaara@gmail.com' }
]
students> db.studentData.find().pretty()
[
  {
    _id: ObjectId("6464be6b497bf36529db1cc5"),
    name: 'Hitesh',
    email: 'hitesh@hiteshchoudhary.com',
    contact: '9999999999',
    courseCount: 4,
    isVerified: true
  },
  {
    _id: ObjectId("6464c334497bf36529db1cc6"),
    name: 'karan',
    email: 'kara@gmail.com'
  },
  { _id: '123fgh', name: 'charan', email: 'chaara@gmail.com' }
]
students> 
