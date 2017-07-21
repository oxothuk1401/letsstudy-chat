<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY поиск преподователя</title>

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

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/search.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
<div class="container">
    <header class="marginBottom">
        <div class="row">
            <div class="h1 col-xs-12 col-md-3"><strong><a href="index.jsp">LETSSTUDY</a></strong></div>
            <div class="h1 col-xs-12 col-md-6" style="font-size: 25px;">
                <a href="#">
                    <img src="/resources/images/icons/search.png">
                    поиск преподователя
                </a>
            </div>
            <div class="h1 col-xs-12 col-md-3 centered">
                <div class="row">
                    <a href="/show_calendar"><img class="col-xs-3 col-md-3" src="/resources/images/icons/calendar.png"></a>
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/notice.png"></a>
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/message.png"></a>
                    <a href="#"><img class="col-xs-3 col-md-3" src="/resources/images/icons/accaunt.png"></a>
                </div>
            </div>
        </div>
    </header>

    <section>
        <div class="row">
            <div class="col-xs-12 col-md-4">
                <form class="form-search">
                    <div class="row">
                        <div class="col-xs-12 col-md-10" style="padding-bottom: 10px;">
                            <input type="text" class="input-medium search-query searchPanel"
                                   placeholder="поиск преподователя" style="width: 85%;">
                            <button type="submit" class="btn buttonForSearchPanel"><img
                                    src="/resources/images/icons/search2.png"></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4"></div>
            <div class="col-xs-12 col-md-4 searchOption" style="text-align: center;">
                Сортировать по
                <select name="sortBy" class="selectpicker">
                    <option value="rating" selected="">рейтингу</option>
                    <option value="cheap">стоимости (сначала дешевые)</option>
                    <option value="expensive">стоимости (сначала дорогие)</option>
                </select>
            </div>
        </div>
    </section>

    <div class="row">
        <aside class="col-xs-12 col-md-3">
            <div style="padding-bottom: 10px;">
                <h4><strong>Преподает</strong></h4>
                <select name="allLanguages" class="selectpicker" style="border: 1px solid #DBDBDB;">
                    <option value="0">Выберите язык</option>
                    <option value="1">Азербайджанский</option>
                    <option value="2">Албанский</option>
                    <option value="3">Армянский</option>
                    <option value="4">Африкаанс</option>
                    <option value="5">Баскский</option>
                    <option value="6">Белорусский</option>
                    <option value="7">Болгарский</option>
                    <option value="8">Вьетнамский</option>
                    <option value="9">Голландский</option>
                    <option value="10">Греческий</option>
                    <option value="11">Гельский</option>
                    <option value="12">Датский</option>
                    <option value="13">Иврит</option>
                    <option value="14">Игбо</option>
                    <option value="15">Индонезийский</option>
                    <option value="16">Исландский</option>
                    <option value="17">Испанский</option>
                    <option value="18">Кантонский</option>
                    <option value="19">Корейский</option>
                    <option value="20">Латинский</option>
                    <option value="21">Латышский</option>
                    <option value="22">Литовский</option>
                    <option value="23">Монгольский</option>
                    <option value="23">Непальский</option>
                    <option value="24">Норвежский</option>
                    <option value="25">Персидский(фарси</option>
                    <option value="26">Польский</option>
                    <option value="27">Румынский</option>
                    <option value="28">Русский</option>
                    <option value="29">Сербский</option>
                    <option value="30">Словацкий</option>
                    <option value="31">Словенский</option>
                    <option value="32">Татарский</option>
                    <option value="33">Тайский</option>
                    <option value="34">Турецкий</option>
                    <option value="35">Туркменский</option>
                    <option value="36">Украинский</option>
                    <option value="37">Урду</option>
                    <option value="38">Финский</option>
                    <option value="39">Хинди</option>
                    <option value="40">Хорватский</option>
                    <option value="41">Чешский</option>
                    <option value="42">Шведский</option>
                </select>
            </div>

            <div style="padding-bottom: 10px;">
                <h4><strong>Говорит на</strong></h4>
                <div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">
                    <input type="checkbox">Азербайджанский<br>
                    <input type="checkbox">Албанский<br>
                    <input type="checkbox">Армянский<br>
                    <input type="checkbox">Африкаанс<br>
                    <input type="checkbox">Баскский<br>
                    <input type="checkbox">Белорусский<br>
                    <input type="checkbox">Болгарский<br>
                    <input type="checkbox">Вьетнамский<br>
                    <input type="checkbox">Голландский<br>
                    <input type="checkbox">Греческий<br>
                    <input type="checkbox">Гельский<br>
                    <input type="checkbox">Датский<br>
                    <input type="checkbox">Иврит<br>
                    <input type="checkbox">Игбо<br>
                    <input type="checkbox">Индонезийский<br>
                    <input type="checkbox">Исландский<br>
                    <input type="checkbox">Испанский<br>
                    <input type="checkbox">Кантонский<br>
                    <input type="checkbox">Корейский<br>
                    <input type="checkbox">Латинский<br>
                    <input type="checkbox">Латышский<br>
                    <input type="checkbox">Литовский<br>
                    <input type="checkbox">Монгольский<br>
                    <input type="checkbox">Непальский<br>
                    <input type="checkbox">Норвежский<br>
                    <input type="checkbox">Персидский<br>
                    <input type="checkbox">Польский<br>
                    <input type="checkbox">Румынский<br>
                    <input type="checkbox">Русский<br>
                    <input type="checkbox">Сербский<br>
                    <input type="checkbox">Словацкий<br>
                    <input type="checkbox">Словенский<br>
                    <input type="checkbox">Татарский<br>
                    <input type="checkbox">Тайский<br>
                    <input type="checkbox">Турецкий<br>
                    <input type="checkbox">Украинский<br>
                    <input type="checkbox">Урду<br>
                    <input type="checkbox">Финский<br>
                    <input type="checkbox">Хинди<br>
                    <input type="checkbox">Хорватский<br>
                    <input type="checkbox">Чешский<br>
                    <input type="checkbox">Шведский<br>
                </div>
            </div>

            <div style="padding-bottom: 10px;">
                <input type="checkbox"><span class="h4"
                                             style="padding-left: 5px;"><strong>Носитель языка</strong></span>
            </div>

            <div style="padding-bottom: 10px;">
                <h4><strong>Местонахождение</strong></h4>
                <select name="allLanguages" class="selectpicker" style="border: 1px solid #DBDBDB;">
                    <option value="0">Страны</option>
                    <option value="1">Азербайджан</option>
                    <option value="2">Албания</option>
                    <option value="3">Армения</option>
                    <option value="4">Австралия</option>
                    <option value="5">Азербайджан</option>
                    <option value="6">Беларусь</option>
                    <option value="7">Болгария</option>
                    <option value="8">Бразилия</option>
                    <option value="9">Вьетнам</option>
                    <option value="10">Германия</option>
                    <option value="11">Голландия</option>
                    <option value="12">Греция</option>
                    <option value="13">Израиль</option>
                    <option value="14">Индия</option>
                    <option value="15">Иран</option>
                    <option value="16">Исландия</option>
                    <option value="17">Казахстан</option>
                    <option value="18">Испания</option>
                    <option value="19">Корея</option>
                    <option value="20">Латвия</option>
                    <option value="21">Литва</option>
                    <option value="22">Монголия</option>
                    <option value="23">Непал</option>
                    <option value="23">Норвегия</option>
                    <option value="24">Польша</option>
                    <option value="25">Португалия</option>
                    <option value="26">Румыния</option>
                    <option value="27">Сербия</option>
                    <option value="28">Россия</option>
                    <option value="29">Сингапур</option>
                    <option value="30">Словакия</option>
                    <option value="31">Словения</option>
                    <option value="32">США</option>
                    <option value="33">Таиланд</option>
                    <option value="34">Турция</option>
                    <option value="35">Украина</option>
                    <option value="36">Финляндия</option>
                    <option value="37">Финский</option>
                    <option value="38">Хорватия</option>
                    <option value="39">Чехия</option>
                    <option value="40">Швеция</option>
                    <option value="41">Швейцария</option>
                </select>
            </div>

            <div>
                <a id="openCloseParametr" href="#"><h4>Дополнительные параметры</h4></a>
                <div id="blockParametr">
                    <div>
                        <h4><strong>Цена урока</strong></h4>
                        <div class="radio">
                            <label><input type="radio" name="priceRadio">1 - 10$</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="priceRadio">10 - 20$</label>
                        </div>
                        <div class="radio">
                            <label><input type="radio" name="priceRadio">20 - 30$</label>
                        </div>
                    </div>

                    <div style="padding-bottom: 10px;">
                        <h4><strong>Подготовка к экзаменам</strong></h4>
                        <div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">
                            <input type="checkbox">IELTS<br>
                            <input type="checkbox">TOEFL<br>
                            <input type="checkbox">ЦТ<br>
                            <input type="checkbox">ЕГЭ<br>
                        </div>
                    </div>

                    <div style="padding-bottom: 10px;">
                        <h4><strong>Спец.компетенции</strong></h4>
                        <div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">
                            <input type="checkbox">занятия с детьми<br>
                            <input type="checkbox">занятия с подростками<br>
                            <input type="checkbox">бизнес-коммуникация<br>
                            <input type="checkbox">обучение новичков<br>
                        </div>
                    </div>
                </div>

                <div style="text-align: center;">
                    <img src="/resources/images/buttons/btnShow.png" class="btn" id="btnShow">
                </div>
            </div>
        </aside>

        <section class="col-xs-12 col-md-9">
            <!-- 1 card of teacher -->
            <div class="row"
                 style="height: 200px; border-top: 1px solid #DBDBDB; padding-bottom: 10px; margin-bottom: 10px;">
                <div class="col-xs-5 col-md-2" style="padding-top: 20px;">
                    <div style="text-align: center;">
                        <a href="/show_profile" title="Перейти на профиль"><img src="/resources/images/teacher/teacher1.png"></a>
                        <a href="/show_video" title="Показать видео"><img src="/resources/images/icons/playVideo.png" style="position: relative; left: -20px; top: -22px;"></a>
                        <h4 style="margin-top: -15px;">online</h4>
                    </div>
                </div>

                <div class="col-xs-12 col-md-6" style="padding-top: 15px;">
                    <div class="row">
                        <div class="col-xs-9 col-md-10">
                            <p style="font-size: 25px"> Cameron Diaz <span>:flag:</span></p>
                        </div>
                        <div class="col-xs-3 col-md-2">
                            <img src="/resources/images/icons/calendar2.png" class="btn" title="открыть календарь">
                        </div>
                    </div>

                    <p><b>преподает: <span style="color: #3E9DD7;">английский</span> (родной язык)<br>
                        говорит на: <span style="color: #3E9DD7;">английский, русский, чешский</span><br></b>
                        <span style="font-size: 12px; font-weight: 100; color: #9D9D9D">A lazy, incompetent middle school teacher who hates her job,
							her students, and her co-workers is forced to return to teaching to make
							enough money for breast implants after her wealthy fiancé dumps her. </span>
                    </p>
                    <p><b><span style="padding: 4px; background-color: #BABBDF">IELTS</span>
                        <span style="padding: 4px; background-color: #BABBDF">English for lawyers</span>
                        <span style="padding: 4px; background-color: #BABBDF">Business communication</span></b></p>
                </div>

                <div class="col-xs-12 col-md-4" style="padding-top: 20px; text-align: center;">
                    <div class="row">
                        <div id="reviewStars-input" style="padding-bottom: 10px;" class="col-xs-12 col-md-12">
                            <input id="star-4" type="radio" name="reviewStars">
                            <label title="отлично" for="star-4"></label>

                            <input id="star-3" type="radio" name="reviewStars">
                            <label title="хорошо" for="star-3"></label>

                            <input id="star-2" type="radio" name="reviewStars">
                            <label title="нормально" for="star-2"></label>

                            <input id="star-1" type="radio" name="reviewStars">
                            <label title="плохо" for="star-1"></label>

                            <input id="star-0" type="radio" name="reviewStars">
                            <label title="ужасно" for="star-0"></label>
                        </div>
                    </div>

                    <p><span style="font-size: 12px; font-weight: 100; color: #9D9D9D">цена урока</span><b> 10 $ -
                        12$</b></p>
                    <h4 style="color: #1C3075;">бесплатный пробный<br> урок (30 мин)</h4>
                    <div class="row">
                        <div class="col-xs-4 col-md-4"></div>
                        <div class="col-xs-2 col-md-2"><img src="/resources/images/icons/skype.png" class="btn" title="skype"></div>
                        <%--<div class="col-xs-2 col-md-2" id="newMess"><img src="/resources/images/icons/chat.png" class="btn" title="чат"></div>--%>
                        <div class="ol-xs-2 col-md-2 text-center">
                            <button type="button" class="btn btn-default marginBottom15px" id="newMess"><img src="/resources/images/icons/chat.png" title="чат"></button>
                        </div>

                        <!-- Modal for teacher-->
                        <div class="modal fade" id="messModal" role="dialog">
                            <div class="modal-dialog">
                                <!-- teacher Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header modalHeaderStyle">
                                        <p class="text-center fontSize30px">Написать сообщение преподователю</p>
                                    </div>
                                    <div class="modal-body modalBodyStyle">
                                        <form action="/send_mssg" role="form" method="POST" modelattribute="sendMessage">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="message" id="messText" placeholder="ваше сообщение" required>
                                            </div>
                                            <input type="hidden" name="idTeacher" value="2/">
                                            <input type="hidden" name="date" value="2222/">
                                            <input type="hidden" name="username" value="VovaVovaVoava/">
                                            <input type="hidden" name="idStudent" value="1/">
                                            <input type="hidden" name="img" value="teacher4.png">
                                            <button type="submit" class="btn btn-block btnBlack">Отправить сообщение</button>
                                        </form>
                                        <%--<form role="form">--%>
                                            <%--<div class="form-group">--%>
                                                <%--<input type="text" class="form-control" id="messText"--%>
                                                       <%--placeholder="ваше сообщение" required>--%>
                                            <%--</div>--%>
                                            <%--<button type="submit" class="btn btn-block btnBlack">Отправить сообщение--%>
                                            <%--</button>--%>
                                        <%--</form>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 2 card of teacher -->

        </section>
    </div>
</div>

<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/search.js"></script>
</body>
</html>