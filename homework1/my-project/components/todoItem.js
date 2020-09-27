import React from "react";
import { StyleSheet, TouchableOpacity, Text, View } from "react-native";
import { MaterialIcons } from "@expo/vector-icons";

export default function TodoItem({ pressHandler, item }) {
  return (
    <TouchableOpacity onPress={() => pressHandler(item.key)}>
      <View>
        <Text style={style.item}>{item.text}</Text>
      </View>
    </TouchableOpacity>
  );
}

const style = StyleSheet.create({
  item: {
    padding: 16,
    marginTop: 16,
    borderColor: "#bbb",
    borderWidth: 2,
    borderStyle: "dotted",
    borderRadius: 10,
  },
});