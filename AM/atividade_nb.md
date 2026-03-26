## Estrutura da Atividade Jigsaw

### 1. Preparação (5 minutos)
Divida a sala em 4 **"Grupos Base"** (A, B, C, D). Cada aluno do grupo recebe um número de 1 a 4. 
* Os alunos **número 1** serão especialistas em **Vetorização Básica (BoW e Sentimentos)**.
* Os alunos **número 2** serão especialistas em **Contexto e Pesos (N-grams e TF-IDF)**.
* Os alunos **número 3** serão especialistas em **Variantes Discretas (Multinomial e Bernoulli)**.
* Os alunos **número 4** serão especialistas em **Variantes Especiais (Complement e Gaussian)**.

### 2. Grupos de Especialistas (20 minutos)
Os alunos com o mesmo número se reúnem para estudar o material específico e discutir como explicarão isso aos seus grupos originais.

#### **Especialista 1: O Tradutor e o Sentimento**
* **Conceitos:** Análise de Sentimento e Bag-of-Words (BoW).
* **Missão:** Explicar como frases viram listas de frequências e por que o Naive Bayes é usado para classificar emoções (Positivo/Negativo).
* **Desafio Prático:** Criar uma tabela de contagem simples para as frases: *"O filme é bom"* e *"O filme é ruim"*.

#### **Especialista 2: O Contexto e a Importância**
* **Conceitos:** N-grams e TF-IDF.
* **Missão:** Explicar como resolver o problema do "Não bom" (N-grams) e como o TF-IDF ajuda a ignorar palavras inúteis como "o", "a", "de".
* **Desafio Prático:** Mostrar por que a palavra "filme" é menos importante que a palavra "espetacular" em um banco de dados de cinema.

#### **Especialista 3: Multinomial vs. Bernoulli**
* **Conceitos:** MultinomialNB e BernoulliNB.
* **Missão:** Explicar a diferença entre **contar** palavras (Multinomial) e apenas verificar se a palavra **está lá** ou não (Bernoulli).
* **Desafio Prático:** Em que situação o Bernoulli seria melhor? (Ex: Spam curto onde uma palavra chave já diz tudo).

#### **Especialista 4: Casos Especiais e Números**
* **Conceitos:** ComplementNB e GaussianNB.
* **Missão:** Explicar como lidar com dados injustos/desequilibrados (Complement) e como o Naive Bayes classifica números contínuos (Gaussian - ex: peso, altura).
* **Desafio Prático:** Desenhar uma "curva de sino" (Gaussiana) para explicar como o algoritmo entende que uma pessoa de 1,90m provavelmente é de uma classe "Alta".

### 3. A Volta ao Grupo Base (20 minutos)
Os especialistas voltam para seus grupos (A, B, C, D). Agora, cada um tem 5 minutos para dar uma "aula" para seus 3 colegas.

* **Regra:** Ninguém pode apenas ler; eles devem usar desenhos ou exemplos rápidos no papel.

### 4. O Desafio Final: "O Diagnóstico de Texto" (15 minutos)
Para consolidar, entregue uma folha com este cenário para cada grupo resolver junto:

> **Cenário:** Vocês precisam criar um filtro de suporte para uma empresa. O dataset tem 9.000 reclamações e apenas 100 elogios. Os clientes usam frases como "Não estou satisfeito" e "O serviço não é bom".
>
> **Pergunta do Grupo:**
> 1. Qual técnica de vetorização usaríamos para entender o "Não satisfeito"? Explique o motivo. (N-grams, para capturar o contexto de "Não" + "satisfeito")
> 2. Qual variante do Naive Bayes seria melhor para lidar com o desequilíbrio (9000 vs 100)? Explique o motivo. (ComplementNB)
> 3. Se quisermos dar peso menor para a palavra "O" e "A", qual técnica aplicar? Explique o motivo. (TF-IDF)

### Dicas para o Professor:
* **Material:** Prepare 4 folhas de "Guia do Especialista" com as definições que discutimos nas mensagens anteriores.
* **Monitoria:** Circule nos grupos de especialistas para garantir que o aluno "4" entendeu que o GaussianNB não é para texto (BoW), mas para medidas.