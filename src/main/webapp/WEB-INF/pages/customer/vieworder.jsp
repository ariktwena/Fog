<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  ~ Copyright (c) 2020. Team CoderGram
  ~
  ~ @author Emil Elkjær Nielsen (cph-en93@cphbusiness.dk)
  ~ @author Sigurd Arik Twena Nielsen (cph-at89@cphbusiness.dk)
  ~ @author Jacob Lange Nielsen (cph-jn352@cphbusiness.dk)
  --%>

<c:set var="order" value="${requestScope.order}"/>

<h2 class="mt-4 mb-4 text-center">Order ${order.id}</h2>
<br>
<br>
<h5><b>Dato:</b> ${order.orderDate}</h5>

<c:if test ="${order.hasSalesman()}">
    <br><h5><b>Sælger:</b> ${order.salesEmployee.name} (${order.salesEmployee.email})</h5>
</c:if>
<br>
<h5><b>Anmodet længde:</b> ${order.length} cm</h5><br>
<h5><b>Anmodet bredde:</b> ${order.width} cm</h5>
<br>
<br>

<div class="row">
    <div class="col-md-6">
        <div class="" id="sideDrawing">
            <div style="text-align: center">
                ${requestScope.svgSide}
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="" id="topDrawing">
            <div style="text-align: center">
                ${requestScope.svgTop}
            </div>
        </div>
    </div>
</div>
<c:if test ="${order.paid}">
<div class="row">
    <table id="example" name="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <th>Materiale</th>
        <th>Længde</th>
        <th>Antal</th>
        <th>Enhed</th>
        <th>Beskrivelse</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.carport.partslist.partList}" var="part" varStatus="vs">
        <tr>
            <td>
               ${part.material.name}
            </td>
            <td>
                <!-- TODO: Fix -->
                <c:if test ="${part.material.getClass().name == 'Tree'}">
                ${part.material.length}
                </c:if>
            </td>
            <td>
                ${part.amount}
            </td>
            <td>
               ${part.material.unitString}
            </td>
            <td>
                ${part.description}
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</c:if>