    <html>
       <head>
    <title>BMI Calculator</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
   <script type="text/javascript">

        function computeBMI() {
            // user inputs
            var height = Number(document.getElementById("height").value);
            var heightunits = document.getElementById("heightunits").value;
            var weight = Number(document.getElementById("weight").value);
            var weightunits = document.getElementById("weightunits").value;


            //Convert all units to metric
            if (heightunits == "inches") height /= 39.3700787;
            if (weightunits == "lb") weight /= 2.20462;

            //Perform calculation

            //        var BMI = weight /Math.pow(height, 2)*10000;
            var BMI = Math.round(weight / Math.pow(height, 2) * 10000);

            //Display result of calculation
            document.getElementById("output").innerText = Math.round(BMI * 100) / 100;

            var output = Math.round(BMI * 100) / 100
            if (output < 18.5)
                document.getElementById("comment").innerText = "Underweight";
            else if (output >= 18.5 && output <= 25)
                document.getElementById("comment").innerText = "Normal";
            else if (output >= 25 && output <= 30)
                document.getElementById("comment").innerText = "Obese";
            else if (output > 30)
                document.getElementById("comment").innerText = "Overweight";
            // document.getElementById("answer").value = output; 
        }
    </script>
     </head>
     <body>
    <h1>Body Mass Index Calculator</h1>
    <p>Enter your height: <input type="text" id="height"/>
        <select type="multiple" id="heightunits">
            <option value="metres" selected="selected">metres</option>
            <option value="inches">inches</option>
        </select>
         </p>
    <p>Enter your weight: <input type="text" id="weight"/>
        <select type="multiple" id="weightunits">
            <option value="kg" selected="selected">kilograms</option>
            <option value="lb">pounds</option>
        </select>
    </p>
    <input type="submit" value="computeBMI" onclick="computeBMI();">
    <h1>Your BMI is: <span id="output">?</span></h1>

    <h2>This means you are: <span id="comment"> ?</span> </h2>
    
    <canvas id="myDoughnutChart" width="400px" height="100px"></canvas>
<script>
    Chart.defaults.global.hover.mode = 'nearest';

    
var ctx = document.getElementById("myDoughnutChart");
var data = {
    labels: [
        "Red",
        "Blue",
        "Yellow"
    ],
    datasets: [
        {
            data: [300, 50, 100],
            backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
            hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ]
        }]
};
    var myDoughnutChart = new Chart(ctx, {
    type: 'doughnut',
    data: data,
    options: {
        hover: {
            // Overrides the global setting
            mode: 'index'
        }
    }
   });

</script>
     </body>

    </html>