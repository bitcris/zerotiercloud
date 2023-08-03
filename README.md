# VPN Zerotier em Cloud Containers - Google Cloud e GitHub codespaces
Instalando o Zerotier em Máquinas virtuais na nuvem, testado no <b>Github codespaces</b> e <b>Google cloud</b>
<br>
<br>
Esse script faz o download do cliente zerotier <b>sem a verificação GPG</b>
diretamnete do site da <a href="https://www.zerotier.com/download/">Zerotier</a>
<br>
<br>
Depois que você digitar o ID da rede ele ja faz a conexão
<br>
<br>
<b>Para uma instalação segura veja as instruções na <a href="https://www.zerotier.com/download/">Página oficial</a> da Zerotier</b>
<br><br><br>

<b>INSTALAÇÃO MANUAL - SEM EXECUTAR O SCRIPT</b>
<br><br>
Instala o Zerotier <b>SEM VERIFICAÃO GPG</b>
<pre>curl -s https://install.zerotier.com | sudo bash</pre>
<br>
Inicia o Zerotier como um serviço
<pre>sudo service zerotier-one start</pre>
<br>
Abra o <a href="https://my.zerotier.com/">Console</a> da Zrotier no navegador e copie o Network ID da rede
<br>
<br>
Conecte o host na rede
<pre>sudo zerotier-cli join "Network ID"</pre>
<br><br>
<b>NOTA</b><br>
Consegui conectar o terminal do host local via ssh com o container via ssh pelo IP da rede Zerotier
mas apenas no host Github codespace com senha.
o host da Google Cloud vem definido apenas conexão via chave privada por padrão.



