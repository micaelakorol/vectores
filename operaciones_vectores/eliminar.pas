/*
a. Se dispone de un vector de enteros de a lo sumo 500 valores. Se debe leer un número y eliminar la 
primera ocurrencia de dicho número en el vector. El número seguro existe.
*/

program agregar;

type 
dimF := 500;
vector = array [1..dimF] of integer;

procedure leerNumero(n:integer); // se dispone

procedure cargarValores(var v:vector; var dimL:integer); // se dispone

var 
v:vector;
dimL:integer; // se dispone
valor:integer;
begin 
cargarValores(v,dimL);
end.