# Imagen docker baseado na imagem rocha112358/kali-desenv com novnc

## Voce pode testar com
````bash
docker run -it --rm \
    --name kali-dev \
    -v /var/run/docker.sock:/var/run/docker.sock:rw \
    -p 3390:3390 \
    rocha112358/kali-novnc
````

e acessar via navegador http://localhost:8080