# Sinatra Dynamic Routes Lab

## TEACHER OUTLINE

This lab will test students' abilities to create dynamic routes. They should understand and be able to implement routes that add a string or integer to `params` when a request is made. Create a dynamic route that takes in a location ('/post/:location), returning "Hello from sunny #{location}".

Have student repeat dynamic route creation 5-10 times as a drill.

## Overview
This lab will serve to reinforce your understanding of routes in a Sinatra application. Complete the following tasks in your application controller and get all of the 'learn' tests to pass:

+ Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.

+ Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number. **Note:** Remember that values in params always come in as strings, and your return value for the route should also be a string (use `.to_i` and `.to_s`).

+ Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a string the number of times given.

+ Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts six words and returns a string with the formatted as a sentence.

+ Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided.
For example, going to `/add/1/2` should render `3`. 