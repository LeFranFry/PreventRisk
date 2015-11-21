<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>Edita tus datos en PreventRisk</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${request.contextPath}/login-form/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/style--responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/themes/blue.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${request.contextPath}/login-form/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/login-form/assets/plugins/select2/select2_metro.css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="${request.contextPath}/login-form/assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/ico" href="${request.contextPath}/stylish/img/favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">



<!-- BEGIN LOGO -->
<div class="logo">
    <g:hasErrors bean="${user}">
        <div class="errors">
            <g:renderErrors bean="${user}"></g:renderErrors>
        </div>
    </g:hasErrors>
    <!-- PUT YOUR LOGO HERE -->
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">

<!-- BEGIN MODIFY FORM -->
    <form class="form-vertical registry-form"  action="doModify" method="POST" name="Formulario de actualizacion">
        <g:if test="${flash.message}">
            <div class="alert-message warning">
             <a class="message" ></a>
             <p><strong>Error!</strong> ${flash.message}</p>

             </div>
        </g:if>
        <div class="container" >
            <img src="${request.contextPath}/stylish/img/preventrisk-w.png" width="200px" height="auto" />
        </div>
        <h3 >Modifica tus datos</h3>
        <p>Ingrese sus datos a continuación:</p>
    <div class="control-group">
        <label class="control-label visible-ie8 visible-ie9">Usuario</label>
        <div class="controls">
            <div class="input-icon left">
                <i class="icon-user"></i>
                <input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Usuario" name="login" value="${user?.login}"/>
            </div>
        </div>
    </div>
        <div class="control-group ">
            <label class="control-label visible-ie8 visible-ie9">Nombre</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-font"></i>
                    <input class="m-wrap placeholder-no-fix" type="text" placeholder="Nombre" name="firstName" value="${user?.firstName}"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label visible-ie8 visible-ie9">Apellido</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-font"></i>
                    <input class="m-wrap placeholder-no-fix" type="text" placeholder="Apellido" name="lastName" value="${user?.lastName}"/>
                </div>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label visible-ie8 visible-ie9">Ingresar clave vieja</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-ok"></i>
                    <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Contraseña anterior" name="vieja" value="${params?.vieja}"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label visible-ie8 visible-ie9">Clave</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-lock"></i>
                    <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Contraseña nueva" name="password" value="${user?.password}"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label visible-ie8 visible-ie9">Confirmar clave nueva</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-ok"></i>
                    <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Confirma tu nueva contraseña" name="confirm" value="${params?.confirm}"/>
                </div>
            </div>
        </div>

        <div class="form-actions">
            <a href="http://localhost:9090/PreventRisk/home/index" >
                <button id="modify-back-btn" type="button" class="btn">  <i class="icon-hospital"></i>  Inicio </button>
            </a>
            <button type="submit" id="modify-submit-btn" class="btn blue pull-right" value="modify" formaction="doModify">
                Modificar datos <i class="icon-ok m-icon-white"></i>
            </button>


        </div>
    <div class="form-actions">
        <button type="submit" id="delete" class="btn green pull-right"  value="delete" formaction="doDelete">
            Eliminar cuenta <i class="icon-remove   m-icon-white"></i>
        </button>


    </div>
    </form>
    <!-- END REGISTRATION FORM -->
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->   <script src="${request.contextPath}/login-form/assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${request.contextPath}/login-form/assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
<!--[if lt IE 9]>
	<script src="${request.contextPath}/login-form/assets/plugins/excanvas.min.js"></script>
	<script src="${request.contextPath}/login-form/assets/plugins/respond.min.js"></script>
	<![endif]-->
<script src="${request.contextPath}/login-form/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${request.contextPath}/login-form/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${request.contextPath}/login-form/assets/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${request.contextPath}/login-form/assets/scripts/app.js" type="text/javascript"></script>
<script src="${request.contextPath}/login-form/assets/scripts/login-soft.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        App.init();
        Login.init();
    });
</script>
</body>
<!-- END BODY -->
</html>