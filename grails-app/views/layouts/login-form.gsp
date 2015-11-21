<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>Inicia sesión</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${request.contextPath}/login-form/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="${request.contextPath}/login-form/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${request.contextPath}/login-form/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/login-form/assets/plugins/select2/select2_metro.css" />
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/ico" href="${request.contextPath}/stylish/img/favicon.ico"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="${request.contextPath}/login-form/assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
    <!-- PUT YOUR LOGO HERE -->
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <form class="form-vertical login-form" action="dologin" method="post" name="Formulario de ingreso">
        <div class="container">
            <img src="${request.contextPath}/stylish/img/preventrisk-w.png" width="200px" height="auto" />
        </div>
        <h3 class="form-title">Accede a tu cuenta</h3>
        <div class="alert alert-error hide">
            <button class="close" data-dismiss="alert"></button>
            <span>Ingresa tu usuario y contraseña.</span>
        </div>
        <div class="control-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">Usuario</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-user"></i>
                    <input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Usuario" name="login" value="${fieldValue(bean:loginCmd, field:'login')}"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label visible-ie8 visible-ie9">Contraseña</label>
            <div class="controls">
                <div class="input-icon left">
                    <i class="icon-lock"></i>
                    <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Contraseña" name="password"/>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <a href="http://localhost:9090/PreventRisk/home/index" >
                <button id="login-back-btn" type    ="button" class="btn">  <i class="icon-hospital"></i>  Inicio </button>
            </a>
            <button type="submit" class="btn blue pull-right" value="Login" formaction="dologin">
                Ingresar <i class="icon-ambulance m-icon-white"></i>
            </button>

        </div>

        <div class="create-account">
            <p>
                ¿No tienes una cuenta aún?&nbsp;
                <a href="http://localhost:9090/PreventRisk/user/registro" id="register-btn" >Crear una cuenta</a>
            </p>
        </div>
    </form>

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<script src="${request.contextPath}/login-form/assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
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
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>