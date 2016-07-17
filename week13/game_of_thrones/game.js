var fs = require('fs');

function fileActions(err, file) {
    if (err) {
        throw err;
    }

 function jonSnowFunction(item, index) {
       	return item.description.indexOf("Jon") !== -1
    }

 function highlyRated(episode) {
            return episode.rating > 8.5;
     }

    function myFunction(item, index) {
        // string interpolation in javascript
        console.log(`Title : ${item.title} Episode: ${item.episode_number}`);
        console.log(`Description : ${item.description}`);
        console.log(`Rating : ${item.rating} ${"*".repeat(item.rating)}`);
    }

    var episodes = JSON.parse(file);
    var sorted_episodes = episodes.sort(function(a, b) {
        return a.episode_number - b.episode_number;
    });

    var  filtered_episodes = episodes
    							.filter(highlyRated)
    							.filter(jonSnowFunction)

    filtered_episodes.forEach(myFunction);

    filtered_episodes.forEach(jonSnowFunction)
}



fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);