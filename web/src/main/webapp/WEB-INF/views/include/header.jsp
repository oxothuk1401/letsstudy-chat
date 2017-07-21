<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<div class="top">
    <div class="logo navbar-fixed-top navbar-inverse">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="${pageContext.request.contextPath}/"><img
                            src="${pageContext.request.contextPath}/resources/images/temporary/logo-white_small.png"></a>
                </div>
                <div class="col-sm-2">
                    <a href="${pageContext.request.contextPath}/chat"><p style="color: white"><local:message code="header.chat"/></p></a>

                </div>
                <div class="col-sm-2">
                    <a href="${pageContext.request.contextPath}/search"><p style="color: white"><local:message code="header.seacrh"/></p></a>

                </div>
                <div class="col-sm-2">
                    <a href="${pageContext.request.contextPath}/payment"><p style="color: white"><local:message code="header.payment"/></p></a>
                </div>
                <div class="col-sm-2">
                    <div class="col-xs-12 col-md-6  text-center">
                        <button type="button" class="btn" id="autorization"><local:message code="index.authorize"/></button>
                    </div>
                </div>
                <div class="col-sm-2">
                   <span style="float: right">
                       <a href="?lang=en"><img src="/resources/images/icons/en.jpg" alt="en"></a>
				        <a href="?lang=ru"><img src="/resources/images/icons/rus.jpg" alt="rus"></a>
                   </span>
                </div>
            </div>
        </div>

    </div>
</div>
<br>
<br>
