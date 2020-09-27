//modified by Nathan Wang for CS262
import React from "react";
import { createStackNavigator } from "@react-navigation/stack";

import Home from "../screens/home";
import ReviewDetails from "../screens/reviewDetails";

const Stack = createStackNavigator();
export default function HomeStack() {
  return (
    <Stack.Navigator
      screenOptions={{ headerStyle: { backgroundColor: "#ddd" } }}
    >
      <Stack.Screen
        name="Home"
        component={Home}
        options={{ title: "GameZone" }}
      />
      <Stack.Screen
        name="Review Deets"
        component={ReviewDetails}
        options={{ title: "GameZone" }}
      />
    </Stack.Navigator>
  );
}
