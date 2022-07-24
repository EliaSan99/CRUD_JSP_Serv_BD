<%-- 
    Document   : mostrar
    Created on : 6/07/2022, 05:41:36 PM
    Author     : EliasSan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Alumno"%>
<%@page import="dao.DAOAlumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/mostrar.css">
        <title>Mostrar</title>
    </head>
    <body>
        <h1 class="text-center m-4">Lista de alumnos</h1>
        <a  id="new" class="btn btn-secondary  " href="SAlumnos?accion=nuevo">Nuevo registro</a>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-auto mt-1">
                    <table class="table table-bordered table-hover table-dark">
                        <thead>
                            <tr>
                                <th>Matricula</th>
                                <th>Nombre Completo</th>
                                <th>DDI</th>
                                <th>DWI</th>
                                <th>ECBD</th>
                                <th>Promedio</th>
                                <th colspan="2" >Opciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                DAOAlumno daoAlumno = new DAOAlumno();
                                ArrayList<Alumno> listAlumnos = daoAlumno.mostrar();
                                Alumno alumno = null;
                                for (int i = 0; i < listAlumnos.size(); i++) {
                                    alumno = listAlumnos.get(i);

                            %>
                            <tr>
                                <td><%=alumno.getMatricula()%></td>
                                <td><%=alumno.getNombre() + " " + alumno.getApellidos()%></td>
                                <td><%=alumno.getDdi()%></td>
                                <td><%=alumno.getDwi()%></td>
                                <td><%=alumno.getEcbd()%></td>
                                <td><%=alumno.promediar()%></td>
                                <td><a class="btn btn-warning" href="SAlumnos?accion=editar&matricula=<%=alumno.getMatricula()%>">Editar</a></td>
                                <td><a class="btn btn-danger" href="SAlumnos?accion=eliminar&matricula=<%=alumno.getMatricula()%>">Eliminar</a></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
