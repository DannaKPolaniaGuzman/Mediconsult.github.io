var ctx1 = document.getElementById("graf2").getContext("2d")
var graf2 = new Chart(ctx1, {
    type: 'bar',
                                data: {
                                    labels: ['Asistio', 'No asistio', 'Modicada','Cancelada'],
                                    datasets: [{
                                        label: 'ASISTENCIA',
                                        data: [52,30,30,20],
                                       

                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.2)', //color para rojo
                                            'rgba(54, 162, 235, 0.2)', //color para azul
                                            'rgba(255, 206, 86, 0.2)', //color para amarillo
                                            'rgba(75, 192, 192, 0.2)', //color para verde
                                           
                                        ],
                                        borderColor: [
                                            'rgba(255, 99, 132, 1)',
                                            'rgba(54, 162, 235, 1)',
                                            'rgba(234, 191, 72, 1) ',
                                            'rgba(145, 191, 72, 1)'
                                            
                                        ],
                                        borderWidth: 2
                                    }]
                                },
                                options: {
                                    scales: {
                                        y: {
                                            beginAtZero: true // inicializa la grafica desde 0
                                        }
                                    }
                                }
                            });    
  