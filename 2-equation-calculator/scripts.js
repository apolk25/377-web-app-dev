function pythagorean() {
    let side_a = document.getElementById("side-a").value;
    let side_b = document.getElementById("side-b").value;

    let side_a_squared = Math.pow(side_a, 2);
    let side_b_squared = Math.pow(side_b, 2);

    let add_sides = side_a_squared + side_b_squared;
    let squareRoot = "Solution: " +  Math.sqrt(add_sides)

    document.getElementById('solution1').innerHTML = squareRoot;

    confetti({
        particleCount: 100,
        angle: 60,
        spread: 55,
        origin: { x: 0 }
      });
}

function areaOfTriangle() {
  let base = document.getElementById("base").value;
  let height = document.getElementById("height").value;

  let answer = "Solution: " + 0.5 * (base * height)

  document.getElementById('solution2').innerHTML = answer;

  confetti({
      particleCount: 100,
      angle: 60,
      spread: 55,
      origin: { x: 0 }
    });
}

function areaOfCircle() {
  let radius = document.getElementById("radius").value;

  let circleArea = "Solution: " + 3.14 * (radius * radius);

  document.getElementById('solution3').innerHTML = circleArea;

  confetti({
    particleCount: 100,
    angle: 60,
    spread: 55,
    origin: { x: 0 }
  });
}