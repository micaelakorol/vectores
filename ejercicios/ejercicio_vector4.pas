// Hallar el elementoMaximo y elementoMinimo de un vector de 100 números enteros.

program vectorMinYMax;

type 
vector = array[1..100] of integer;

procedure cargarValores(var v:vector)
var 
 i,valor:integer;
 begin
  for i := 1 to 100 do 
  begin 
   read(valor);
   v[i] := valor;
  end 
 end

 function hallarMax(v:vector):integer
 var 
  i,max:integer;
 begin 
 max := -9999;
 for i := 1 to 100 do 
 begin
  if (v[i] > max) then max := v[i];
 end
  hallarMax := max;
 end

 function hallarMin(v:vector):integer
 var 
  i,min:integer;
 begin 
 min := 9999;
 for i := 1 to 100 do 
 begin
  if (v[i] < min) then min := v[i];
 end
  hallarMin := min;
 end
  
var
v:vector;
maximo,minimo:integer; 
begin 
cargarValores(v)
maximo := hallarMax(v)
write(maximo);
minimo:= hallarMin(v);
write(minimo);
end.