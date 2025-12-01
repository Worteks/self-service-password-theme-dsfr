{if $result !== 'sshkeychanged'}
    {if $show_help }
        <div class="fr-alert fr-alert--info fr-mb-md-6v"> <!--dsfr style for info message-->
       {$msg_changesshkeyhelp}
        </div>
    {/if}
    <div class="fr-container fr-background-alt--grey fr-px-md-0 fr-pt-10v fr-pt-md-14v fr-pb-6v fr-pb-md-10v">
    <div class="fr-grid-row fr-grid-row--gutters fr-grid-row--center">
    <div class="fr-col-12 fr-col-md-10 fr-col-lg-9"> <!--dsfr container for large padding-->
    <form action="#" method="post">

        <div class="fr-fieldset__element"> <!--dsfr login-->
            <div class="fr-input-group">
                <label for="login" class="fr-label">{$msg_login}</label>
                <input type="text" name="login" id="login" value="{$login}" class="fr-input" />
            </div>
        </div>

        <div class="fr-fieldset__element"> <!--dsfr password-->
            <div class="fr-input-group">
                <label for="password" class="fr-label">{$msg_password}</label>
                <input type="password" autocomplete="current-password" name="password" id="password" class="fr-input" />
            </div>
        </div>

        <div class="fr-fieldset__element"> <!--dsfr ssh key-->
            <div class="fr-input-group">
                <label for="sshkey" class="fr-label">{$msg_sshkey}</label>
                <input type="text" name="sshkey" id="sshkey" class="fr-input"></input>
            </div>
        </div>

        {if ($use_captcha)}
            {$captcha_html nofilter}
        {/if}

        <div class="fr-fieldset__element"> <!--dsfr submit button-->
            <div class="fr-btns-group--right">
                <button type="submit" class="fr-mt-2v fr-btn fr-btn">
                <i class="fa fa-fw fa-check-square-o"></i> {$msg_submit}
                </button>
            </div>
        </div>

    </form>
    </div>
    </div>
    </div>
{/if}
