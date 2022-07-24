<%-- 
    Document   : edita
    Created on : 6/07/2022, 05:41:54 PM
    Author     : EliasSan
--%>

<%@page import="beans.Alumno"%>
<%@page import="dao.DAOAlumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/editar.css">
        <title>Editar</title>
    </head>
    <body>
        <h1 class="text-center m-3">Modifica los datos</h1>
        <div class="formulario">
            <div class="row">
                <div class="col col">
                    <% 
                      DAOAlumno dao = new DAOAlumno();
                      String matricula = request.getAttribute("matricula").toString();
                      Alumno alumno = dao.buscar(matricula);
                    %>

                    <form action="SAlumnos" method="POST">

                        <label for="inputMatri">Matricula</label>
                        <input type="text"   class="forms-control" name="tfMatricula" id="inputMatri" value="<%=alumno.getMatricula() %>"> 
                        <label for="inputName">Nombre del alumno</label>
                        <input type="text"   class="forms-control" name="tfNombre" id="inputName" value="<%=alumno.getNombre() %>">
                        <label for="inputApellidos">Apellidos</label>
                        <input type="text"   class="forms-control" name="tfApellidos" id="inputApellidos" value="<%=alumno.getApellidos() %>">
                        <label for="inputDdi">DDI</label>
                        <input type="number" class="forms-control" name="tfDdi" id="inputDdi" value="<%=alumno.getDdi() %>"> 
                        <label for="inputDwi">DWI</label>
                        <input type="number" class="forms-control" name="tfDwi" id="inputdwi" value="<%=alumno.getDwi() %>">
                        <label for="inputEcbd">ECBD</label>
                        <input type="number" class="forms-control" name="tfEcbd" id="inputEcbd" value="<%=alumno.getEcbd() %>">
                        <input type="hidden"   class="forms-control" name="tfMatriculaOld" id="inputMatri" value="<%=alumno.getMatricula() %>">

                        <button type="submit" name="accion" value="Actualizar" class="btn-fm">Editar</button>

                        <a  class="btn btn-secondary" href="SAlumnos">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
