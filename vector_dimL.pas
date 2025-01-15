program vector_dimL_dimF;
// Cargar un vector con dimL. (Hasta que num sea = 50)
// Imprimir el vector
type 
dimF = 200;
vector = array[1..dimF] of integer;

procedure cargarValores(var v:vector; var dimL:integer)
var 
 num:integer; // numero que vamos a leer.
begin
dimL := 0; // inicializo la dimL en 0
read(num);
while(dimL < dimF) and (num <> 50)
 begin
   v[dimL] := num; // cargamos el num.
   read(num);
 end
end

var 
dimL:integer;
v:vector;
begin 
cargarValores(v,dimL);
end.
