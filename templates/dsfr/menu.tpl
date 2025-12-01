<div class="fr-header__menu"> <!-- includes the grey line between logo and nav  -->
<div class="fr-container">
 <button id="header-navigation" aria-expanded="false" aria-controls="header-navigation" aria-current="true" type="button" class="fr-nav__btn">Menu principal</button>
 <nav class="fr-collapse fr-menu" id="header-navigation" role="navigation" aria-label="Menu principal">
    <ul class="fr-menu__list">
      <li class="fr-menu__item">
        <a href="index.php"
        {if $action == 'change'}
        aria-current="page"
        {/if}
        class="fr-nav__link"
        >{$msg_title}
        </a>
      </li>

      {if $use_questions}
      <li class="fr-menu__item">
        <a href="?action=resetbyquestions"
        data-content="{$msg_changehelpquestions|strip_tags:false}"
        class="fr-nav__link"
        {if $action == 'resetbyquestions' or $action == 'setquestions'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-question-circle"></i> {$msg_menuquestions}</a> <!-- style="justify-content:left" surcharge du style pour que l'icône le texte restent collés quand le menu s'empile | le if aria-current sert mettre un syle particulier pour signaler que c'est la page en cours -->
      </li>

      {/if}
      {if $use_tokens}
      <li class="fr-menu__item">
        <a href="?action=sendtoken"
        data-content="{$msg_changehelptoken|strip_tags:false}"
        class="fr-nav__link"
        {if ($action == 'resetbytoken' and $source != 'sms') or $action == 'sendtoken'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-envelope"></i> {$msg_menutoken}</a>
      </li>

      {/if}
      {if $use_sms}
      <li class="fr-menu__item">
        <a href="?action=sendsms"
        data-content="{$msg_changehelpsms|strip_tags:false}"
        class="fr-nav__link"
        {if ($action == 'resetbytoken' and $source == 'sms') or $action == 'sendsms'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-mobile"></i> {$msg_menusms}</a>
      </li>

      {/if}
      {if $change_sshkey}
      <li class="fr-menu__item">
        <a href="?action=changesshkey"
        data-content="{$msg_changehelpsshkey|strip_tags:false}"
        class="fr-nav__link"
        {if ($action == 'changesshkey')}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-terminal"></i> {$msg_menusshkey}</a>
      </li>

      {/if}
      {if $change_custompwdfield}
      {foreach from=$change_custompwdfield item=custompwdfield key=key}
      <li class="fr-menu__item">
        <a href="?action=changecustompwdfield&custompwdindex={$key}"
        data-content="{$msg_changehelpcustompwdfield|strip_tags:false|cat:$custompwdfield.label}"
        class="fr-nav__link"
        {if $action == 'changecustompwdfield' and $key == $custompwdindex and $result !== "unknowncustompwdfield" }aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-terminal"></i> {$msg_menucustompwdfield|cat:$custompwdfield.label} </a>
      </li>

      {/foreach}
      {/if}
    </ul>
  </nav>
</div>
</div>
