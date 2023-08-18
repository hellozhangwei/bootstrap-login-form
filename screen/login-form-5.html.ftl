<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Material Design for Bootstrap</title>
  <!-- MDB icon -->
  <link rel="icon" href="/blfstatic/img/mdb-favicon.ico" type="image/x-icon" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
  <!-- MDB -->
  <link rel="stylesheet" href="/blfstatic/css/bootstrap-login-form.min.css" />
</head>

<body>
  <!-- Start your project here-->

  <style>
    .bg-image-vertical {
      position: relative;
      overflow: hidden;
      background-repeat: no-repeat;
      background-position: right center;
      background-size: auto 100%;
    }

    @media (min-width: 1025px) {
      .h-custom-2 {
        height: 100%;
      }
    }
  </style>
  <section class="vh-100">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6 text-black">

          <div class="px-5 ms-xl-4">
            <i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4" style="color: #709085;"></i>
            <span class="h1 fw-bold mb-0">Logo</span>
          </div>

          <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

            <form style="width: 23rem;" method="post" action="${sri.buildUrl("login").url}">
              <input type="hidden" name="initialTab" value="login">

              <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

              <div class="form-outline mb-4">
<!--                <input type="email" id="form2Example18" class="form-control form-control-lg" />-->
                <input id="login_form_username"
                       class="form-control form-control-lg"
                       required="required"
                       name="username"
                       type="text"
                       value="${(username!'')?html}"
                       placeholder="${ec.l10n.localize('sername')}"
                       aria-label="${ec.l10n.localize('Username')}"
                       <#if username?has_content && secondFactorRequired>disabled="disabled"</#if>
                />
                <label class="form-label" for="login_form_username">Email address</label>
              </div>

              <div class="form-outline mb-4">
<!--                <input type="password" class="form-control form-control-lg" />-->
                <input type="password"
                       name="password"
                       id="login_form_password"
                       required="required"
                       class="form-control form-control-lg"
                       placeholder="${ec.l10n.localize('Password')}"
                       aria-label="${ec.l10n.localize('Password')}"/>
                <label class="form-label" for="login_form_password">Password</label>
              </div>

              <div class="pt-1 mb-4">
                <button class="btn btn-info btn-lg btn-block" type="submit">${ec.l10n.localize("Sign in")}</button>
                <#if expiredCredentials><p class="text-warning text-center">WARNING: Your password has expired</p></#if>
                <#if passwordChangeRequired><p class="text-warning text-center">WARNING: Password change required</p></#if>
              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
              <p>Don't have an account? <a href="#!" class="link-info">Register here</a></p>

            </form>

          </div>

        </div>
        <div class="col-sm-6 px-0 d-none d-sm-block">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img3.webp" alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
        </div>
      </div>
    </div>
  </section>
  <!-- End your project here-->

  <!-- MDB -->
  <script type="text/javascript" src="/blfstatic/js/mdb.min.js"></script>
  <!-- Custom scripts -->
  <script type="text/javascript"></script>
</body>

</html>