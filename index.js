//inicio del primer punto
/*
var Array = [];
alert("Indique desde que numero desa iniciar");
var NumeroInicial = parseInt(prompt());
alert("¿hasta que numero va?");
var NumeroFinal = parseInt(prompt());

for(var i = NumeroInicial; i<= NumeroFinal; i++){
    if(i==2 || i==3 || i==5){
        Array.push(i)
        alert(i es numero primo)
    }
    else if(i%2!=0 && i%3!=0 && i%5!=0){
        Array.push(i)
    }
}
Array.forEach(element => {
    document.writeln(element + " Es primo")
});
*/
//inicio del segundo punto
var TablaInicial = parseInt(prompt("Indique desde que tabla desea ver"));
var TablaFinal = parseInt(prompt("Indique en que numero termina"));
var NumeroInicial = parseInt(prompt("¿Desde que numero comienza?"));
var NumeroFinal = parseInt(prompt("Hasta que numero desea ver"));

for(let i = TablaInicial; i<= TablaFinal; i++){
    for(let ta = NumeroInicial; ta<=NumeroFinal; ta++){
        let resultado = i * ta;
        document.write( +i + " * " + ta +" = "+ resultado + "</br>")
    }
}
