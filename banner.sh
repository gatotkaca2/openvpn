issue="                           ,;;;;;;,
                                ,;;;'""`;;\
                              ,;;;/  .'`',;\
                            ,;;;;/   |    \|_
                           /;;;;;    \    / .\
                         ,;;;;;;|     '.  \/_/
                        /;;;;;;;|       \
             _,.---._  /;;;;;;;;|        ;   _.---.,_
           .;;/      `.;;;;;;;;;|         ;'      \;;,
         .;;;/         `;;;;;;;;;.._    .'         \;;;.
        /;;;;|          _;-"`       `"-;_          |;;;;\
       |;;;;;|.---.   .'  __.-"```"-.__  '.   .---.|;;;;;|
       |;;;;;|     `\/  .'/__\     /__\'.  \/`     |;;;;;|
       |;;;;;|       |_/ //  \\   //  \\ \_|       |;;;;;|
       |;;;;;|       |/ |/    || ||    \| \|       |;;;;;|
        \;;;;|    __ || _  .-.\| |/.-.  _ || __    |;;;;/
         \jgs|   / _\|/ = /_o_\   /_o_\ = \|/_ \   |;;;/
          \;;/   |`.-     `   `   `   `     -.`|   \;;/
         _|;'    \ |    _     _   _     _    | /    ';|_
        / .\      \\_  ( '--'(     )'--' )  _//      /. \
        \/_/       \_/|  /_   |   |   _\  |\_/       \_\/
                      | /|\\  \   /  //|\ |
                      |  | \'._'-'_.'/ |  |
                      |  ;  '-.```.-'  ;  |
                      |   \    ```    /   |
    __                ;    '.-"""""-.'    ;                __
   /\ \_         __..--\     `-----'     /--..__         _/ /\
   \_'/\`''---''`..;;;;.'.__,       ,__.',;;;;..`''---''`/\'_/
        '-.__'';;;;;;;;;;;,,'._   _.',,;;;;;;;;;;;''__.-'
             ``''--; ;;;;;;;;..`"`..;;;;;;;; ;--''                                                       
                     )                                   
   (          (   ( /(    (   (     (   (                
   )\   (    ))\  )\())  ))\  )(    )\  )\ `  )    (     
  ((_)  )\  /((_)((_)\  /((_)(()\  ((_)((_)/(/(    )\ )  
 _ | | ((_)(_))  | |(_)(_))   ((_) \ \ / /((_)_\  _(_/(  
| || |/ _ \/ -_) | / / / -_) | '_|  \ V / | '_ \)| ' \)) 
 \__/ \___/\___| |_\_\ \___| |_|     \_/  | .__/ |_||_|  
                                          |_|            			 
"

rm -rf /etc/issue.net
echo "$issue" > /etc/issue.net
chmod 777 /etc/issue.net

sed -i 's/#Banner/Banner/g' /etc/ssh/sshd_config
rm -rf /etc/default/dropbear
curl -s https://raw.githubusercontent.com/GegeEmbrie/autosshvpn/master/file/dropbear >> /etc/default/dropbear
chmod 644 /etc/default/dropbear

service ssh restart
service dropbear restart