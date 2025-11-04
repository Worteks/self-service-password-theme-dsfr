
</div>
{if $display_footer}

<!--<footer class="fr-footer" role="contentinfo" id="footer">
    <div class="fr-container">
        <div class="fr-footer__body">
            <div class="fr-footer__brand fr-enlarge-link">
                <p class="fr-logo">{$msg_dsfr_entity_name nofilter}</p>
            </div>
            <div class="fr-footer__content">
                <div>LDAP Tool Box Self Service Password - version {$version}</div>
            </div>
        </div>
        <div class="fr-footer__bottom">
            <ul class="fr-footer__bottom-list">
                <li class="fr-footer__bottom-item">
                    <a class="fr-footer__bottom-link" href="#">Plan du site</a>
                </li>
                <li class="fr-footer__bottom-item">
                    <a class="fr-footer__bottom-link" href="#">Accessibilité : non/partiellement/totalement conforme</a>
                </li>
                <li class="fr-footer__bottom-item">
                    <a class="fr-footer__bottom-link" href="#">Mentions légales</a>
                </li>
            </ul>
        </div>
    </div>
</footer>-->

<footer class="fr-footer" role="contentinfo" id="footer">
    <div class="fr-container">
        <div class="fr-footer__body">
            <div class="fr-footer__brand fr-enlarge-link">
                  <p class="fr-logo">{$msg_dsfr_entity_name nofilter}</p>
            </div>
            <div class="fr-footer__content">
                <div>{$msg_dsfr_site_name}</div>
            </div>
            <div class="fr-footer__content">
                {if $dsfr_footer_content_links}
                  <ul class="fr-footer__content-list">
                    {foreach $dsfr_footer_content_links as $footer_link}
                    <li class="fr-footer__content-item">
                      <a class="fr-footer__content-link" href="{$footer_link.url}" target="_blank" rel="noopener external">{$msg_dsfr_footer_link_{$footer_link.id}}</a>
                    </li>
                    {/foreach}
                  </ul>
              {/if}
            </div>
        </div>

        <div class="fr-footer__bottom">
            <ul class="fr-footer__bottom-list">
                {foreach $dsfr_footer_bottom_links as $footer_link}
                <li class="fr-footer__bottom-item">
                    <a class="fr-footer__bottom-link" href="{$footer_link.url}">{$msg_dsfr_footer_link_{$footer_link.id}}</a>
                </li>
                {/foreach}
                <li class="fr-footer__bottom-item">
                    <button data-fr-opened="false" aria-controls="display-modal" type="button" id="footer__bottom-link--display" class="fr-btn--display fr-btn" data-fr-js-modal-button="true">Paramètres d'affichage</button>
                </li>

            </ul>
        </div>

    </div>
</footer>

<dialog id="display-modal" class="fr-modal" aria-labelledby="display-modal-title" data-fr-js-modal="true">
      <div class="fr-container fr-container--fluid fr-container-md">
        <div class="fr-grid-row fr-grid-row--center">
          <div class="fr-col-12 fr-col-md-6 fr-col-lg-4">
            <div class="fr-modal__body" data-fr-js-modal-body="true" style="--modal-max-height: 1238px;">
              <div class="fr-modal__header">
                <button aria-controls="display-modal" title="Fermer" type="button" id="button-2301" class="fr-btn--close fr-btn" data-fr-js-modal-button="true">
                  Fermer
                </button>
              </div>
              <div class="fr-modal__content">
                <p id="display-modal-title" class="fr-modal__title">
                  Paramètres d’affichage
                </p>

                <div id="fr-display" class="fr-display" data-fr-js-display="true">
                  <fieldset class="fr-fieldset" id="display-fieldset" aria-labelledby="display-fieldset-legend display-fieldset-messages">
                    <legend class="fr-fieldset__legend--regular fr-fieldset__legend" id="display-fieldset-legend">
                      Choisissez un thème pour personnaliser l’apparence du
                      site.
                    </legend>

                    <div class="fr-fieldset__element">
                      <div class="fr-radio-group fr-radio-rich">
                        <input value="light" type="radio" id="fr-radios-theme-light" name="fr-radios-theme">

                        <label class="fr-label" for="fr-radios-theme-light">
                          Thème Clair
                        </label>

                        <div class="fr-radio-rich__pictogram">
                          <svg aria-hidden="true" class="fr-artwork" viewBox="0 0 80 80" width="80px" height="80px">
                            <use class="fr-artwork-decorative" href="vendor/dsfr/artwork/pictograms/environment/sun.svg#artwork-decorative"></use>
                            <use class="fr-artwork-minor" href="vendor/dsfr/artwork/pictograms/environment/sun.svg#artwork-minor"></use>
                            <use class="fr-artwork-major" href="vendor/dsfr/artwork/pictograms/environment/sun.svg#artwork-major"></use>
                          </svg>
                        </div>
                      </div>
                    </div>

                    <div class="fr-fieldset__element">
                      <div class="fr-radio-group fr-radio-rich">
                        <input value="dark" type="radio" id="fr-radios-theme-dark" name="fr-radios-theme">

                        <label class="fr-label" for="fr-radios-theme-dark">
                          Thème Sombre
                        </label>

                        <div class="fr-radio-rich__pictogram">
                          <svg aria-hidden="true" class="fr-artwork" viewBox="0 0 80 80" width="80px" height="80px">
                            <use class="fr-artwork-decorative" href="vendor/dsfr/artwork/pictograms/environment/moon.svg#artwork-decorative"></use>
                            <use class="fr-artwork-minor" href="vendor/dsfr/artwork/pictograms/environment/moon.svg#artwork-minor"></use>
                            <use class="fr-artwork-major" href="vendor/dsfr/artwork/pictograms/environment/moon.svg#artwork-major"></use>
                          </svg>
                        </div>
                      </div>
                    </div>

                    <div class="fr-fieldset__element">
                      <div class="fr-radio-group fr-radio-rich">
                        <input value="system" type="radio" id="fr-radios-theme-system" name="fr-radios-theme">

                        <label class="fr-label" for="fr-radios-theme-system">
                          Système

                          <span class="fr-hint-text">Utilise les paramètres système</span>
                        </label>

                        <div class="fr-radio-rich__pictogram">
                          <svg aria-hidden="true" class="fr-artwork" viewBox="0 0 80 80" width="80px" height="80px">
                            <use class="fr-artwork-decorative" href="vendor/dsfr/artwork/pictograms/system/system.svg#artwork-decorative"></use>
                            <use class="fr-artwork-minor" href="vendor/dsfr/artwork/pictograms/system/system.svg#artwork-minor"></use>
                            <use class="fr-artwork-major" href="vendor/dsfr/artwork/pictograms/system/system.svg#artwork-major"></use>
                          </svg>
                        </div>
                      </div>
                    </div>

                    <div class="fr-messages-group" id="display-fieldset-messages" aria-live="polite"></div>
                  </fieldset>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
</dialog>

{/if}
<div id="ltb-component" hidden>ssp</div>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="module" src="vendor/dsfr/dsfr.module.min.js"></script>
<script src="js/self-service-password.js"></script>
<script src="js/ppolicy.js"></script>
<script type="module" src="vendor/dsfr/dsfr.module.min.js"></script>
<script type="text/javascript" nomodule src="vendor/dsfr/dsfr.nomodule.min.js"></script>
{if $captcha_js}
{$captcha_js nofilter}
{/if}
{if ($questions_count > 1)}
<script src="js/jquery.selectunique.js"></script>
<script>$(document).ready(function() { $('.question').selectunique(); })</script>
{/if}
</body>
</html>



