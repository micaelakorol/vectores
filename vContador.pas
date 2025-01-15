// Realizar un programa que lea números enteros desde teclado hasta que se ingrese el valor-1 (que no
 //debe procesarse) e informe:
 //Por ejemplo, si la secuencia que se lee es: 63 34 99 94 96-1, el programa deberá informar:
 //Número 3: 2 veces
 //Número 4: 2 veces
 //El dígito más leído fue el 9.

 program ejercicioVContador;

 type 
 vector = array [0..9] of integer;

 // Inicializamos las posiciones en 0 del vContador:
 program inicializar(var vContador:vector)
 var 
  i:integer;
  begin
   for i := 1 to 100 do 
   begin 
    vContador[i] := 0; 
   end  
  end 

 procedure cargarValores(var vContador:vector)
 var 
  valor:integer; 
 begin 
  read(valor);  
   while(valor <> -1) do 
   begin 
    descomponer(vContador,valor);
    read(valor);
   end
 end

 procedure descomponer(var vContador:vector, valor:integer)
 var 
  dig:integer; 
  begin
   while valor <> 0 do 
   begin
     dig := valor mod 10; // nos quedamos con el ultimo digito.
     vContador[dig] := vContador[dig] + 1; // en la pos de ese digito, sumamos 1.
     valor := div 10; // elimino el últ. digito.
   end 
  end;

  
procedure informar(vContador:vector)
var 
max,pos, i:integer;
 begin
 max := -9999;
  for i := 0 to 9 do 
   write('Número', i , vContador[i], 'veces') 
   if(vContador[i] > max)then 
    begin
     max := vContador[i] 
     pos := i;
    end 
    write('El digito mas leído fue', pos, max , 'veces');
 end;


 var 
 vContador:vector;
 masLeido:integer;
 begin 
 inicializar(vContador);
 cargarValores(vContador);
 informar(vContador,masLeido);
 end.