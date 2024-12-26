#
# ~/.bashrc
#

# If not running interactively, don't do anything                  
[[ $- != *i* ]] && return                                          
                                                                   
alias ls='lsd --color=auto'                                        
alias ls='lsd --icon=allways'                                      
alias grep='grep --color=auto'                                     
PS1='[\u@\h \W]\$ '                                                

# Leg Variablen fest, die für Programme oder Skripte verfügbar sind
export PATH="$HOME/bin:$PATH"                                      
export EDITOR="vim"                                                
export LANG="de_DE.UTF-8"  

# Starship initialisierung wenn installiert
if command -v starship &>/dev/null; then 
    eval "$(starship init bash)"                                       
fi

# Set up fzf key bindings and fuzzy completion                     
if command -v fzf &>/dev/null; then 
    eval "$(fzf --bash)"                                               
fi 

# fastfetch starte                                                
if command -v fastfetch &>/dev/null; then                          
  fastfetch                                                        
fi

# alias für command lsd                                            
alias ls='lsd'                                                     
alias l='lsd -l'                                                   
alias la='lsd -a'                                                  
alias lla='lsd -la'                                                
alias lt='lsd --tree'                                              
                                                                   
# alias für nvim                                                   
alias vim='nvim'                                                   
                                                                   
# alias für clear                                                  
alias cls='clear'