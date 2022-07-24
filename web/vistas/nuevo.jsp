<%-- 
    Document   : nuevo
    Created on : 6/07/2022, 05:41:20 PM
    Author     : EliasSan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/nuevo.css">
        <title>Nuevo registro</title>
    </head>
    <body>
        <h1 class="text-center m-3">Agrega un nuevo alumno</h1>
        <div class="formulario">
            <div class="row">
                <div class="col col">
                    
                    <form action="SAlumnos" method="POST">

                        <label for="inputMatri">Matricula</label>
                        <input type="text"   class="forms-control" name="tfMatricula" id="inputMatri" placeholder="Matricula"> 
                        <label for="inputName">Nombre del alumno</label>
                        <input type="text"   class="forms-control" name="tfNombre" id="inputName" placeholder="Nombre">
                        <label for="inputApellidos">Apellidos</label>
                        <input type="text"   class="forms-control" name="tfApellidos" id="inputApellidos" placeholder="Apellidos">
                        <label for="inputDdi">DDI</label>
                        <input type="number" class="forms-control" name="tfDdi" id="inputDdi" placeholder="" > 
                        <label for="inputDwi">DWI</label>
                        <input type="number" class="forms-control" name="tfDwi" id="inputdwi" placeholder="">
                        <label for="inputEcbd">ECBD</label>
                        <input type="number" class="forms-control" name="tfEcbd" id="inputEcbd" placeholder="">

                        <button type="submit" name="accion" value="agregar" class="btn-fm">Agregar</button>
                        
                        <a class="btn btn-secondary" href="SAlumnos">Regresar</a>
                    </form>
                </div>
            </div>
        </div>

        
    </body>
</html>
