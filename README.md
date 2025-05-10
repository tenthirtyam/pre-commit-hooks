# `pre-commit hooks`

[![License](https://img.shields.io/static/v1?message=MIT&logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGw9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjI0IiBoZWlnaHQ9IjI0Ij4KICA8ZGVmcy8+CiAgPGcgaWQ9IkNhbnZhc18xIiBmaWxsPSJub25lIiBzdHJva2U9Im5vbmUiIHN0cm9rZS1kYXNoYXJyYXk9Im5vbmUiIHN0cm9rZS1vcGFjaXR5PSIxIiBmaWxsLW9wYWNpdHk9IjEiPgogICAgPHRpdGxlPkNhbnZhcyAxPC90aXRsZT4KICAgIDxnIGlkPSJDYW52YXNfMV9MYXllcl8xIj4KICAgICAgPHRpdGxlPkxheWVyIDE8L3RpdGxlPgogICAgICA8ZyBpZD0iR3JhcGhpY18yIj4KICAgICAgICA8cGF0aCBkPSJNIDEyLjc1IDIuNzUgTCAxMi43NSA0LjUgTCAxNC43MjUgNC41IEMgMTUuMDc2IDQuNSAxNS40MTkgNC42MDYgMTUuNzA5IDQuODAzIEwgMTcuNDA2IDUuOTU3IEMgMTcuNDQ3IDUuOTg1IDE3LjQ5NiA2IDE3LjU0NiA2IEwgMjEuNjQ4IDYgQyAyMi4wNjIyMTQgNiAyMi4zOTggNi4zMzU3ODY0IDIyLjM5OCA2Ljc1IEMgMjIuMzk4IDcuMTY0MjEzNiAyMi4wNjIyMTQgNy41IDIxLjY0OCA3LjUgTCAyMC4wNyA3LjUgTCAyMy40MzYgMTUuMTggQyAyMy41NzQ5NjIgMTUuNDk1OTgzIDIzLjQ3OTk3NiAxNS44NjYwMTYgMjMuMjA2IDE2LjA3NiBDIDIzLjEwNiAxNi4xNSAyMy4wMDMgMTYuMjE5IDIyLjg5NiAxNi4yODIgQyAyMi42NDIzNTIgMTYuNDMzMzY3IDIyLjM3ODM2NyAxNi41NjY2OTYgMjIuMTA2IDE2LjY4MSBDIDIxLjIwMTQ4NiAxNy4wNTkyNzcgMjAuMjMwNDI0IDE3LjI1Mjc0MSAxOS4yNSAxNy4yNSBDIDE4LjI2OTk2NSAxNy4yNTMwODYgMTcuMjk5MjI3IDE3LjA1OTk1OSAxNi4zOTUgMTYuNjgyIEMgMTYuMTIyNDc3IDE2LjU2NzY1IDE1Ljg1ODQ3MSAxNi40MzM5NzcgMTUuNjA1IDE2LjI4MiBDIDE1LjQ5ODg4NyAxNi4yMjA1OTQgMTUuMzk2Mzg2IDE2LjE1MzE1IDE1LjI5OCAxNi4wOCBMIDE1LjI5MyAxNi4wNzYgQyAxNS4wMTkwMjQgMTUuODY2MDE2IDE0LjkyNDAzOCAxNS40OTU5ODMgMTUuMDYzIDE1LjE4IEwgMTguNDMxIDcuNSBMIDE3LjU0NSA3LjUgQyAxNy4xOTQgNy41IDE2Ljg1MSA3LjM5NCAxNi41NjEgNy4xOTcgTCAxNC44NjQgNi4wNDMgQyAxNC44MjI3ODEgNi4wMTQ3ODU1IDE0Ljc3Mzk1IDUuOTk5Nzg3NCAxNC43MjQgNiBMIDEyLjc1IDYgTCAxMi43NSAyMC41IEwgMTcuMjM3IDIwLjUgQyAxNy42NTEyMTQgMjAuNSAxNy45ODcgMjAuODM1Nzg2IDE3Ljk4NyAyMS4yNSBDIDE3Ljk4NyAyMS42NjQyMTQgMTcuNjUxMjE0IDIyIDE3LjIzNyAyMiBMIDYuNzYzIDIyIEMgNi4zNDg3ODY0IDIyIDYuMDEzIDIxLjY2NDIxNCA2LjAxMyAyMS4yNSBDIDYuMDEzIDIwLjgzNTc4NiA2LjM0ODc4NjQgMjAuNSA2Ljc2MyAyMC41IEwgMTEuMjUgMjAuNSBMIDExLjI1IDYgTCA5LjI3NSA2IEMgOS4yMjUwNzggNS45OTk5NzUgOS4xNzYzMDEgNi4wMTQ5NTY0IDkuMTM1IDYuMDQzIEwgNy40MzkgNy4xOTcgQyA3LjE0OSA3LjM5NCA2LjgwNiA3LjUgNi40NTUgNy41IEwgNS41NjkgNy41IEwgOC45MzcgMTUuMTggQyA5LjA3MDkyNyAxNS40ODY1MjcgOC45ODU2NyAxNS44NDQ2OSA4LjcyOCAxNi4wNTggQyA4LjY0OCAxNi4xMjMgOC41NjggMTYuMTg0IDguNDE4IDE2LjI4MSBDIDguMTY1MDk5IDE2LjQ0NDc2NyA3LjkwMDM2OSAxNi41ODk1IDcuNjI2IDE2LjcxNCBDIDYuNzIyODE3IDE3LjEyNDMwNSA1Ljc0MjAxMiAxNy4zMzU3NDQgNC43NSAxNy4zMzQgQyAzLjc1Nzk1MiAxNy4zMzYwODggMi43NzcwNzUgMTcuMTI0NjMzIDEuODc0IDE2LjcxNCBDIDEuNTk5NjMxIDE2LjU4OTUgMS4zMzQ5MDEgMTYuNDQ0NzY3IDEuMDgyIDE2LjI4MSBDIC45NzUwNTYyIDE2LjIxMzAxIC44NzE5MDI4IDE2LjEzOTIzMyAuNzczIDE2LjA2IEMgLjUxNzU5NzggMTUuODQ0NDU2IC40MzI0NDk5IDE1LjQ4NzY0NiAuNTYzIDE1LjE4IEwgMy45MyA3LjUgTCAyLjM1MyA3LjUgQyAxLjkzODc4NjQgNy41IDEuNjAzIDcuMTY0MjEzNiAxLjYwMyA2Ljc1IEMgMS42MDMgNi4zMzU3ODY0IDEuOTM4Nzg2NCA2IDIuMzUzIDYgTCA2LjQ1NSA2IEMgNi41MDUgNiA2LjU1NCA1Ljk4NSA2LjU5NiA1Ljk1NyBMIDguMjkxIDQuODAzIEMgOC41ODEgNC42MDUgOC45MjUgNC41IDkuMjc2IDQuNSBMIDExLjI1IDQuNSBMIDExLjI1IDIuNzUgQyAxMS4yNSAyLjMzNTc4NjQgMTEuNTg1Nzg2IDIgMTIgMiBDIDEyLjQxNDIxNCAyIDEyLjc1IDIuMzM1Nzg2NCAxMi43NSAyLjc1IFogTSAyLjE5MyAxNS4xOTggQyAyLjk4MDA0MTUgMTUuNjE2OTkxIDMuODU4MzgxNiAxNS44MzUxMTYgNC43NSAxNS44MzMgQyA1LjY0MTYxODQgMTUuODM1MTE2IDYuNTE5OTU4NSAxNS42MTY5OTEgNy4zMDcgMTUuMTk4IEwgNC43NSA5LjM2OCBaIE0gMTYuNzAzIDE1LjE3NCBDIDE2Ljc4NSAxNS4yMTQgMTYuODc3IDE1LjI1NyAxNi45NzggMTUuMyBDIDE3LjUwOCAxNS41MjMgMTguMjgzIDE1Ljc1IDE5LjI1IDE1Ljc1IEMgMjAuMTMxNTY2IDE1Ljc1MjQ2NSAyMS4wMDIyOCAxNS41NTU1NTQgMjEuNzk3IDE1LjE3NCBMIDE5LjI1IDkuMzY3IFoiIGZpbGw9IndoaXRlIi8+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=&labelColor=5c5c5c&color=1182c3&logoColor=white&label=License&style=for-the-badge)][license]&nbsp;&nbsp;

This repository contains a comprehensive set of Git pre-commit hooks that are specifically designed
to work seamlessly with the `pre-commit` framework. These hooks aim to automate critical tasks such
as code formatting, validation, linting, and other quality assurance checks, ensuring that your code
adheres to best practices and project standards before it is committed to the repository.

By integrating these hooks into your workflow, you can catch and address common issues early in the
development process, reducing the likelihood of bugs and inconsistencies making their way into your
codebase. The pre-commit framework makes it straightforward to configure and enforce these checks
across your team, promoting consistency and improving overall code quality.

The hooks included in this repository cover a wide range of use cases and technologies, supporting
multiple file types and tools. Whether you are working with Terraform, Ansible, Golang, Python, Markdown, or
Bash scripts, you will find hooks tailored to your needs. From formatting and linting to validating
configurations, these hooks help streamline your development process and enforce coding standards.

Hook entrypoints are **bash** scripts (`language: script`). Use a POSIX-like environment with `bash`
available (including **Git for Windows**). The **PSScriptAnalyzer** hook additionally requires
**PowerShell 7+** (`pwsh`) on the `PATH`, which is available on Linux, macOS, and Windows. The
**tsc-noemit**, **eslint**, **prettier**, **prettier-check**, and **jest-related** hooks require
**Node.js** and project-local (or `npx`-resolvable) **TypeScript**, **ESLint**, **Prettier**, and
**Jest** as appropriate. **govulncheck** is a separate Go tool (`go install
golang.org/x/vuln/cmd/govulncheck@latest`). **terrafmt** is installed with Go (`go install
github.com/katbyte/terrafmt@latest`) and uses the same Terraform formatting machinery as the
upstream tool (see its README for toolchain expectations). The **`ansible-lint`** hook expects
[`ansible-lint`][ansible-lint] on your `PATH` (for example `pip install ansible-lint` or your distro package).
The **`markdownlint-cli2`** hook uses `npx` and expects [`markdownlint-cli2`][markdownlint-cli2] as a
project devDependency (or resolvable via `npx`).

## Hooks

The currently supported hooks are listed below, grouped the same way as in `.pre-commit-hooks.yaml`.
Within each section, hooks are sorted **alphabetically by `id`**. Each **`hook-id`** is the value for
`hooks: - id: ...` in `.pre-commit-config.yaml` (see the [pre-commit][pre-commit] documentation).

### Go

- **`go-build`**: Verify that `go build` runs successfully for your Go packages touched by the commit.
- **`go-mod-tidy`**: Runs `go mod tidy` to ensure `go.mod` and `go.sum` are up-to-date.
- **`go-vet`**: Runs [`go vet`][go-vet] `./...` from each affected Go module root.
- **`gofmt`**: Runs `gofmt` on all Go (`*.go` files).
- **`goimports`**: Runs `goimports` on all Go (`*.go`) files.
- **`golangci-lint`**: Runs `golangci-lint` on all Go (`*.go`) files.
- **`govulncheck`**: Runs [`govulncheck`][govulncheck] `./...` from each affected Go module root (known
  vulnerable dependency usage in reachable code).
- **`staticcheck`**: Runs [`staticcheck`][staticcheck] `./...` from each affected Go module root.

### TypeScript / JavaScript

- **`eslint`**: Runs [`eslint --max-warnings=0 --fix`][eslint] via `npx` on staged `*.ts`, `*.tsx`,
  `*.js`, `*.jsx`, and related extensions.
- **`jest-related`**: Runs [`jest --findRelatedTests`][jest] via `npx --no-install jest` with
  `--passWithNoTests` and `--runInBand` on staged `*.ts`, `*.tsx`, `*.js`, and `*.jsx`; skips if there
  is no root **`package.json`** (expects **Jest** installed under `node_modules`).
- **`prettier`**: Runs [`prettier --write`][prettier] via `npx` on staged common web and config files
  (excluding lockfiles such as `package-lock.json`).
- **`prettier-check`**: Runs [`prettier --check`][prettier] via `npx` (no file writes; useful in CI-style
  pipelines alongside or instead of the **`prettier`** hook).
- **`tsc-noemit`**: Runs [`tsc --noEmit`][typescript] via `npx` when `*.ts`, `*.tsx`, or `tsconfig*.json`
  changes; skips if there is no `tsconfig.json` at the repository root (see monorepo note below).

### Python

- **`mypy`**: Runs [`mypy`][mypy] for static type checking on Python (`*.py`) files.
- **`ruff-check`**: Runs [`ruff check --fix`][ruff] on Python (`*.py`) files.
- **`ruff-format`**: Runs [`ruff format`][ruff] on Python (`*.py`) files.
- **`yapf`**: Runs [`yapf`][yapf] on all Python (`*.py`) files.

### Ansible

- **`ansible-lint`**: Runs [`ansible-lint`][ansible-lint] on staged `*.yml`, `*.yaml`, and `*.ansible`
  files (typical playbooks, roles, inventories, and vars). Excludes GitHub Actions workflows (use
  **`actionlint`** there), virtualenvs, `node_modules`, and Ansible collection caches. Non-Ansible YAML
  in the same paths may still be analyzed; narrow with `exclude:` in your own `.pre-commit-config.yaml`
  if needed.

### Terraform / OpenTofu / Terragrunt

- **`terraform-fmt`**: Runs `terraform fmt` on all Terraform (`*.tf`) files.
- **`terraform-validate`**: Runs `terraform validate` on all Terraform (`*.tf`) files.
- **`terrafmt-check`**: Runs [`terrafmt diff --check --quiet`][terrafmt] (no writes; exit codes `2` /
  `4` / `6` for parse vs format vs both, as documented upstream).
- **`terrafmt-fmt`**: Runs [`terrafmt fmt`][terrafmt] on `*.md`, `*.markdown`, and `*.go` files that
  embed Terraform examples (fenced `hcl` / `terraform` / `tf`, or Go string patterns); passes
  [`--fmtcompat`][terrafmt-dispatch] for Go so `fmt.Sprintf` verbs are handled. See
  [Maintain Formatting of Embedded Terraform Provider Examples with terrafmt][terrafmt-dispatch].
- **`terragrunt-hclfmt`**: Runs `terragrunt hclfmt` on all Terragrunt files.
- **`tflint`**: Runs [`tflint`][tflint] on Terraform (`*.tf`) files.
- **`tofu-fmt`**: Runs `tofu fmt` on all OpenTofu (`*.tf`, `*.terraform`) files.
- **`tofu-validate`**: Runs `tofu validate` on all OpenTofu (`*.tf`, `*.terraform`) files.

### Packer

- **`packer-fmt`**: Runs `packer fmt` on all Packer (`*.pkr.*`) files.
- **`packer-validate`**: Runs `packer validate` on all Packer (`*.pkr.*`) files.

### PowerShell

- **`psscriptanalyzer`**: Runs [PSScriptAnalyzer][psscriptanalyzer] via `pwsh` on `*.ps1` files.

### Docker

- **`hadolint`**: Runs [`hadolint`][hadolint] on `Dockerfile`, `Dockerfile.*`, and `*.dockerfile` paths.

### YAML

- **`yamllint`**: Runs [`yamllint`][yamllint] on `*.yaml` / `*.yml` files, excluding `.github/workflows/`
  (use **`actionlint`** for those files).

### GitHub Actions

- **`actionlint`**: Runs [`actionlint`][actionlint] on workflow files under `.github/workflows/`.

### Markdown

- **`markdown-link-check`**: Runs `markdown-link-check` on markdown (`*.md`) files.
- **`markdownlint-cli2`**: Runs [`markdownlint-cli2`][markdownlint-cli2] via `npx` with `--fix` on
  `*.md` files. Add a config such as `.markdownlint-cli2.jsonc` (and optionally share rule tweaks with
  **prettier** for Markdown so the two do not fight over style-only rules).

### Bash/Shell

- **`shellcheck`**: Run [`shellcheck`][shellcheck] to lint files that contain a bash [shebang][shebang].

## Getting Started

In each of your repos, add a file called `.pre-commit-config.yaml` with the following contents:

```yaml
repos:
  - repo: https://github.com/tenthirtyam/pre-commit-hooks
    rev: v0.1.0 # Example only; get the latest from: https://github.com/tenthirtyam/pre-commit-hooks/releases
    hooks:
      - id: terraform-fmt
      - id: terraform-validate
      - id: shellcheck
      - id: gofmt
      - id: golangci-lint
```

Next:

1. Install [pre-commit][pre-commit] on your system:

   ```shell
   brew install pre-commit
   ```

2. In your repository, run the following command:

   ```shell
   pre-commit install
   ```

Each time you make a commit, the hooks defined in the `hooks:` configuration will run.

### What usually stays out of pre-commit

Slow, interactive, or release-only **Task** steps are a better fit for **CI** or explicit **task**
invocation than for every commit: for example full **Jest** suites (every test file), **npm-check-updates** /
**depcheck**, generating **NOTICE** from license data, and **`npm ci`** / dist-focused **build**
pipelines. **Prettier** and **ESLint** on changed files and **`tsc --noEmit`** for typechecking match
pre-commit well. The optional **jest-related** hook runs only tests related to staged files; a full
suite remains better suited to **pre-push** hooks or CI.

### Monorepos and `tsc-noemit`

The **tsc-noemit** hook runs `npx tsc --noEmit` from the repository root and skips when there is no
root **`tsconfig.json`**. Packages whose TypeScript config lives only in subfolders may need a
root `tsconfig.json` that references project references, or a project-specific hook instead.

## Tips

> [!TIP]
> **Formatting All Files**
>
> If you'd like to format all of your code at once (rather than one file at a time), you can run:
>
> ```shell
> pre-commit run terraform-fmt --all-files
> ```

> [!TIP]
> **Formatting All Files in a CI**
>
> To ensure all hooks are enforced, configure your CI build to fail if the code does not pass the
> checks by adding the following to your build scripts:
>
> ```shell
> pip install pre-commit
> pre-commit install
> pre-commit run --all-files
> ```
>
> If all hooks succeed, the final command will exit with an exit code 0.
>
> However, if any hooks make changes (*e.g.*, due to unformatted files), this will result in a failure
> and exit with an exit code 1.

## Sponsor

[![Sponsor](https://img.shields.io/badge/Sponsor-EA4AAA?style=for-the-badge&logo=githubsponsors&logoColor=white)][sponsor]&nbsp;&nbsp;
[![Buy me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?style=for-the-badge&logo=buymeacoffee&logoColor=white)][buy-me-a-coffee]

## License

Copyright &copy; Ryan Johnson

Licensed under the [MIT License][license].

[license]: LICENSE
[sponsor]: https://github.com/sponsors/tenthirtyam
[buy-me-a-coffee]: https://buymeacoffee.com/tenthirtyam
[pre-commit]: https://pre-commit.com
[shebang]: https://en.wikipedia.org/wiki/Shebang_(Unix)
[shellcheck]: https://www.shellcheck.net
[typescript]: https://www.typescriptlang.org/docs/handbook/compiler-options.html
[eslint]: https://eslint.org
[prettier]: https://prettier.io
[jest]: https://jestjs.io/docs/cli#--findrelatedtests-srcfilepath
[govulncheck]: https://go.dev/security/govulncheck
[yapf]: https://github.com/google/yapf
[ruff]: https://github.com/astral-sh/ruff
[mypy]: https://mypy-lang.org
[go-vet]: https://pkg.go.dev/cmd/vet
[staticcheck]: https://staticcheck.io
[psscriptanalyzer]: https://github.com/PowerShell/PSScriptAnalyzer
[tflint]: https://github.com/terraform-linters/tflint
[terrafmt]: https://github.com/katbyte/terrafmt
[terrafmt-dispatch]: https://tenthirtyam.org/dispatches/2026/04/26/maintain-formatting-of-embedded-terraform-provider-examples-with-terrafmt/
[hadolint]: https://github.com/hadolint/hadolint
[yamllint]: https://github.com/adrienverge/yamllint
[actionlint]: https://github.com/rhysd/actionlint
[ansible-lint]: https://ansible.readthedocs.io/projects/lint/
[markdownlint-cli2]: https://github.com/DavidAnson/markdownlint-cli2
