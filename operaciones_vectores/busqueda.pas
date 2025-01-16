/*
a. Dado un vector de enteros de a lo sumo 500 valores, realice un módulo que reciba dicho vector y un valor
 n y retorne si n se encuentra en el vector o no.
*/

program agregar;

type 
dimF := 500;
vector = array [1..dimF] of integer;

procedure leerNumero(n:integer); // se dispone

procedure cargarValores(var v:vector; var dimL:integer); // se dispone

function buscarValor(v:vector; valor:integer; dimL:integer)
var 
 posicion:integer;
 esta:boolean;
begin 
 esta := false;
 pos := 1; // comenzamos buscando por la pos. 1.
 while(pos <= dimL) and (esta = false)do 
 begin
  if(v[pos] = valor) then esta := true 
  else 
   pos := pos + 1;
 end
  buscarValor := esta;
end


var
v:vector;
dimL:integer; 
valor:integer;
begin 
cargarValores(v,dimL);
read(valor);
buscarValor(v,valor,dimL);
end.