<h1>VÍDEO CONFERÊNCIA</h1>

Sistema de vídeo conferência, transmissão de aúdio (microfone) e vídeo (webcam).

Tecnologias utilizadas: Ruby, Rails, Opentok Vonage Video API, Dotenv, SQLite, Javascript, Stimulus, HTML, CSS/SCSS, Bootstrap.

<h2>Descrição:</h2>

Sistema feito para compartilhar vídeos em salas de reunião. <br/>
É possível criar sala e, no momento da sua criação, definir a URL do vídeo a ser compartilhado. Dessa forma, apenas o criador da sala consegue definir o vídeo,
que é obrigatório.<br/>
O código da sala fica exposto dentro da mesma, para que o criador ou outras pessoas presentes possam copiar e enviar para alguém que também deseje entrar. <br/><br/>

A aplicação possui dois botões em sua tela inicial. O botão "CRIAR SALA", que cria uma nova sala; o botão "ENTRAR NA SALA", que entra em uma sala existente a partir
do código informado no seu campo de texto. <br/><br/>

Tanto os donos quanto os convidados das salas devem preencher seus respectivos nomes (ou apelidos ou outras formas de identificação) quando estiverem entrando. <br/><br/>

Dentro das salas as pessoas podem falar (com miicrofone) umas com as outras e/ou se comunicar de forma visual (com webcam). Trata-se de uma reunião online, com controle
de microfone (mutado ou não mutado), com o compartilhamento de um vídeo. <br/><br/>

<h2>Como executar o projeto:</h2>

<ul>
    <li>Baixar as dependências através do bundle;</li>
    <li>Instalar o Stimulus através do comando 'rails stimulus:install';</li>
    <li>Adicionar o popper.js e bootstrap através dos comandos 'yarn add @popperjs/core' e 'yarn add bootstrap jquery popper.js';</li>
    <li>Executar o migrate;</li>
    <li>Criar uma conta em 'https://tokbox.com/account/' para criar um projeto de video e, dessa forma, obter as credenciais necessárias para utilizar a Opentok Vonage Video API;</li>
</ul>

<br/>

A aplicação utiliza a Vonage Video API, portanto, além das instruções que foram listadas é preciso certificar-se de ter baixado a dependência Dotenv e criar o arquivo '.env' no
diretório raiz do proejto. Neste arquivo é necessário definir duas variáveis de ambiente: VONAGE_API_KEY, que deverá receber a API_KEY do Vonage Video API; VONAGE_API_SECRET, que
deverá receber a API_SECRET do Vonage Video API.

<h2>Como acessar a aplicação:</h2>

A aplicação foi publicada no Heroku. É possível acessá-la através do seguinte link: .