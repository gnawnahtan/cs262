# CS 262 - Homework 3: Information Systems

This [homework exercise](https://cs.calvin.edu/courses/cs/262/kvlinden/09is/homework.html) is based on Prof. Vander Linden's monopoly-client repository
[here](https://cs.calvin.edu/courses/cs/262/kvlinden/06hci/homework.html).

Notes

- The database used in this homework is from my [lab09](https://github.com/gnawnahtan/cs262/tree/master/lab09) found on Heroku

## Questions

- What are the (active) URLs for your data service?

  - Found in [monopolyService.js] (https://github.com/gnawnahtan/cs262/tree/master/homework3/service/), we see that the active "URLs" are the following:
    - https://shrieking-catacombs-33411.herokuapp.com/
    - https://shrieking-catacombs-33411.herokuapp.com/players
    - https://shrieking-catacombs-33411.herokuapp.com/players/:id
    - https://shrieking-catacombs-33411.herokuapp.com/playerGame

- Which of these endpoints implement actions that are idempotent (put get delete)? nullipotent (post)?

  - The ones that are idempotent are the ones that `post` and `delete`, so "/players/:id"
  - The ones that are nullipotent are the ones that `put` and `get`, so "/", "/players", "/players:id", and "/playerGame"

- Is the service RESTful? If not, why not? If so, what key features make it RESTful.

  - Yes, it's RESTful because it supports the following features through Heroku:
    1. resource methods like `GET`, `POST`, `PUT`, `DELETE` (the service for this homework supports CRUD)
    2. it's stateless (doesn't use login sessions)
    3. it gives error messages
    - For example, when there was a typo in my `get` function, the error message "internal service error" showed up and I was able to fix it.

- Is there any evidence in your implementation of an impedance mismatch?
  - Hopefully not, at least there aren't any that I'm aware of. From my understanding, my implementation is all object-relational and not object-oriented. Furthermore, using SQL prevents me from using OOP styles.
