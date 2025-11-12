<%-- 
    Document   : login
    Created on : 11 nov 2025, 22:49:07
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <h2 class="text-center mt-5 mb-3">Iniciar Sesion</h2>
    
                    <!-- Mostramos un mensaje de error si existe en el request.
                    El LoginServlet lo define si las credenciales son incorrectas. -->
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger" role="alert">
                            ${error}
                        </div>
                    </c:if>
    
                    <!-- Mostramos un mensaje de error si existe (ej. despues de cerrar sesion) -->
                     <c:if test="${not empty mensaje}">
                        <div class="alert alert-success" role="alert">
                            ${mensaje}
                        </div>
                     </c:if>
    
                     <!-- El formulario envia los datos al LoginServlet (mapeado /login)
                     usando el metodo POST -->
                     <form action="login" method="POST" class="card p-4 shadow-ms">
                        <div class="mb-3">
                            <label for="username" class="form-label">Usuario:</label>
                            <input type="text" class="form-control" id="username" name="username" requiered>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Contraseña:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Entrar</button>
                     </form>
                     <p class="text-center mt-3 text-muted small">
                        Usuario de prueba: <strong>admin</strong> / Contraseña: <strong>1234</strong>
                     </p>
                </div>
            </div>
        </div>
    </body>
</html>
