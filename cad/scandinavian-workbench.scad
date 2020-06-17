/*

    Scandinavian workbench
    
    By Anton Augustsson
    
    
*/



/*
    ---------- Variables ---------- 
*/

width = 600; 
length = 2000;
height = 900;
thickness = 110;

viseArmWidth = 250;
viseClampingCapacity = 100;
viseArmClampWidth = 60;
clampThickness = 20;
viseLenght = viseClampingCapacity
    +viseArmClampWidth
    +clampThickness;
viseWidth = 200;

legLength = height-thickness/2;
legWidth = 100;
legThickness = 60;

baseExtendsionFromTop = 30;
baseWidth = 140;
baseThickness = 80;
baseLength = width
    +baseExtendsionFromTop;

tailViseLenght = 400;

stretchersLenght = length-tailViseLenght
    +(viseWidth/2-baseWidth/2);
stretchersWidth = legWidth;
stretchersThickness = legThickness-20;
stretchersHeight = 250;

selfLenght=length
    -(tailViseLenght+baseWidth*2
    +viseWidth/2-baseWidth/2);
selfWidth=width
    -baseExtendsionFromTop;
selfThickness=20;

topStudLength1=width+viseLenght
    -baseExtendsionFromTop*2;
topStudLength2=width
    -baseExtendsionFromTop;
topStudWidth=stretchersWidth;
topStudThickness=stretchersThickness;

/*
    ---------- Code ---------- 
*/

// ---------- Leg ----------

// base left
translate([
    viseWidth/2-baseWidth/2,
    -baseExtendsionFromTop,
    0]) 
cube(size = [
    baseWidth,
    baseLength,
    baseThickness]);

// Leg 1
translate([
    viseWidth/2-legWidth/2,
    0,
    0]) 
cube(size = [
    legWidth,
    legThickness,
    legLength]);

// Leg 2
translate([
    viseWidth/2-legWidth/2,
    width-baseExtendsionFromTop
    -legThickness,
    0]) 
cube(size = [
    legWidth,
    legThickness,
    legLength]);


// base right
translate([
    length-baseWidth-tailViseLenght,
    -baseExtendsionFromTop,
    0]) 
cube(size = [
    baseWidth,
    baseLength,
    baseThickness]);

// Leg 3
translate([
    length-tailViseLenght-legWidth
    -(baseWidth/2-legWidth/2),
    0,
    0]) 
cube(size = [
    legWidth,
    legThickness,
    legLength]);

// Leg 4
translate([
    length-tailViseLenght-legWidth
    -(baseWidth/2-legWidth/2),
    width-baseExtendsionFromTop
    -legThickness,
    0]) 
cube(size = [
    legWidth,
    legThickness,
    legLength]);

// stretchers 1
translate([
    0,
    (legThickness/2 
    -stretchersThickness/2),
    stretchersHeight]) 
cube(size = [
    stretchersLenght,
    stretchersThickness,
    stretchersWidth]);

// stretchers 2
translate([
    0,
    width-baseExtendsionFromTop
    -legThickness
    +(legThickness/2 
    -stretchersThickness/2),
    stretchersHeight]) 
cube(size = [
    stretchersLenght,
    stretchersThickness,
    stretchersWidth]);

// Self
translate([
    viseWidth/2-baseWidth/2
    +baseWidth,
    0,
    stretchersHeight
    +stretchersWidth]) 
cube(size = [
    selfLenght,
    selfWidth,
    selfThickness]);




// ---------- Top ----------

// bench top
translate([
    0,
    0,
    height-thickness]) 
cube(size = [
    length,
    width,
    thickness]);

// schould 
translate([
    0,
    -viseLenght,
    height-thickness]) 
cube(size = [
    viseWidth,
    viseLenght,
    thickness]);

// schould vise
translate([
    viseWidth,
    -viseLenght,
    height-thickness]) 
cube(size = [
    viseArmWidth,
    viseArmClampWidth,
    thickness]);

// schould vise
translate([
    viseWidth,
    -viseLenght+80,
    height-thickness]) 
cube(size = [
    viseArmWidth,
    clampThickness,
    thickness]);

// left stud
translate([
    viseWidth/2-topStudThickness/2,
    -viseLenght+baseExtendsionFromTop,
    height-thickness-topStudWidth]) 
cube(size = [
    topStudThickness,
    topStudLength1,
    topStudWidth]);

// left stud
translate([
    length-tailViseLenght-legWidth
    -(baseWidth/2-legWidth/2)
    +(legWidth/2-topStudThickness/2),
    0,
    height-thickness-topStudWidth]) 
cube(size = [
    topStudThickness,
    topStudLength2,
    topStudWidth]);
    


