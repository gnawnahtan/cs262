import React from 'react';
import { StyleSheet, View, Text } from 'react-native';
import { globalStyles } from '../styles/global';

import Card from '../shared/card';

export default function ReviewDetails({ route, navigation }) {
    return (
        <View style={globalStyles.container}>
            <Card>
                {/*Changed the accessed fields to "id", "email", and "name" for homework2*/}
                <Text>{ route.params.id }</Text>
                <Text>{ route.params.email }</Text>
                <Text>{ route.params.name }</Text>
            </Card>
        </View>
    );
}
