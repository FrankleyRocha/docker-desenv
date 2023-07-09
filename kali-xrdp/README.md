# Imagen docker baseado na imagem rocha112358/kali-desenv com xrdp

## Voce pode testar com
````bash
docker run -it --rm \
    --name kali-dev \
    -v /var/run/docker.sock:/var/run/docker.sock:rw \
    -p 3390:3390 \
    rocha112358/kali-xrdp
````

e acessar via RDP localhost:3390