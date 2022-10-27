

let maxSpeed = 10;
let maxDelay = 50;
let maxCreateDelay = 400;
let maxArr = [
    "max0",
    "max1",
    "max2",
    "max3",
    "max4",
    "max5",
];



function clearCanvas(){

    // Remove title, start button text, and start button
    $(title).html("")
    $(startText).html("")
    $(startButton).remove()

    // Remove background image
    document.getElementById("canvas").style.backgroundImage='none';

    initializeCanvas();

}

function initializeCanvas(){
    $("#useRoad").attr("href", "#road")
    $("#drawYMarker1").attr("href", "#yellowMarker1")
    $("#drawYMarker2").attr("href", "#yellowMarker2")
    $("#drawWMarker1").attr("href", "#whiteMarker1")
    $("#drawWMarker2").attr("href", "#whiteMarker2")

    $("#useMax6").attr("href", "#max6")

    addRandomMax();
}

function addRandomMax(){

    // Goes through the max array
    // Gets a random  X value between 100 and 1000
    // Gets a random Y value between 50 and 700
    
    for(var i = 0; i < maxArr.length; i++){
        let randX = Math.floor(Math.random() * 1000);
        let randY = Math.floor(Math.random() * 700) - 500;

        // Makes sure max can't escape prison
        if(randX < 0){
            randX = randX + randX * 2
        }else if(randX >= 930){
            randX = randX - 150
        }



        // console.log(randY)
        let cur = maxArr[i]
        $("#" + cur).attr("x", randX)
        $("#" + cur).attr("y", randY)

        $("#animateTagMax" + i).attr("xlink:href", "#" + maxArr[i])
        $("#animateTagMax" + i).attr("from", randY)
        $("#animateTagMax" + i).attr("to", 700 - randY)

        $("#animateMax" + i).attr("href", "#" + cur)        // console.log(randX)

    }
    setInterval(changePosition, 20)
}

function changePosition(){

    // to pop max idea:
    // in first line for loop make everything visible
    // after loop make the function to hover or whatever
    for(var i = 0; i < maxArr.length; i++){
        let cur = maxArr[i]
        // $("#" + cur).attr("visibility", "visible")

        let randX = Math.floor(Math.random() * 1000);
        let randY = Math.floor(Math.random() * 700) - 500;

        // Makes sure max can't escape prison
        if(randX < 0){
            randX = randX + randX * 2
        }else if(randX >= 930){
            randX = randX - 150
        }
        
        // issue: maxes y doesnt update with animate tag
        // somehow update the y value so i can make if statement
        let maxY = $("#max" + i).attr("y");
        if(maxY > 700){
            console.log(maxY)
            console.log("True")
            $("#" + cur).attr("x", randX)
            $("#" + cur).attr("y", randY)
    
            $("#animateTagMax" + i).attr("xlink:href", "#" + maxArr[i])
            $("#animateTagMax" + i).attr("from", randY)
            $("#animateTagMax" + i).attr("to", 700 - randY)
        }
    }
}

function popMax(e){
    
}
// function moveMax(){
//     for(var i = 0; i < maxArr.length; i++){
//         let cur = maxArr[i]

//     }
// }


// function collisionHandler(e){}
// for(var i = 0; i < maxArr.length; i++){
//     let maxY = parseInt($("#" + maxArr[i]).attr("y"))
//     console.log(maxY)
//     while(maxY < 750){
//         setTimeout(maxY += 5, 10)
//         $("#" + maxArr[i]).attr("y", maxY)
//         console.log(maxY)
//     }
// }