
let maxX = 0;
let maxY = 0;
let maxHits = 0;
let moveSpeed = 20
let maxArr = [
    "max0",
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
    $("#spawnVehicle").attr("href", "#vehicleSym")
    $("#useScore").attr("href", "#scoreText")
    $("#bikeRectUse").attr("href", "#bikeRect")
    addRandomMax();
}




function addRandomMax(){

    // Goes through the max array
    // Gets a random  X value between 100 and 1000
    // Gets a random Y value between 50 and 700
    
    for(var i = 0; i < maxArr.length; i++){
        $("max" + i).html("")
        let randX = Math.floor(Math.random() * 50);
        randX = randX * 20  
        let randY = Math.floor(Math.random() * 35);
        randY = randY * 20

        if(randY > 600){
            randY = 600
        }

        if(randX > 900){
            randX = 900
        }
        $("#maxFollowingRect").attr("x", randX + 20)
        $("#maxFollowingRect").attr("y", randY)
        console.log("Ivan Siew")
        $("#maxRectUse").attr("href", "#maxFollowingRect")
        // console.log(randY)
        let cur = maxArr[i]
        $("#" + cur).attr("x", randX)
        $("#" + cur).attr("y", randY)

        $("#useMax" + i).attr("href", "#" + maxArr[i])

        maxX = randX
        maxY = randY



    }
}


function moveCar(event){
    collisionHandlerv2();
    let aikinsX = document.getElementById("vehicle")
    let carX = parseFloat(aikinsX.getAttribute("x"));
    let aikinsY = document.getElementById("vehicle")
    let carY = parseFloat(aikinsY.getAttribute("y"));

    if(event.which == 100){ // d key
        $("#vehicle").attr("x", carX + moveSpeed)
        $("#bikeRect").attr("x", carX + 40)

    }

    if(event.which == 97){ // a key
        $("#vehicle").attr("x", carX - moveSpeed)
        $("#bikeRect").attr("x", carX)

    }

    if(event.which == 119){ // w key
        $("#vehicle").attr("y", carY - moveSpeed)
        $("#bikeRect").attr("y", carY)

    }

    if(event.which == 115){ // s key
        $("#vehicle").attr("y", carY + moveSpeed)
        $("#bikeRect").attr("y", carY)

    }

}

function collisionHandlerv2(){

    let maxRectX = $("#maxFollowingRect").attr("x")
    let maxRectY =  $("#maxFollowingRect").attr("y")
    let vehicleRectX = $("#bikeRect").attr("x")
    let vehicleRectY = $("#bikeRect").attr("y")
    console.log("Vehicle X: " + vehicleRectX + " Vehicle Y: " + vehicleRectY)

    let maxRect = {x: maxRectX, y: maxRectY, width: 100, height: 75}
    let vehicleRect = {x: vehicleRectX, y: vehicleRectY, width: 40, height: 100}

    if(vehicleRectX > maxRectX - 100 && vehicleRectX < maxRectX + 100 && vehicleRectY > maxRectY - 75 && vehicleRectY < maxRectY + 75){
            maxHits += 1
            $("#scoreText").html("Score: " + maxHits)
            addRandomMax();
        }else{

        }
}

