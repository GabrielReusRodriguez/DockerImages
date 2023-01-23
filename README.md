Proyecto que  reune todos los Dockers creados para construir los entornos de programación (sdks) de diferentes tecnologías/lenguajes junto con scripts para crear las imágenes y ejecutarlas. Así mismo, también se incluye el script de instalación de docker para ubuntu. (El resto de distros NO están probadas)

Para ejecutarlo, se ha de ejecutar los scripts de la carpeta bin.

Para crear la imagen se usa docker_builder.sh junto con el sdk que se quiere instalar y para utilizar el sdk se  ha de llamar al script docker_srun.sh con el nombre del sdk y los parámetros que queramos pasarle al contenedor. Aún así, se mantienen los scripts originales para cada sdk por si hubiera que "tunearlos"

En caso de querer tunear la imagen Docker , se puede acceder a cada carpeta y modificarla.


A fecha de hoy 24/01/2023 se incluyen las siguientes tecnologías:
    ErLang
    GoLang
    NodeJs
    OpenJDK
    Perl
    Python 2.x y 3.x
    R
    ReactJs
    Rust

Espero poder ampliarla y mejorar los scripts, toda sugerencia y colaboración es bienvenida.