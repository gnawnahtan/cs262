# CS-262 Lab 2: Project Management

Author: Nathan Wang

Date: Sept. 12. 2020

Course: CS-262

## Description

This lab is based on [lab02](https://cs.calvin.edu/courses/cs/262/kvlinden/02management/lab.html)

### App.js

The app takes in an input, sets it as a `name` and outputs "`name` is `age` years old". Each time the user clicks the button "Birthday," the integer 1 is added to `age`, and updates the output to "`name`is `age + 1` years old". Furthermore, clicking the button adds a `key` to the `birthday` list, where it is displayed below the text "`name` is `age` years old".

## Lab Questions

- What is the name of the component in this application?

  - `App` is the name of the parent component.

- Name one prop and one state element in the code.

  - `style` is one prop and `<View>` is one element in the code.

- How are curly braces ({}) used in the JSX code.

  - They're meant for interpolation that allows the content to be read as JavaScript. Furthermore, collections of elements are built using curly braces.

- Identify one anonymous function in the code.

  - One anonymous function is `clickHandler`

- Does the application, when run on either Android or iOS, use HTML and/or CSS?

  - The application uses neither; it uses React.js which is a JavaScript language.
