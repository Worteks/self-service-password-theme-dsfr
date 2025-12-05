<div class="fr-header__menu"> <!-- includes the grey line between logo and nav  -->
<div class="fr-container">

 <nav class="fr-nav" id="navigation-title" role="navigation" aria-label="{$msg_title}">
  <ul class="fr-nav__list">
    <li class="fr-nav__item">
      <a href="index.php"
        {if $action == 'change'}
        aria-current="page"
        {/if}
        class="fr-nav__link"
        >{$msg_title}
      </a>
    </li>

    {if $dsfr_drop_down_menu}
    <li class="fr-nav__item">
      <button id="navigation-dropdown" aria-expanded="false" aria-controls="navigation-dropdown"
      {if $action != 'change'}
      aria-current="page"
      {/if}
      type="button" class="fr-nav__btn"> {$msg_dsfr_drop_down_menu_title} </button>
      <div class="fr-collapse fr-menu" id="navigation-dropdown" aria-label="{$msg_dsfr_drop_down_menu_title}">
      <ul class="fr-menu__list">
    {/if}

      {if $use_questions}
      <li class={if $dsfr_drop_down_menu} "fr-menu__item" {else} "fr-nav__item"'{/if}>
        <a href="?action=resetbyquestions"
        data-content="{$msg_changehelpquestions|strip_tags:false}"
        class="fr-nav__link"
        {if $action == 'resetbyquestions' or $action == 'setquestions'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-question-circle me-2"></i> {$msg_menuquestions}</a> <!-- style="justify-content:left" surcharge du style pour que l'icône le texte restent collés quand le menu s'empile | le if aria-current sert mettre un syle particulier pour signaler que c'est la page en cours -->
      </li>

      {/if}
      {if $use_tokens}
      <li class={if $dsfr_drop_down_menu} "fr-menu__item" {else} "fr-nav__item"'{/if}>
        <a href="?action=sendtoken"
        data-content="{$msg_changehelptoken|strip_tags:false}"
        class="fr-nav__link"
        {if ($action == 'resetbytoken' and $source != 'sms') or $action == 'sendtoken'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-envelope me-2"></i> {$msg_menutoken}</a>
      </li>

      {/if}
      {if $use_sms}
      <li class={if $dsfr_drop_down_menu} "fr-menu__item" {else} "fr-nav__item"'{/if}>
        <a href="?action=sendsms"
        data-content="{$msg_changehelpsms|strip_tags:false}"
        class="fr-nav__link"
        {if ($action == 'resetbytoken' and $source == 'sms') or $action == 'sendsms'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-mobile me-2"></i> {$msg_menusms}</a>
      </li>

      {/if}
      {if $change_sshkey}
      <li class={if $dsfr_drop_down_menu} "fr-menu__item" {else} "fr-nav__item"'{/if}>
        <a href="?action=changesshkey"
        data-content="{$msg_changehelpsshkey|strip_tags:false}"
        class="fr-nav__link"
        {if $action == 'changesshkey'}
        aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-terminal"></i> {$msg_menusshkey}</a>
      </li>

      {/if}
      {if $change_custompwdfield}
      {foreach from=$change_custompwdfield item=custompwdfield key=key}
      <li class={if $dsfr_drop_down_menu} "fr-menu__item" {else} "fr-nav__item"'{/if}>
        <a href="?action=changecustompwdfield&custompwdindex={$key}"
        data-content="{$msg_changehelpcustompwdfield|strip_tags:false|cat:$custompwdfield.label}"
        class="fr-nav__link"
        {if $action == 'changecustompwdfield' and $key == $custompwdindex and $result !== "unknowncustompwdfield" }aria-current="page"{/if}
        style="justify-content:left"
        ><i class="fa fa-fw fa-terminal"></i> {$msg_menucustompwdfield|cat:$custompwdfield.label} </a>
      </li>

      {/foreach}
      {/if}
    {if $dsfr_drop_down_menu}
        </ul>
      </div>
    </li>
    {/if}

    </ul>
  </nav>
</div>
</div>
