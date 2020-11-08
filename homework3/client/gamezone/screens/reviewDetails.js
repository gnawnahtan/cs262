import React from 'react';
import { StyleSheet, View, Text } from 'react-native';
import { globalStyles } from '../styles/global';

import Card from '../shared/card';

export default function ReviewDetails({ route, navigation }) {
    return (
        <View style={globalStyles.container}>
            <Card>
                {/*Changed the accessed fields to "score", for homework3*/}
                <Text>The score for Luigi is: { route.params.score }</Text>
            </Card>
        </View>
    );
}
