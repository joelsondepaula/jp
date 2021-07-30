#!/bin/sh
# Last Update: Jan 09 2020

<< 'CHANGELOG'

2.0 25/05/2021 [ Author: Pablo Bezerra ]
      * Adição das funções:
       * realmemc/realmemd;
       * wploginmit;
       * deepmail;
       * tophits;
    

1.0 - 10/07/2019 [ Author: Pablo Bezerra ]
            * Initial release
            * Ambiente do supas com algumas funções diferentes
CHANGELOG


# Função principal, listar todas as funções disponíveis
function supas (){
echo -e "\nAmbiente de Suporte :: Lista de Funcoes\n=======================================\n"
echo -e "-----------------CODEX-----------------"
echo -e "permdatabase\t\t->\tCorrige permissão de banco de dados"
echo -e "allowremotedomains\t->\tDesbloquear Remote Domain"
echo -e "moduserdir\t\t->\tLiberação de acesso temporário para usuário"
echo -e "fixhome\t\t\t->\tAjustar permissão da home da conta"
echo -e "realsarmemawk\t\t->\tVerificação de utilização real de memória"
echo -e "inode\t\t\t->\tVerificar locais com excesso de utilização de inodes"
echo -e "axonstats\t\t->\tLogs do Axon"
echo -e "fixwordpress\t\t->\tCorrige problemas de instalação do wordpress"
echo -e "cmscheck\t\t->\tLista CMS de uma conta"
echo -e "pyscan\t\t\t->\tVarredura numa conta especifica."
echo -e "roundcubeplugin\t\t->\tConfigura plugins no roundcube"
echo -e "allowremotesmtp\t\t->\tConfigura usuário no allowsmtp do CSF "
echo -e "-----------------Apache-----------------"
echo -e "apache_status\t\t->\tFullstatus do Apache"
echo -e "edit_http\t\t->\tAbre o arquivo pre_virtualhost_global.conf para edição"
echo -e "restrict_http\t\t->\tBloqueia o acesso web da conta cPanel"
echo -e "-----------------SPAM-----------------"
echo -e "disable_spamdel\t\t->\tDesabilitar Auto Delete do SpamAssassin de uma conta"
echo -e "enable_spamass\t\t->\tAtivar SpamAssassin para uma conta"
echo -e "conf_spamass\t\t->\tConfigurar score do SpamAssassin de uma conta"
echo -e "global_spambox\t\t->\tHabilitar Spam Box para todos do servidor"
echo -e "-----------------EMAIL-----------------"
echo -e "mail_usage_report\t->\tRelatório de todas as contas de e-mail do servidor"
echo -e "cpusermail_usage\t->\tRelatório das contas de e-mail de uma conta cPanel"
echo -e "changemail_password\t->\tAlterar senha de conta para uma aleatória"
echo -e "nomail\t\t\t->\tDesabilitar envio de e-mail de uma conta cPanel"
echo -e "yesmail\t\t\t->\tHabilitar envio de e-mail de uma conta cPanel"
echo -e "delfrozen\t\t->\tRemover e-mails frozen da fila"
echo -e "deldonmail\t\t->\tRemover e-mails de todo domínio da fila"
echo -e "delusermail\t\t->\tRemover e-mails de uma conta da fila"
echo -e "sendmail\t\t->\tEnviar e-mail"
echo -e "mq\t\t\t->\tFila de e-mail para auditoria"
echo -e "spfxuxu\t\t\t->\tRotacionamento de ip by IgorA"
echo -e "checkmx\t\t\t->\tVerifica roteamento de e-mail e entradas MX do domínio"
echo -e "addwhitelist\t\t->\tAdiciona domínio a whitelist, passe a conta cPanel e o domínio ou endereço"
echo -e "removeq\t\t\t->\tRemove a fila de e-mails"
echo -e "listc\t\t\t->\tlista todas as contas"
echo -e "listq\t\t\t->\tLista a fila com um sort"
echo -e "createtestemail_andsend\t->\tCria um e-mail chamado hdteste no domínio primário do Home que você está, além disso manda um e-mail de teste"
echo -e "-----------------WHM-----------------"
echo -e "cpanelsession\t\t->\tAcesso cPanel sem senha"
echo -e "suspend_reseller\t->\tSuspender Reseller"
echo -e "unsuspend_reseller\t->\tRemover suspensão do Reseller"
echo -e "autossl\t\t\t->\tGerar certificado ssl para conta"
echo -e "-----------------cPanel-----------------"
echo -e "restrict_mailacct\t->\tDesabilitar conta de e-mail Login/Envio/Recebimento"
echo -e "unrestrict_mailacct\t->\tRemover bloqueio de conta de e-mail Login/Envio/Recebimento"
echo -e "create_backup\t\t->\tGerar backup da conta em sua home"
echo -e "check_backup\t\t->\tVerificar backups disponíveis para a conta"
echo -e "-----------------Outros-----------------"
echo -e "addkey\t\t\t->\tAdiciona chave SSH da HDBR no servidor"
echo -e "acesso\t\t\t->\tGera acesso a GUI"
echo -e "phpinfo\t\t\t->\tAdiciona o phpinfo no diretório atual"  createtestmail_andsend
echo -e "backupscan\t\t->\tEscaneia possíveis locais de backup" 
echo -e "rotacionamentoip\t->\tUse o --ip para especificar" 
echo -e "checkmx\t\t\t->\tVerifica roteamento de e-mail e entradas MX do domínio" 
echo -e "servicestatus\t\t->\tVerificar status de serviços mais comuns"
echo -e "memperuser\t\t->\tVerifica a quantidade de memoria usada por usuario" 
echo -e "top5\t\t\t->\tLista os 5 usuários que mais consomem recursos"
echo -e "showzone\t\t->\tPasse o domínio para listar a zona DNS"
echo -e "realmemc\t\t->\tLista o uso de memória real no CentOS"
echo -e "realmemd\t\t->\tLista o uso de memória real no Debian"
echo -e "checkiprep\t\t->\tVerifica a reputaçao do IP"
echo -e "wploginmit\t\t->\tAdiciona ruleset customizado no csf"
echo -e "deepmail\t\t->\tGera um relatório completo do envio de e-mails nas últimas 48H"
echo -e "tophits\t\t\t->\t Gera um relatório com os 5 domínios com mais acessos" 
echo -e "ipsaida\t\t\t->\t Mostra o IP de saída de e-mails\n" ;}


supas;

#CODEX
alias ls="ls -al --color=always";export LESS="r";
alias cmscheck='bash <(curl -ks https://codesilo.dimenoc.com/pablo.b/cmscheck/raw/master/checkallcms.sh) "$@"';
alias allowremotedomains='bash <(curl -ks https://codex.hostdime.com/scripts/download/allowremotedomains)';
alias changemainaccount='bash <(curl -ks https://codex.hostdime.com/scripts/download/changemainaccount)';
alias moduserdir='bash <(curl -ks https://codex.hostdime.com/scripts/download/moduserdir)';
alias fixhome='bash <(curl -ks https://codesilo.dimenoc.com/support/fix_known_home)';
alias realsarmemawk='bash <(curl -ks https://codex.hostdime.com/scripts/download/realsarmemawk)';
alias inode='python <(curl -ks https://codex.hostdime.com/scripts/download/inodeseekingmissile)';
alias axonstats='/usr/local/cpanel/3rdparty/bin/php <(curl -ks https://codex.hostdime.com/scripts/download/snapstats)';
alias fixwordpress='bash <(curl -ks https://codex.hostdime.com/scripts/download/wordpressfix)';
alias pyscan='bash <(curl -ks http://legal.hostdime.com/tjb_env/run-pyscan.sh) "$@"'
alias spfxuxu='bash <(curl -ks https://gist.githubusercontent.com/igorhrq/ec9f90a71d02adf548cf60e6aaccf006/raw/aa59ebe85243a71f76f364febf16a7ec1df395f4/spfxuxu.sh)'
alias allowremotesmtp='bash <(curl -ks https://codex.hostdime.com/scripts/download/allowremotesmtp)';
alias roundcubeplugin='bash <(curl -ks https://codex.hostdime.com/scripts/download/roundcubeplugin)';
alias acesso='bash <(curl -ks https://codex.hostdime.com/scripts/download/cpanel_session)';
alias backupscan='bash <(curl -ks https://codex.hostdime.com/scripts/download/backupscanner)';
alias rotacionamentoip='bash <(curl -ks https://raw.githubusercontent.com/Pablocst/scripts/main/fixedrotacionamento.sh)';
alias memperuser='perl <(curl -ks https://codex.hostdime.com/scripts/download/memusage)';
alias top5='bash <(curl -ks https://codex.hostdime.com/scripts/download/topresourceconsumers)';
alias checkiprep='bash <(curl -ks https://raw.githubusercontent.com/Pablocst/scripts/main/rbl.sh)';
alias fixhome='bash <(curl -ks https://codex.hostdime.com/scripts/download/fixknownhome)';
alias realmemc='bash <(curl -ks https://codex.hostdime.com/scripts/download/realsarmemawk)';
alias deepmail="perl <(curl -ks 'https://raw.githubusercontent.com/Pablocst/scripts/main/deepmail.pl') --hours=48 root"
alias tophits='bash <(curl -ks https://raw.githubusercontent.com/Pablocst/scripts/main/tophits.sh)';
