<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <div class="text-center">
                <form class="form-signin" action="Login" method="POST" >

                    <input type="hidden" name="target" value="login">

                    <input type="hidden" name="checkoutProcess" value="false">

                    <img class="mb-2" src="../images/logo.png" alt="" width="72" >

                    <h1 class="h3 mb-3 font-weight-normal">Log Ind</h1>

                    <label for="inputEmail" class="sr-only">Email adresse</label>
                    <input type="email" name="email" id="inputEmail" class="form-control" placeholder="E-mailadresse" required="" autofocus="">

                    <label for="inputPassword" class="sr-only">Kodeord</label>
                    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Kodeord" required="">

                    <br>

                    <button class="btn btn-lg btn-primary btn-block" type="submit">
                        Log Ind
                        <svg width="1em" height="1em" viewBox="0 0 16 16" style="margin-top: -3px" class="bi bi-box-arrow-in-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                            <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                        </svg>
                    </button>
                </form>
                <div>
                <c:if test ="${requestScope.messageSignIn != null}">
                    <div class="alert alert-danger" style="padding-bottom: inherit;">
                        <p>${requestScope.messageSignIn}</p>
                    </div>
                </c:if>
                </div>
            </div>
            <a href="Shop">
                <svg width="1em" height="1em" viewBox="0 0 16 16" style="margin-top: -3px" class="bi bi-arrow-bar-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5zM10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5z"/>
                </svg>Tilbage
            </a>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>