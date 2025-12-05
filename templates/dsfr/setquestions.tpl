{if $show_help}
    <div class="fr-alert fr-alert--info fr-mb-md-6v"> <!--dsfr style for info message-->
    </i> {$msg_setquestionshelp|unescape: "html" nofilter}
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
                <input type="password" autocomplete="current-password" name="oldpassword" id="oldpassword" class="fr-input" />
            </div>
        </div>

    {if ($questions_count > 1)}
        {for $q_num = 1 to $questions_count}
            <div class="fr-fieldset__element"> <!--dsfr question-->
                <div class="fr-select-group">
                    <label class="fr-label" for="question{$q_num}">{$msg_question} {$q_num}</label>
                    <select class="fr-select question" id="question{$q_num}" name="question[]">
                        <option value="" selected disabled hidden> Sélectionner une option</option>
                        {foreach from=$msg_questions key=value item=text}
                            <option value="{$value}">{$text}</option>
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
                    <option value="" selected disabled hidden> Sélectionner une option</option>
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
