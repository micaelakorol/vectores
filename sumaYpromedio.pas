// Suma y promedio de todos los valores de un vector.
program ejercicioVector;

type 

vector = array [1..100] of integer;

procedure cargarVector(var v:vector)
var 
valor:integer;
i:integer;
begin 
 for i := 1 to 100 do 
 begin 
  read(valor); // leo el valor
  v[i] := valor; // se lo cargo en la posicion i.
 end
end

function sumarValoresV(v:vector):integer
 var 
  i,suma:integer;
 begin
  for i := 1 to 100 do 
  begin
   suma := suma + v[i]; 
  end 
   sumarValoresV := suma; // retorno.
 end

// Sumar todos los elementos del array. Dividir la suma por la cantidad de elementos (100 elementos del array)

 function calcularPromedio(sumaTotal:integer):real
 begin 
  calcularPromedio := sumaTotal / 100; // retorno.
 end



var
v:vector; 
sumaTotal:integer;
promedio:real;
begin 
cargarVector(v);
sumaTotal := sumarValoresV(v); // lo que retorna la funcion lo guardo en sumaTotal.
write(sumaTotal); 
promedio := calcularPromedio(sumaTotal);
write(promedio);
end.