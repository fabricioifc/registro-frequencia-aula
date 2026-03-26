## 📘 Ficha do Especialista 1: O Tradutor e o Sentimento
**Foco:** Como o texto vira número e como classificamos emoções.

* **Análise de Sentimentos:** É o processo de usar algoritmos para identificar se um texto é **Positivo, Negativo ou Neutro**. O Naive Bayes é o "campeão" aqui por ser rápido em processar milhares de avaliações de clientes.
* **Bag-of-Words (BoW):** Computadores não leem palavras, leem números. O BoW "joga as palavras num saco", ignora a gramática e apenas **conta** quantas vezes cada palavra aparece.
    * *Exemplo:* "O café é bom e o doce é bom" → `[café: 1, é: 2, bom: 2, doce: 1]`.
* **A "Ingenuidade" do Naive Bayes:** Ele assume que as palavras são independentes. Ele não sabe que "café" e "bom" estão juntos; ele apenas vê que a palavra "bom" tem alta probabilidade de ser da classe "Positivo".

> **⚡ Desafio Relâmpago:** Se você tem as frases "Amei o curso" (Positivo) e "Odiei o curso" (Negativo), quais são as palavras-chave que o seu "saco" deve priorizar para decidir a próxima frase?

## 📗 Ficha do Especialista 2: O Contexto e a Importância
**Foco:** Como não ser enganado por negações e palavras inúteis.

* **N-grams:** O BoW falha em frases como "Não é bom", porque ele vê "bom" e acha que é positivo. O **N-gram** agrupa palavras vizinhas.
    * **Unigrama:** "bom" (pode ser positivo).
    * **Bigrama:** "não bom" (claramente negativo).
* **TF-IDF (O Filtro de Importância):** Em um texto, palavras como "o", "a", "de", "que" aparecem muito, mas não dizem nada sobre o assunto. O TF-IDF diminui o peso dessas palavras comuns e aumenta o peso de palavras raras e importantes (como "defeito", "fantástico" ou "atraso").
    * **TF (Term Frequency):** Quantas vezes a palavra aparece *aqui*.
    * **IDF (Inverse Document Frequency):** O quão rara ela é no *resto* dos documentos.

> **⚡ Desafio Relâmpago:** Explique para o seu grupo: por que o TF-IDF daria um peso maior para a palavra "refrigerante" do que para a palavra "comida" em um cardápio de restaurante?

## 📙 Ficha do Especialista 3: Variantes Discretas (Contar vs. Olhar)
**Foco:** MultinomialNB e BernoulliNB.

* **MultinomialNB:** É a variante padrão para texto. Ela se importa com a **frequência**. Se a palavra "promoção" aparece 5 vezes, ela é 5 vezes mais importante para o cálculo de Spam.
    * *Uso ideal:* Textos longos, notícias, artigos científicos.
* **BernoulliNB:** Esta variante é "binária". Ela não quer saber quantas vezes a palavra apareceu, mas sim **se ela apareceu ou não** (0 ou 1).
    * *Uso ideal:* Textos muito curtos (como Tweets ou SMS de Spam). Às vezes, saber que a palavra "GRÁTIS" apareceu uma única vez já é o suficiente para o veredito.

> **⚡ Desafio Relâmpago:** Se você está analisando um livro de 300 páginas, você usaria Multinomial ou Bernoulli? Por quê? (Dica: A repetição de termos importa em um livro?)

## 📕 Ficha do Especialista 4: Casos Especiais (Injustiça e Números)
**Foco:** ComplementNB e GaussianNB.

* **ComplementNB (CNB):** O Naive Bayes comum "vicia" se você tiver muitos dados de uma classe e poucos de outra (ex: 1000 spams e só 10 e-mails bons). O **Complement** corrige isso focando na probabilidade das classes que estão em minoria. É a melhor escolha para dados desequilibrados.
* **GaussianNB:** Diferente de todos os outros, este não é focado em texto (palavras), mas em **números contínuos**. Ele assume que os dados seguem uma "curva de sino" (distribuição de Gauss).
    * *Exemplo:* Classificar se alguém é "Atleta" baseado em Altura e Batimento Cardíaco.

> **⚡ Desafio Relâmpago:** Sua base de dados tem 95% de fotos de gatos e 5% de fotos de cachorros. Qual Naive Bayes você usaria para não ignorar os cachorros? (Resposta: ComplementNB).

### Guia de Resolução para o Professor (Final da Atividade)

Ao final, quando os grupos base se reunirem para o desafio final, as respostas esperadas são:
1.  **N-grams** (para captar o "não" + sentimento).
2.  **ComplementNB** (para lidar com o desequilíbrio de 9000 vs 100).
3.  **TF-IDF** (para tirar a importância das palavras gramaticais inúteis).