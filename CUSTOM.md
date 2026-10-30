# CUSTOM EXTRAS

## Quattro port

These extras are carried forward from the v3 `custom` branch onto upstream `quattro`. The reverted development-environment installer changes are omitted so Quattro keeps its current installer.

The Bash export hook now lives in `config/uwsm/env.d/90-custom-bashrc`, replacing the retired `config/uwsm/env`. For an existing user, copy it to `~/.config/uwsm/env.d/90-custom-bashrc` and log out and back in. Exports in `~/.bashrc` must appear before its non-interactive-shell return to reach GUI applications. Alternatively, put session exports directly in `~/.config/uwsm/env.d/`.

## Standalone CLI PATH

Standalone installers take precedence over mise and npm installations: `~/.local/bin` comes first, followed by `~/.opencode/bin`. Shared configuration lives in `config/shell/`; Bash and Zsh hooks restore this order after prompt and directory-change updates. `config/uwsm/env.d/99-standalone-path.sh` applies the same order to desktop launches after UWSM's mise setup.

For an existing user, copy `config/shell/` to `~/.config/shell/` and the UWSM drop-in to `~/.config/uwsm/env.d/`. Source `~/.config/shell/standalone-bash.sh` at the end of `~/.bashrc`, `~/.config/shell/standalone-zsh.sh` at the end of `~/.zshrc`, and `~/.config/shell/standalone-path.sh` at the end of `~/.bash_profile`. `default/bash_profile` and `default/zshrc` provide templates; they are not automatically installed by the external settings package. New shells pick up the changes immediately; log out and back in for the desktop session.

## AI Apps

```bash
omarchy-webapp-install "Claude" https://claude.ai https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/claude-ai-light.svg
omarchy-webapp-install "Gemini" https://gemini.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/google-gemini.svg
omarchy-webapp-install "NotebookLLM" https://notebooklm.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/notebook-lm.svg
```
## Office Apps

```bash
omarchy-webapp-install "Microsoft Teams" https://teams.microsoft.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/microsoft-teams.svg
omarchy-webapp-install "Microsoft Outlook" https://outlook.office.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/microsoft-outlook.svg
omarchy-webapp-install "Microsoft Todo" https://to-do.office.com/tasks/inbox https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/microsoft-to-do.svg
```

## Work Apps

```bash
omarchy-webapp-install "Quickbase" https://logicalposition.quickbase.com/nav/app/bi4vtu5yy/table/bi4vtu53x/action/td https://www.vectorlogo.zone/logos/quickbase/quickbase-icon.svg
omarchy-webapp-install "Hubspot" https://app.hubspot.com https://www.vectorlogo.zone/logos/hubspot/hubspot-icon.svg
```

# Productivity Apps

```bash
omarchy-webapp-install "LastPass" https://lastpass.com/vault https://www.vectorlogo.zone/logos/lastpass/lastpass-icon.svg
```
## Packages

```bash
aur_install "AzureCli" "azure-cli" ;;
aur_install "KubeCtl" "kubectl" ;;
aur_install "Helm" "helm" ;;
```
