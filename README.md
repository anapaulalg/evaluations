# Evaluations

This is an evaluation tool for teachers.

This program allows to the admin: create batches, add and delete students, evaluate the students per day (giving a color green, yellow or red and optional remarks) and randomly choose one student. This random system is based on a probability and takes into consideration the last evaluation of each student. The red students have a 50% chance of being chosen, yellow students 33% and green students, 17%.

This project was part of my learning in Codaisseur and was wrote in Ruby on Rails.

# Running application

To run this app, clone the repository and type in the terminal:

```rails db:create db:migrate db:seed```

```rails s```

Visit http://localhost:3000

# Preview

All batches:
![alt text](http://res.cloudinary.com/djxmmaqyo/image/upload/v1510048946/Screenshot_from_2017-11-07_10-56-36_spaetk.png)

Students in a batch:
![alt text](http://res.cloudinary.com/djxmmaqyo/image/upload/v1510048946/Screenshot_from_2017-11-07_10-57-44_vlejrf.png)

Random Student:
![alt text](http://res.cloudinary.com/djxmmaqyo/image/upload/v1510048946/Screenshot_from_2017-11-07_10-58-13_taro1e.png)
