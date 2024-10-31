# app-club

Um aplicativo para uma empresa de "Clube de benefícios" com foco em consultas médicas, desenvolvido inicialmente por nós, juntamente com o sistema interno [web-club](https://github.com/GabrielFMA/web-club), mas depois vendido para ser continuado pelos desenvolvedores da empresa.

## 🛠️ Construído com

* [Flutter](https://flutter.dev/) - Framework
* [Firebase](https://firebase.google.com/) - Banco de Dados
* [ViaCep](https://viacep.com.br) - API para a pesquisa de CEP
* [MobX](https://mobx.pub/) - Gerenciamento de estado reativo

### Organização e Gerenciamento de Estado com MobX

Para manter o código organizado e escalável, este projeto utiliza o [MobX](https://pub.dev/packages/mobx) como base para gerenciamento de estado. O MobX é uma biblioteca que permite a implementação de um padrão de programação reativa, facilitando o gerenciamento de estados complexos de maneira previsível e fluida. 

Com o MobX, foi possível separar e organizar o código em **stores** (repositórios de estado), que armazenam o estado da aplicação e permitem uma sincronização em tempo real das mudanças de estado com a interface do usuário. Esse modelo reativo simplifica o acompanhamento de estados em diferentes telas e componentes, proporcionando uma arquitetura mais modular e fácil de manter.

# Telas
Detalhes das telas desenvolvidas no aplicativo.

## Tela Inicial
A tela de boas-vindas exibida quando o usuário abre o aplicativo pela primeira vez.

<img src="https://github.com/user-attachments/assets/5bdea62f-969c-4d86-828d-d0733326537a" width="300" alt="Tela Inicial" />

## Login
Tela de autenticação, onde o FirebaseAuth é utilizado para login dos usuários, incluindo tratamento de erros para feedback ao usuário.

<img src="https://github.com/user-attachments/assets/d7aa3320-cc86-4f02-a124-ec95e72569f4" width="300" alt="Tela de Login" />

## Cadastro
Tela de cadastro do usuário, com integração da API ViaCep para preenchimento automático dos dados de endereço a partir do CEP.

<img src="https://github.com/user-attachments/assets/9300e25d-b3c4-4ffa-ac38-e43cfc0c0bf1" width="300" alt="Tela de Cadastro com ViaCep" /> 
<img src="https://github.com/user-attachments/assets/dd5f6b53-d041-4de5-9591-34a1de8dc617" width="300" alt="Tela de Cadastro - Preenchimento de Endereço" />

## Home
Tela principal, onde os dados dos parceiros cadastrados no [web-club](https://github.com/GabrielFMA/web-club) são carregados e exibidos em tempo real.

<img src="https://github.com/user-attachments/assets/e266d730-1f50-4ad4-93ca-e9d23f9dbb90" width="300" alt="Tela Home com parceiros em tempo real" />

## 📡 API

Este projeto integra-se com a [API ViaCep](https://viacep.com.br) para consulta de CEPs, permitindo preenchimento automático do endereço durante o cadastro dos usuários. A API é gratuita e fornece informações detalhadas de endereço a partir do CEP informado, facilitando o processo de cadastro e melhorando a experiência do usuário.

## 📌 Versão

(Projeto finalizado) Última versão projetada por nós.

## ✒️ Autores

[Tiago Ribolli](https://gist.github.com/ribollitiago) e [Gabriel Figueiredo](https://gist.github.com/GabrielFMA)

---
⌨️ por [Tiago Ribolli](https://gist.github.com/ribollitiago)
