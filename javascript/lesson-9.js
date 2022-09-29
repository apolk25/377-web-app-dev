function makeCar(make, model, mpg, color) {

    let carObject = {
        make: make,
        model: model,
        mpg: mpg,
        color: color,

        displayName: function () {
            return make + model + ' (' + mpg + ' mpg)';
        }
    }

    return carObject;


}


window.onload = function(){


    let carObject1 = makeCar('BMW', 'M3', 23, 'White');
    let carObject2 = makeCar('Mazda', 'CX-9', 25, 'Blue');
    let carObject3 = makeCar('Honda', 'Pilot', 19, 'Black');

    // alert('Ivan Siew has a ' + carObject.color + ' ' + carObject.model)

    let cars = [ carObject1, carObject2, carObject3 ]

    let html = '';
    for (var i = 0; i < cars.length; i++) {

        html += '<li>' + cars[i].displayName() + '</li>';

    }

    document.getElementById('cars').innerHTML = html;
}   