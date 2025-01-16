/* a. Se dispone de un vector de enteros de a lo sumo 500 valores. Realice un programa que lea un numero
y lo agregue al vector. El número debe ser distinto de -1.  
*/

program agregar;

type 
dimF := 500;
vector = array [1..dimF] of integer;

procedure leerNumero(n:integer); // se dispone

procedure cargarValores(var v:vector; var dimL:integer); // se dispone

procedure agregarAlVector(var v:vector; dimL:integer; pude:boolean; valor:integer)
begin
pude := false; 
if (dimL +1 < dimF) then 
begin
 pude := true;
 dimL := dimL + 1;
 v[dimL] := valor; 
end 
end

var 
v:vector;
dimL:integer; // se dispone
valor:integer; // valor a agregar al vector
pude:boolean;
begin 
cargarValores(v, dimL);
read(valor);
agregarAlVector(v,dimL,pude,valor);
if(pude) then write('Valor agregado al vector');
end.