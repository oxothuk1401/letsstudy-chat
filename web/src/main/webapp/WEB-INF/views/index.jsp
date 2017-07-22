<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY главная</title>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<header class="marginBottom40px">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="row">
                    <div class="col-xs-12 col-md-8 col-md-offset-2">
                        <p class="headerP"><local:message code="index.mainText"/></p>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-12 col-md-6 text-center">
                        <button type="button" class="btn btn-default marginBottom15px" id="regTeacher"><local:message
                                code="index.reg.teacher"/>
                        </button>
                        <%--<c:if test="${requestScope.error}">--%>
                            <%--<h4 style="color: red;"> <local:message code="index.autoriz.user.error.duplicate"/></h4>--%>
                        <%--</c:if>--%>
                    </div>

                    <!-- Modal for teacher-->
                    <div class="modal fade" id="teacherModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- teacher Modal content-->
                            <div class="modal-content">
                                <div class="modal-header modalHeaderStyle">
                                    <p class="fontSize24px text-left"><local:message code="index.teacher"/></p>
                                    <p class="text-center fontSize30px"><local:message
                                            code="index.createAnAccount"/></p>
                                    <div class="text-center">
                                        <img src="/resources/images/icons/gplus.png"
                                             class="btn padding0 marginRight20px">
                                        <img src="/resources/images/icons/vkontakte.png"
                                             class="btn padding0 marginRight20px">
                                        <img src="/resources/images/icons/facebook.png"
                                             class="btn padding0 marginRight20px">
                                    </div>
                                </div>
                                <div class="modal-body modalBodyStyle">
                                    <form role="form" action="/regist_teacher" method="POST">
                                        <div class="form-group">
                                            <p id="teacherEmailMess">.</p>
                                            <input type="email" class="form-control" name="teachEmail" id="teachEmail"
                                                   onkeyup="doAjaxTeacher()"
                                                   placeholder="<local:message code="index.placeholder.email"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="teachName" id="teachName"
                                                   placeholder="<local:message code="index.placeholder.username"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="teachPsw" id="teachPsw"
                                                   placeholder="<local:message code="index.placeholder.password"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="confirmTeachPsw"
                                                   placeholder="<local:message code="index.placeholder.password_conf"/>"
                                                   required>
                                        </div>
                                        <input type="hidden" name="role" value="teacher">
                                        <button type="submit" class="btn btn-block btnBlack"><local:message
                                                code="index.createAnAccount"/></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal for autorization-->
                    <div class="modal fade" id="autorizationModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- autorization Modal content-->
                            <div class="modal-content">
                                <div class="modal-header modalHeaderStyle">
                                    <p class="text-center fontSize30px"><local:message code="index.authorize"/></p>
                                    <div class="text-center">
                                        <img src="/resources/images/icons/gplus.png"
                                             class="btn padding0 marginRight20px">
                                        <img src="/resources/images/icons/vkontakte.png"
                                             class="btn padding0 marginRight20px">
                                        <img src="/resources/images/icons/facebook.png"
                                             class="btn padding0 marginRight20px">
                                    </div>
                                </div>
                                <div class="modal-body modalBodyStyle">
                                    <form role="form" action="/autorization" method="POST">
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="autEmail" id="autEmail"
                                                   placeholder="<local:message code="index.placeholder.email"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="autPsw" id="autPsw"
                                                   placeholder="<local:message code="index.placeholder.password"/>"
                                                   required>
                                        </div>
                                        <button type="submit" class="btn btn-block btnBlack"><local:message
                                                code="index.logIn"/></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-6  text-center">
                        <button type="button" class="btn btn-default marginBottom15px" id="regStudent"><local:message
                                code="index.reg.student"/>
                        </button>
                        <%--<c:if test="${requestScope.error}">--%>
                            <%--<h4 style="color: red;"> <local:message code="index.autoriz.user.error.duplicate"/></h4>--%>
                        <%--</c:if>--%>
                    </div>

                    <!-- Modal for student-->
                    <div class="modal fade" id="studentModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- student Modal content-->
                            <div class="modal-content">
                                <div class="modal-header modalHeaderStyle">
                                    <p class="fontSize24px text-left"><local:message code="index.student"/></p>
                                    <p class="text-center fontSize30px"><local:message
                                            code="index.createAnAccount"/></p>
                                    <div class="text-center">
                                        <img src="/resources/images/icons/gplus.png"
                                             class="btn padding0 marginRight20px">
                                        <img src="/resources/images/icons/vkontakte.png"
                                             class="btn padding0 marginRight20px">
                                        <img src="/resources/images/icons/facebook.png"
                                             class="btn padding0 marginRight20px">
                                    </div>
                                </div>
                                <div class="modal-body modalBodyStyle">
                                    <form role="form" action="/regist_user" method="POST">
                                        <div class="form-group">
                                            <p id="userEmailMess">.</p>
                                            <input type="email" class="form-control" name="userEmail" onkeyup="doAjax()"
                                                   id="userEmail"
                                                   placeholder="<local:message code="index.placeholder.email"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="userName" id="userName"
                                                   placeholder="<local:message code="index.placeholder.username"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="userPsw" id="userPsw"
                                                   placeholder="<local:message code="index.placeholder.password"/>"
                                                   required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="confirmUserPsw"
                                                   placeholder="<local:message code="index.placeholder.password_conf"/>"
                                                   required>
                                        </div>
                                        <input type="hidden" name="role" value="user">
                                        <button type="submit" id="sub1" class="btn btn-block btnBlack"><local:message
                                                code="index.createAnAccount"/></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<section id="section1" class="marginBottom15px fontSize18px">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12 text-center">
                <p class="section1Header"><local:message code="index.text1"/></p>
            </div>
            <div class="col-md-12 text-center marginBottom15px">
                <div class="row">
                    <div class="col-xs-4 col-md-4"><local:message code="index.effectively"/></div>
                    <div class="col-xs-4 col-md-4"><local:message code="index.interesting"/></div>
                    <div class="col-xs-4 col-md-4"><local:message code="index.practical"/></div>
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-12 col-md-6 col-md-offset-6">
                        <div class="row">
                            <div class="col-xs-12 col-md-12 marginBottom15px">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <p>ИЗУЧАЙТЕ ЯЗЫК В ЛЮБОМ МЕСТЕ В ЛЮБОЕ ВРЕМЯ</p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="marginBottom15px">Постройте график обучения с учетом своего стиля
                                            жизни и степени загруженности. Все, что вам нужно, – это интернет, вебкамера
                                            и гарнитура.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12 marginBottom15px">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <p>ЖИВОЕ ОБЩЕНИЕ С НОСИТЕЛЕМ ЯЗЫКА</p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="marginBottom15px">С нами сотрудничают коренные жители Лондона, США,
                                            Канады и т.д., с сертификатами CELTA/TEFL.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12 marginBottom15px">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <p>ИНДИВИДУАЛЬНЫЙ ПОДХОД В ОБУЧЕНИИ</p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="marginBottom15px">У нас нет шаблонных уроков, так как ход каждого
                                            урока выстраивается с учетом пожеланий студента и конкретно поставленных
                                            задач.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="section2" class="marginBottom15px text-center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12 marginBottom15px">
                <p class="h3"><strong>Наши преподаватели – высококвалифицированные профессионалы со всего мира</strong>
                </p>
            </div>
            <div class="col-xs-12 col-md-12 marginBottom15px">
                <div class="row">
                    <div class="col-xs-12 col-md-6 marginBottom15px bgStyleWhite">
                        <div class="row">
                            <div class="col-xs-7 col-md-9">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12 marginBottom15px">
                                        <div class="row">
                                            <div class="col-xs-7 col-md-4">
                                                <img src="/resources/images/teacher/teacher2.png">
                                            </div>
                                            <div class="col-xs-5 col-md-8">
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12">
                                                        <p class="teacherName text-left">Лиза <img
                                                                src="images/icons/hurt.png"></p>
                                                    </div>
                                                    <div class="col-xs-12 col-md-12 text-left">
                                                        <div class="row">
                                                            <div class="col-xs-6 col-md-3">
                                                                <img src="/resources/images/icons/calendar3.png"
                                                                     class="btn padding0">
                                                            </div>
                                                            <div class="col-xs-6 col-md-3">
                                                                <img src="/resources/images/icons/playVideo2.png"
                                                                     class="btn padding0">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12 marginBottom15px grey fontSize16px">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12">
                                                <p class="text-left">Язык родной: <span
                                                        class="styleForTags">русский</span></p>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <p class="text-left">Язык преподавания: <span class="styleForTags">английский</span>
                                                    <span class="styleForTags">немецкий</span></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="text-left"><span class="styleForTags">ЦТ</span> <span
                                                class="styleForTags">Бизнес</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-3">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <img src="/resources/images/icons/ratingStars.png" class="marginBottom15px">
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12">
                                                <p class="grey">Цена за 60мин.</p>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <p class="fontSize18px"><strong>$20. 00 USD</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12">
                                                <p class="grey">30 мин. пробный урок</p>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <p class="fontSize18px"><strong>бесплатно</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-5" marginBottom15px>
                        <div class="row">
                            <div class="col-xs-12 col-md-12 bgStyleGrey">
                                <p class="styleForPfoto">ФОТО</p>
                            </div>
                            <div class="col-xs-12 col-md-12 bgStyleWhite2">
                                <div class="row paddingLeft20px">
                                    <div class="col-xs-12 col-md-12">
                                        <p class="text-left fontSize24px">Лиза <img
                                                src="/resources/images/icons/ratingStars.png" class="paddingLeft30px">
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="text-left">Язык родной: <span class="styleForTags">русский</span></p>
                                        <p class="text-left">Язык преподавания: <span
                                                class="styleForTags">английский</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <button type="button" class="btn btn-default btnBlack">ПРОСМОТРЕТЬ ВСЕХ</button>
            </div>
        </div>
    </div>
</section>

<section id="section3" class="marginBottom15px fontColorForSection3 text-center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <p class="fontSize30px">КАК ЭТО РАБОТАЕТ</p>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="row fontSize18px">
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>ЗАРЕГИСТРИРУЙТЕСЬ</p>
                        <p>пройдите процедуру бесплатной регистрации</p>
                    </div>
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>ВЫБЕРИТЕ ПРЕПОДАВАТЕЛЯ</p>
                        <p>используйте фильтры для быстрого поиска</p>
                    </div>
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>СОГЛАСУЙТЕ ДАТУ И ВРЕМЯ</p>
                        <p>отправьте сообщение преподавателю и согласуйте время и дату</p>
                    </div>
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>ПОЛУЧАЙТЕ ЗНАНИЯ</p>
                        <p>обучайтесь у преподавателя, выполняйте задания и рекомендации</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@ include file="include/footer.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/emailVerification.js"></script>
</body>
</html>