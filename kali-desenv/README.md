# Imagen docker baseado na imagem KaliLinux (kalilinux/kali-rolling) com:
- nvm;
- sdkman;
- pyenv;
- docker cli;

## Voce pode testar com
````bash
docker run -it --rm \
    --name kali-dev \
    -v /var/run/docker.sock:/var/run/docker.sock:rw \
    rocha112358/kali-desenv
````