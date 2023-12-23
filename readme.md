# Projeto Printy

Projeto para entendimento basico do makefile.  
Segui este artigo maravilho sobre o assunto: https://embarcados.com.br/introducao-ao-makefile/

Este é um projeto simples com um Makefile para compilar e vincular um programa chamado Printy. O projeto consiste em um programa escrito em linguagem C, composto por vários arquivos fonte no diretório `./source/`.

## Estrutura do Projeto

- `./source/`: Contém os arquivos-fonte em linguagem C.
- `./objects/`: Diretório para armazenar os arquivos-objeto gerados durante a compilação.
- `Makefile`: Arquivo Makefile para automatizar o processo de compilação e vinculação.

## Como Compilar e Executar

Certifique-se de ter o GCC instalado em seu sistema. Você pode compilar o projeto executando o seguinte comando no terminal:

```bash
make
```
Isso criará o diretório ./objects/ (se ainda não existir) e compilará os arquivos-fonte, gerando o executável printy.

Para limpar os arquivos temporários e o executável, você pode usar o seguinte comando:
```bash
make clean
```

## Contribuições

Contribuições são bem-vindas! Se você encontrar melhorias ou correções para este projeto, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto é distribuído sob a licença MIT.

