// Modified by Nathan Wang for CS262
import React, { useState } from "react";
import {
  Text,
  StyleSheet,
  View,
  FlatList,
  Alert,
  TouchableWithoutFeedback,
  Keyboard,
} from "react-native";

import Header from "./components/header";
import TodoItem from "./components/todoItem";
import AddTodo from "./components/addTodo";

export default function App() {
  const [todos, setTodos] = useState([
    { text: "buy coffee", key: "1" },
    { text: "create an app", key: "2" },
    { text: "play on the switch", key: "3" },
  ]);

  const pressHandler = (key) => {
    setTodos((prevTodos) => {
      return prevTodos.filter((todo) => todo.key != key);
    });
  };

  const submitHandler = (text) => {
    //validates text input to make sure text is more than 3 chars
    if (text.length > 3) {
      setTodos((prevTodos) => {
        return [
          {
            text: text,
            key: Math.random().toString(),
          },
          ...prevTodos,
        ];
      });
    } else {
      //if text length is < 4, then display an alert
      Alert.alert("OOPS!", "TODOS must be over 3 characters long.", [
        { text: "Understood", onPress: () => console.log("Alert Closed") },
      ]);
    }
  };
  return (
    <TouchableWithoutFeedback>
      <View style={styles.container}>
        <Header />
        <View style={styles.content}>
          <AddTodo submitHandler={submitHandler} />
          <View style={styles.list}>
            <FlatList
              data={todos}
              renderItem={({ item }) => (
                <TodoItem item={item} pressHandler={pressHandler} />
              )}
            />
          </View>
        </View>
      </View>
    </TouchableWithoutFeedback>
  );
}

// Modify the styles for our app
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
  },
  content: {
    padding: 40,
  },
  list: {
    marginTop: 20,
  },
});
