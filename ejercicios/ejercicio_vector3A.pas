/* 
Realizar un programa que lea y almacene la información de 400 alumnos ingresantes a la Facultad de
Informática de la UNLP en el año 2020. De cada alumno se lee: nro de inscripción, DNI, apellido, nombre y
año de nacimiento. 
Una vez leída y almacenada toda la información, calcular e informar:
a) El porcentaje de alumnos con DNI compuesto sólo por dígitos pares.
 */

 program vector_de_registros;

 type 

 alumno = record 
 nro:integer;
 dni:integer;
 apellido:integer;
 nombre:string;
 anio:integer;

 vector = array[1..400] of alumno;

 procedure leerAlumnos(a:alumno)
 begin 
  read(a.nro);
  read(a.dni);
  read(a.apellido);
  read(a.nombre);
  read(a.anio);
 end;

// Añade los alumnos al vector de registros.
 procedure agregarAlumnos(var v:vector)
 var 
  a:alumno;
  i:integer;
  begin
   for i := 1 to 400 do 
   begin 
    leerAlumnos(a);
    v[i] := a;
   end;
  end

  function calcularPorcentaje(v:vector):real
  var 
   i,dniPar:integer;
   porcentaje:real;
  begin 
   dniPar := 0;
   for i := 1 to 400 do 
   begin
   if(descomponerDNI(v[i].dni)) then // si la funcion retorna true; hay un dni par.
   begin
    dniPar := dniPar + 1;
    end
   end
   porcentaje := dniPar / 400 * 100;
   calcularPorcentaje := porcentaje;
  end


  function descomponerDNI(dni:integer):boolean
  var 
   digito:integer;
   par:integer;
   impar:integer;
  begin
   par := 0;
   impar := 0;
   while dni <> 0 do 
   begin
    digito := dni mod 10;
    if (digito mod 2 = 0) then  
     par := par + 1;
     else 
      impar := impar + 1;
    dni := dni div 10;
   end
    if impar = 0 then descomponer := true;
    else 
     descomponer := false;
  end

var 
v:vector;
begin 
agregarAlumnos(v);
calcularPorcentaje(v); // inciso a
end
