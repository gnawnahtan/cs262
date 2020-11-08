import React, { useEffect, useState } from 'react';
import { ActivityIndicator, StyleSheet, View, Text, TouchableOpacity, FlatList } from 'react-native';
import { globalStyles } from '../styles/global';
import Card from '../shared/card';

export default function Home({ navigation }) {
    //code for homework02, referenced Prof. VL's monopoly-client repo
    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]);
    useEffect(() => {
        fetch('https://shrieking-catacombs-33411.herokuapp.com/playerGame') //modified this for homework3
            .then((response) => response.json())
            .then((json) => setData(json))
            .catch((error) => console.error(error))
            .finally(() => setLoading(false));
      }, []);

     return (
        <View style={globalStyles.container}>
          {isLoading ? <ActivityIndicator/> : (
              <FlatList
                  data={data}
                  keyExtractor={({ score }, index) => score.toString()}
                  renderItem={({ item }) => (
                    <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
                    <Card>
                    <Text style={globalStyles.titleText}>{item.score}</Text>
                    </Card>
                    </TouchableOpacity>
                  )}
              />
          )}
        </View>
    );

    //commenting out my code from lab05

    // const [reviews, setReviews] = useState([
    //     { title: 'Zelda, Breath of Fresh Air', rating: 5, body: 'lorem ipsum', key: '1' },
    //     { title: 'Gotta Catch Them All (again)', rating: 4, body: 'lorem ipsum', key: '2' },
    //     { title: 'Not So "Final" Fantasy', rating: 3, body: 'lorem ipsum', key: '3' },
    // ]);

    // return (
    //     <View style={globalStyles.container}>
    //         <FlatList data={data} renderItem={({ item }) => (
    //             <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
    //                 <Card>
    //                     <Text style={globalStyles.titleText}>{ item.title }</Text>
    //                 </Card>
    //             </TouchableOpacity>
    //         )} />
    //     </View>
    // );
}
