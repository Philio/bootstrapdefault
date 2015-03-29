<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-brand"><a href="{$U_HOME}">{'Home'|@translate}</a>{$LEVEL_SEPARATOR}<a href>{'Identification'|@translate}</a></div>
        </div>
    </div>
</nav>

{include file='infos_errors.tpl'}

<div class="container">
    <form action="{$F_LOGIN_ACTION}" method="post" name="login_form" class="form-horizontal">
        <div class="panel panel-primary">
            <div class="panel-heading">
                {'Connection settings'|@translate}
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">{'Username'|@translate}</label>
                    <div class="col-sm-4">
                        <input tabindex="1" class="form-control" type="text" name="username" id="username" maxlength="40">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">{'Password'|@translate}</label>
                    <div class="col-sm-4">
                        <input tabindex="2" class="form-control" type="password" name="password" id="password" maxlength="25">
                    </div>
                </div>
                {if $authorize_remembering }
                <div class="form-group">
                    <label class="checkbox-inline col-sm-offset-2">
                        <input tabindex="3" type="checkbox" name="remember_me" id="remember_me" value="1"> {'Auto login'|@translate}
                    </label>
                </div>
                {/if}
                <div class="col-sm-offset-2">
                    {if isset($U_REGISTER)}
                        <a href="{$U_REGISTER}" title="{'Register'|@translate}" class="pwg-state-default pwg-button">
                            {'Register'|@translate}
                        </a>
                    {/if}
                    {if isset($U_LOST_PASSWORD)}
                        <a href="{$U_LOST_PASSWORD}" title="{'Forgot your password?'|@translate}" class="pwg-state-default pwg-button">
                            {'Forgot your password?'|@translate}
                        </a>
                    {/if}
                </div>
            </div>
        </div>
        <input type="hidden" name="redirect" value="{$U_REDIRECT|@urlencode}">
        <input tabindex="4" type="submit" name="login" value="{'Submit'|@translate}" class="btn btn-default">
    </form>
</div>

<script type="text/javascript"><!--
    document.getElementById('username').focus();
//--></script>
