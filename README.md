# Evaluations

This is an evaluation tool for teachers.

This program allows to the admin: create batches, add and delete students, evaluate the students per day (giving a color green, yellow or red and optional remarks) and randomly choose one student. This random system is based on a probability and takes into consideration the last evaluation of each student. The red students have a 50% chance of being chosen, yellow students 33% and green students, 17%.

This project was part of my learning in Codaisseur.

# Running application

To run this app, clone the repository and type in the terminal:

-rails db:create db:migrate db:seed

-rails s
