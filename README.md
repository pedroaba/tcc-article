# TCC Article

Repositório de um Trabalho de Conclusão de Curso em LaTeX, com foco em gamificação e biofeedback em atividades físicas.

## Visão geral

Este projeto contém o texto completo do TCC, organizado em arquivos LaTeX para cada seção e com configuração de estilo personalizada para o Instituto Nacional de Telecomunicações (Inatel).

## Estrutura do projeto

- `main.tex` - arquivo principal que monta o documento final e inclui as seções.
- `configuracoes/` - configuração de pacotes e estilos do LaTeX.
  - `config.tex` - configurações de compilação, pacotes e bibliografia.
  - `includes.tex` - (arquivo de inclusão para pacotes e comandos personalizados).
- `secoes/` - seções do trabalho.
  - `01-resumo.tex`
  - `02-introducao.tex`
  - `03-referencial-teorico.tex`
  - `04-metodologia.tex`
  - `05-resultados.tex`
  - `06-conclusao.tex`
  - `07-biografia.tex`
- `referencia.bib` - arquivo de bibliografia em BibLaTeX.
- `inatel.sty` - estilo Inatel personalizado utilizado pelo documento.

## Licença

Este repositório está licenciado sob a licença MIT. Consulte o arquivo `LICENSE` para os termos completos.

## Como compilar

Recomenda-se usar `latexmk` ou `pdflatex` com `biber` para produzir o PDF final.

Se você não quiser instalar LaTeX na máquina, pode compilar pelo Docker com o script incluído neste repositório:

```bash
bash build-docker.sh
```

O script usa uma imagem TeX completa em contêiner e gera o PDF sem depender de `latexmk`, `pdflatex` ou `biber` instalados localmente.

Exemplo com `latexmk`:

```bash
latexmk -pdf main.tex
```

Exemplo via Docker:

```bash
bash build-docker.sh
```

Se for necessário usar `pdflatex` / `biber` manualmente:

```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

## Dependências

- TeX Live ou MiKTeX com suporte a:
  - `biblatex`
  - `biber`
  - `graphicx`
  - `fancyhdr`
  - `babel` (português)
  - outros pacotes LaTeX padrão usados no `config.tex`

## Observações

- O trabalho está em português.
- O documento final é gerado a partir de `main.tex` e inclui todas as seções e bibliografia.
- Use um editor compatível com LaTeX para facilitar a edição e a visualização do PDF.
