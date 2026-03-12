{if $prehook_return and $display_prehook_error and $prehook_return > 0}
    <div class="fr-alert fr-alert--warning fr-mb-md-6v"> <!--dsfr style for warning message-->
    {$prehook_output[0]}
    </div>
{/if}

{if $posthook_return and $display_posthook_error and $posthook_return > 0}
    <div class="fr-alert fr-alert--warning fr-mb-md-6v"> <!--dsfr style for warning message-->
    {$posthook_output[0]}
    </div>
{/if}

{if $result !== "passwordchanged"}
    {if $show_help and $source !== "sms"}
            <div class="fr-alert fr-alert--info fr-mb-md-6v"> <!--dsfr style for info message-->
            {$msg_resetbytokenhelp|unescape: "html" nofilter}</div>
    {elseif show_help and $source === "sms"}
            <div class="fr-alert fr-alert--info fr-mb-md-6v"> <!--dsfr style for info message-->
            {$msg_resetbysmshelp|unescape: "html" nofilter}</div>
    {/if}

    {if $result !== "tokenrequired" and $result !== "tokennotvalid"}

        <div class="fr-container fr-background-alt--grey fr-px-md-0 fr-pt-10v fr-pt-md-14v fr-pb-6v fr-pb-md-10v">
        <div class="fr-grid-row fr-grid-row--gutters fr-grid-row--center">
        <div class="fr-col-12 fr-col-md-10 fr-col-lg-9"> <!--dsfr container for large padding-->
            <form action="#" method="post">

            {if $pwd_show_policy !== "never" and $pwd_show_policy_pos === 'above'}
                <div class="fr-fieldset__element"> <!--password policy-->
                {include file="policy.tpl"}
                </div>
            {/if}


            <input type="hidden" name="token" value="{$token}" />

            <div class="fr-fieldset__element"> <!--dsfr login-->
            <div class="fr-input-group">
                <label for="login" class="fr-label">{$msg_login}</label>
                <input type="text" name="login" id="login" value="{$login}" class="fr-input" />
            </div>
            </div>

            <div class="fr-password" style="padding-left: .5rem; padding-right: .5rem;"> <!--dsfr password with display toggle-->
                <label class="fr-password__label fr-label" for="newpassword" class="fr-label">{$msg_newpassword}</label>
                <div class="fr-input-wrap">
                    <input class="fr-password__input fr-input" autocapitalize="off" autocorrect="off" aria-describedby="storybook-password-input-messages" aria-required="true" name="newpassword" autocomplete="new-password" id="newpassword" type="password">
                </div>
                <div class="fr-messages-group" id="storybook-password-input-messages" aria-live="polite">
                </div>
                <div class="fr-password__checkbox fr-checkbox-group fr-checkbox-group--sm">
                    <input aria-label="Afficher le mot de passe" id="newpassword-show" type="checkbox">
                    <label class="fr--password__checkbox fr-label" for="newpassword-show"> Afficher </label>
                </div>
            </div>

            <div class="fr-password" style="padding-left: .5rem; padding-right: .5rem;"> <!--dsfr password with display toggle-->
                <label class="fr-password__label fr-label" for="confirmpassword" class="fr-label">{$msg_confirmpassword}</label>
                <div class="fr-input-wrap">
                    <input class="fr-password__input fr-input" autocapitalize="off" autocorrect="off" aria-describedby="storybook-password-input-messages" aria-required="true" name="confirmpassword" autocomplete="new-password" id="confirmpassword" type="password">
                </div>
                <div class="fr-messages-group" id="storybook-password-input-messages" aria-live="polite">
                </div>
                <div class="fr-password__checkbox fr-checkbox-group fr-checkbox-group--sm">
                    <input aria-label="Afficher le mot de passe" id="confirmpassword-show" type="checkbox">
                    <label class="fr--password__checkbox fr-label" for="confirmpassword-show"> Afficher </label>
                </div>
            </div>

            <div class="fr-fieldset__element"> <!--dsfr submit button-->
                <div class="fr-btns-group--right">
                    <button type="submit" class="fr-mt-2v fr-btn fr-btn">
                        <i class="fa fa-fw fa-check-square-o"></i> {$msg_submit}
                    </button>
                </div>
            </div>

            {if $pwd_show_policy !== "never" and $pwd_show_policy_pos === 'below'}
                <div class="fr-fieldset__element"> <!--password policy-->
                {include file="policy.tpl"}
                </div>
            {/if}

            </form>
        </div>
        </div>
        </div>
    {/if}
{/if}
