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

{if $result !== 'passwordchanged'}
    {if $show_help}
        <div class="fr-alert fr-alert--info fr-mb-md-6v"> <!--dsfr style for info message-->
        {$msg_resetbyquestionshelp|unescape: "html" nofilter}
        {if $question_populate_enable }
            <br /> {$msg_questionspopulatehint}
        {/if}
        </div>
    {/if}

    <div class="fr-container fr-background-alt--grey fr-px-md-0 fr-pt-10v fr-pt-md-14v fr-pb-6v fr-pb-md-10v">
    <div class="fr-grid-row fr-grid-row--gutters fr-grid-row--center">
    <div class="fr-col-12 fr-col-md-10 fr-col-lg-9"> <!--dsfr container for large padding-->
            <form action="#" method="post" class="form-horizontal">

                {if $pwd_show_policy !== "never" and $pwd_show_policy_pos === 'above'}
                    <div class="fr-fieldset__element"> <!--password policy-->
                    {include file="policy.tpl"}
                    </div>
                {/if}


                <div class="fr-fieldset__element">
                    <div class="fr-input-group">
                        <label for="login" class="fr-label">{$msg_login}</label>
                        <input type="text" name="login" id="login" value="{$login}" class="fr-input" />
                    </div>
                </div>

                {if $questions_count > 1}
                    {for $q_num = 1 to $questions_count}

                        <div class="fr-fieldset__element"> <!--dsfr question-->
                            <div class="fr-select-group">
                                <label class="fr-label" for="question{$q_num}">{$msg_question} {$q_num}</label>
                                <select class="fr-select question" id="question{$q_num}" name="question[]">
                                    <option value="" selected disabled hidden> {$msg_dsfr_placeholder_question}</option>
                                    {foreach from=$msg_questions key=value item=text}
                                    <option value="{$value}" {if $question[$q_num-1] == $value}selected="selected"{/if}>{$text}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>

                    <div class="fr-fieldset__element"> <!--dsfr answer-->
                        <div class="fr-input-group">
                            <label for="answer{$q_num}" class="fr-label">{$msg_answer} {$q_num}</label>
                            <input type="text" name="answer[]" id="answer{$q_num}" class="fr-input" />
                        </div>
                    </div>

                    {/for}
                {else}

                <div class="fr-fieldset__element"> <!--dsfr question-->
                    <div class="fr-select-group">
                        <label class="fr-label" for="question">{$msg_question}</label>
                        <select class="fr-select" id="question" name="question">
                            <option value="" selected disabled hidden> {$msg_dsfr_placeholder_question}</option>
                            {foreach from=$msg_questions key=value item=text}
                            <option value="{$value}">{$text}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>


                    <div class="fr-fieldset__element"> <!--dsfr answer-->
                        <div class="fr-input-group">
                            <label for="answer" class="fr-label">{$msg_answer}</label>
                            <input type="text" name="answer" id="answer" class="fr-input" />
                        </div>
                    </div>

                {/if}

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


                {if $pwd_show_policy !== "never" and $pwd_show_policy_pos === 'below'}
                    <div class="fr-fieldset__element"> <!--password policy-->
                    {include file="policy.tpl"}
                    </div>
                {/if}


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
