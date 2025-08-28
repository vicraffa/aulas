document.getElementById('open-btn').addEventListener('click', function(){
  document.getElementById('sidebar').classList.toggle('open-sidebar');
});







// setup
// const dataGraficoPolar = {
//     labels: ['Corredor Grãos', 'Corredor Higiene', 'Corredor Bebidas', 'Corredor Doces', 'Corredor Padaria'],
//     datasets: [{
//         label: 'Dataset de exemplo',
//         data: [11000, 9870, 8444, 5545, 12421],
//         backgroundColor: [
//             'rgba(255, 99, 132, 0.5)',
//             'rgba(54, 162, 235, 0.5)',
//             'rgba(255, 206, 86, 0.5)',
//             'rgba(75, 192, 192, 0.5)',
//             'rgba(153, 102, 255, 0.5)'
//         ],
//         borderWidth: 1
//     }]
// };

// const dataGraficoPizza = {
//     labels: ['Categoria 1', 'Categoria 2', 'Categoria 3', 'Categoria 4'],
//     datasets: [{
//         label: 'Dados do gráfico',
//         data: [10, 20, 30, 40], // Valores de cada fatia da pizza
//         backgroundColor: [
//             'rgba(255, 99, 132, 0.2)',
//             'rgba(54, 162, 235, 0.2)',
//             'rgba(255, 206, 86, 0.2)',
//             'rgba(75, 192, 192, 0.2)'
//         ],
//         borderColor: [
//             'rgba(255, 99, 132, 1)',
//             'rgba(54, 162, 235, 1)',
//             'rgba(255, 206, 86, 1)',
//             'rgba(75, 192, 192, 1)'
//         ],
//         borderWidth: 1
//     }]
// }

// const dataGraficoStepped = {
//     labels: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
//     datasets: [
//       {
//         label: 'Dataset',
//         data: [14, 25, 60, 20, 100, 40],
//         fill: false,
//         stepped: true,
//       }
//     ]
//   };

const DATA_COUNT = 5;
const NUMBER_CFG = {count: DATA_COUNT, min: 0, max: 100};

const dataGraficoDoughnut = {
  labels: ['Red', 'Orange', 'Yellow', 'Green', 'Blue'],
  datasets: [
    {
      label: 'Dataset 1',
      data: [23, 45, 32, 11, 70]
    }
  ]
};

// config
// const config1 = {
//     type: 'polarArea',
//     data: dataGraficoPolar,
//     options: {
//         scales: {
//             r: {
//                 beginAtZero: true
//             }
//         }
//     }
// }

// const config2 = {
//     type: 'pie', // Define o tipo de gráfico como pizza
//     data: dataGraficoPizza,
//     options: {
//         responsive: true, // Gráfico se ajusta ao tamanho da tela
//         plugins: {
//             legend: {
//                 position: 'top', // Legenda posicionada no topo
//             }
//         }
//     }
// }

// const config3 = {
//     type: 'line',
//     data: dataGraficoStepped,
//     options: {
//       responsive: true,
//       interaction: {
//         intersect: false,
//         axis: 'x'
//       },
//       plugins: {
//         title: {
//           display: true,
//           text: (ctx) => 'Step ' + ctx.chart.data.datasets[0].stepped + ' Interpolation',
//         }
//       }
//     }
//   };

  const config4 = {
    type: 'doughnut',
    data: dataGraficoDoughnut,
    options: {
      responsive: true,
      plugins: {
        legend: {
          position: 'top',
        },
        title: {
          display: true,
          text: 'Chart.js Doughnut Chart'
        }
      }
    },
  };

  // render
// var meuGraficoPolar = new Chart(
//     document.getElementById('graficoPolar'),
//     config1
// );


// var meuGraficoPizza = new Chart(
//     document.getElementById('graficoPizza'),
//     config2
// );

// var meuGraficoStepped = new Chart(
//     document.getElementById('graficoStepped'),
//     config3
// );

var meuGraficoDoughnut = new Chart(
    document.getElementById('graficoDoughnut'),
    config4
);