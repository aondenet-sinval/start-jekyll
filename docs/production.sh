#/bin/#!/usr/bin/env bash
#Removendo a compilação anterior
rm -r docs;
#Criando uma nova compilação para disponibilizar em produção no github pages
cp -r _site docs;
