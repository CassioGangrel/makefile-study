# My third makefile 

# Definição do nome do projeto
PROJECT_NAME=printy

# Lista de arquivos .c no diretório ./source/
C_SOURCE=$(wildcard ./source/*.c)

# Lista de arquivos .h no diretório ./source/
H_SOURCE=$(wildcard ./source/*.h)

# Lista de arquivos objeto: Substitui .c por .o e troca source por objects
OBJ=$(subst .c,.o,$(subst source,objects,$(C_SOURCE)))

# Compilador a ser utilizado
CC=gcc

# Opções do compilador
CC_FLAGS=-c	\
         -W	\
         -Wall	\
         -ansi	\
         -pedantic

# Comando utilizado na meta clean para remover arquivos e diretórios
RM= rm -rf

#
# Compilação e vinculação
#

# Meta padrão: Dependente da meta objFolder e do executável $(PROJECT_NAME)
all: objFolder $(PROJECT_NAME)
	# Construção da meta all

# Regra para construir o executável $(PROJECT_NAME) a partir dos arquivos objeto
$(PROJECT_NAME): $(OBJ)
	@ echo 'Construindo binário usando o vinculador GCC: $@'
	$(CC) $^ -o $@
	@ echo 'Construção do binário concluída: $@'
	@ echo ' '

# Regra para construir arquivos objeto a partir dos arquivos .c e .h correspondentes
./objects/%.o: ./source/%.c ./source/%.h
	@ echo 'Construindo alvo usando o compilador GCC: $<'
	$(CC) $< $(CC_FLAGS) -o $@
	@ echo ' '

# Meta para criar o diretório objects se ainda não existir
objFolder:
	@ mkdir -p objects

# Regra específica para construir o arquivo objeto main.o
./objects/main.o: ./source/main.c $(H_SOURCE)
	@ echo 'Construindo alvo usando o compilador GCC: $<'
	$(CC) $< $(CC_FLAGS) -o $@
	@ echo ' '

# Meta para limpar arquivos e diretórios gerados durante a compilação
clean: 
	@ $(RM) ./objects/*.o $(PROJECT_NAME) *~
	@ rmdir objects
	@ echo 'Limpeza concluída'

# Define as metas all e clean como "phony", indicando que elas não correspondem a arquivos reais
.PHONY: all clean

