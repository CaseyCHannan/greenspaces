# README

[![Codeship Status for CaseyCHannan/greenspaces](https://app.codeship.com/projects/c8540d30-4826-0137-8eb8-7a137bae9b7c/status?branch=master)](https://app.codeship.com/projects/337741)

Greenspaces

A site that allows users to see ratings and features of green spaces. Users can search for and view green spaces by the neighborhood they are in, the type of space they are, or via a keyword search. Additionally, users can add their own reviews and vote on the helpfulness of other users' reviews.

Drew Baker
Michael Wellman
Paige Kiefner
Romina Karim
Casey Hannan

Ruby 2.4.5

Back end in Ruby on Rails, with a react front end.

In production, the database is seeded using an API provided by the City of Boston.
It populates the database with all publicly owned green spaces greater than two acres inside Boston’s city limits.

In development, users and reviews are seeded using the Faker gem.

Green Spaces is currently in production on Heroku
http://greenspaces.herokuapp.com/
