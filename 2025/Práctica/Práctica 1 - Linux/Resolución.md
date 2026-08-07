# Trabajo Práctico 1

## Introducción a los Sistemas Operativos

1.
   1. el sistema GNU es el sistema operativo similar a Unix, constituido en su totalidad por software libre. un sistema operativo similar a Unix está constituido por muchos programas. el sistema GNU incluye todo el software GNU, además de muchos otros paquetes.
   2. Microsoft Windows:
      * código abierto: es un sistema operativo privativo y de código cerrado. esto significa que los usuarios no tienen acceso a su código fuente.
      * estabilidad y seguridad: históricamente, ha sido más susceptible a virus y *malware* debido a su popularidad masiva en el mercado de *desktops* y a su arquitectura de permisos más laxa. aunque ha mejorado con cada nueva versión, sigue siendo un objetivo principal para los ciberdelincuentes.
      * flexibilidad: está diseñado principalmente para computadoras personales (PCs), y si bien existen versiones para servidores, su uso en otros dispositivos es limitado en comparación con GNU/Linux.

      Apple macOS:
      * código abierto: es un sistema operativo de código cerrado y privativo, aunque se basa en el sistema operativo UNIX, el cual es de código abierto. al igual que Windows, su código fuente no está disponible para el público.
      * estabilidad y seguridad: es muy estable y seguro, en parte debido a su base UNIX y a que está diseñado para un *hardware* específico (los dispositivos de Apple), lo que le da un control estricto sobre el ecosistema. esto lo hace un objetivo menos frecuente para los ataques de *malware* que Windows.
      * flexibilidad: su uso está restringido a los dispositivos de Apple, por lo que su flexibilidad es muy limitada en comparación con GNU/Linux, que puede ser instalado en casi cualquier plataforma.

      UNIX:
      * código abierto: históricamente, no era de código abierto en su forma original, pero sí sentó las bases para muchos sistemas de código abierto. hoy en día, existen versiones de código abierto, mientras que otras son privativas (como macOS).
      * estabilidad y seguridad: es el pionero en la estabilidad y seguridad en sistemas operativos multiusuario y multitarea. su arquitectura modular y su robusto sistema de archivos y permisos son la base de muchos sistemas operativos modernos, incluyendo GNU/Linux.
      * flexibilidad: fue diseñado para ser portátil y escalable, lo que significa que se podía adaptar a diferentes arquitecturas de *hardware*. esta filosofía de diseño es una de las principales herencias que GNU/Linux adoptó y perfeccionó.
   3. • es un sistema operativo tipo Unix (Unix like), pero libre
      • S.O. diseñado por miles de programadores
      • S.O. gratuito y de libre distribución (se baja desde la Web, CD, etc.)
      • existen diversas distribuciones (customizaciones)
      • es código abierto, lo que nos permite estudiarlo, personalizarlo, auditarlo, aprovecharnos de la documentación, etc…
   4. los primeros sistemas GNU/Linux se originaron en 1992, al combinar utilidades de sistema y librerías del proyecto GNU con el núcleo Linux. desde finales de 1990 Linux ha obtenido el apoyo de diversas empresas multinacionales del mundo de la informática, tales como IBM, Sun Microsystems, Hewlett-Packard y Novell. actualmente GNU/Linux es comercializado en computadores de escritorio y portátiles. si bien GNU/Linux es usado como sistema operativo en computadores de escritorio (PCs x86 y x86-64 así como Macintosh y PowerPC), computadores de bolsillo, smartphones, dispositivos empotrados y otros, su mayor desarrollo se ha llevado a cabo en el mundo de los servidores y supercomputadores.
   5. la multitarea es la capacidad de un sistema operativo para ejecutar múltiples procesos de forma concurrente, o al mismo tiempo. esto permite que el usuario pueda tener varios programas abiertos y funcionando sin que uno bloquee al otro.

      GNU/Linux hace uso de la multitarea. de hecho, es una de sus características fundamentales y una de las principales razones de su estabilidad y eficiencia.
   6. POSIX (del inglés Portable Operating System Interface) es un conjunto de estándares de interfaz de programación de aplicaciones (API) que se basa en los sistemas operativos tipo UNIX. el objetivo principal de POSIX es garantizar la portabilidad del *software*. esto significa que un programa escrito para un sistema que cumple con estos estándares puede ser compilado y ejecutado en otro sistema compatible sin la necesidad de reescribir su código.
2.
   1. una distribución Linux o distribución GNU/Linux (abreviada con frecuencia distro) es un conjunto de aplicaciones reunidas que permiten brindar mejoras para instalar fácilmente un sistema operativo basado en GNU/Linux.
   2. se diferencian entre sí por las herramientas para configuración y sistemas de administración de paquetes de software para instalar. la elección de una distribución depende de las necesidades del usuario y de gustos personales.
   3. Debian es un sistema operativo (SO) libre para el ordenador. Debian GNU/Linux proporciona mucho más que un simple SO: incluye un amplio rango de programas. concretamente ofrece más de 118.000 paquetes precompilados distribuidos en un formato que hace más sencilla la instalación en un ordenador.

      **Orígenes (1993-1996)**

      agosto de 1993: Ian Murdock funda el proyecto Debian como una distribución de Linux abierta y comunitaria.

      1994-1995: se lanzan las primeras versiones 0.9x.

      junio de 1996: se lanza la primera versión estable, Debian 1.1 "Buzz".

      **Desarrollo y evolución de versiones (1996-Presente)**

      1996-1999: se lanzan otras versiones tempranas: 1.2 "Rex", 1.3 "Bo", 2.0 "Hamm" (la primera multiplataforma), 2.1 "Slink", y 2.2 "Potato".

      julio de 2002: se lanza Debian 3.0 "Woody".

      junio de 2005: se lanza Debian 3.1 "Sarge".

      continuación: las versiones posteriores siguen nombres de personajes de Toy Story, como 4.0 "Etch", 5.0 "Lenny", 6.0 "Squeeze", 7 "Wheezy", 8 "Jessie", 9 "Stretch", y 10 "Buster".

      Debian 12 "Bookworm": la última versión estable oficial, lanzada para ofrecer una base de software confiable y segura.

      << *El proyecto Debian es una asociación de personas que comparten un objetivo: queremos crear un sistema operativo libre, disponible para todo el mundo. Ahora bien, cuando utilizamos el término «libre» no estamos hablando de dinero, sino que nos referimos a la libertad del software (N. del T.: en el original en inglés se utiliza el término «free», que es sinónimo de «gratuito» y de «libre»). >>*
3.
   1. cuando hablamos de un SO GNU hacemos referencia a tres elementos fundamentales:
      * el kernel (núcleo)
      * el shell (intérprete de comandos)
      * el filesystem (sistema de archivos)
   2. **1. El Kernel (Linux)**

      el kernel, o núcleo del sistema, es el corazón de GNU/Linux. es la parte del sistema que se comunica directamente con el hardware de la computadora. el kernel es responsable de gestionar los recursos de la máquina, como la memoria, la CPU y los dispositivos de entrada/salida. es el encargado de la multitarea y de asignar los recursos del sistema a los diferentes procesos que se están ejecutando.

      **2. El Shell**

      el shell es el intérprete de comandos. actúa como una interfaz entre el usuario y el kernel. cuando escribes un comando, el shell lo traduce a un formato que el kernel puede entender para que lo ejecute. hay varios shells, como Bash (Bourne Again Shell), que es el más popular en las distribuciones de GNU/Linux.

      **3. Las Utilidades GNU**

      las utilidades GNU son un conjunto de herramientas de software de libre distribución. incluyen programas básicos para la gestión de archivos y directorios, la edición de texto y la programación. ejemplos de estas utilidades son ls (listar archivos), cp (copiar), mv (mover) y grep (buscar patrones en archivos). estas herramientas son lo que distingue a GNU/Linux de otros sistemas operativos basados solo en el kernel de Linux.
4.
   1. • ejecuta programas y gestiona dispositivos de hardware
      • es el encargado de que el software y el hardware puedan trabajar juntos
      • sus funciones más importantes son la administración de memoria, CPU y la E/S
      • en sí, y en un sentido estricto, es el sistema operativo
      • es un núcleo monolítico híbrido:
      • los drivers y código del kernel se ejecutan en modo privilegiado
      • lo que lo hace híbrido es la capacidad de cargar y descargar funcionalidad a través de módulos
      • está licenciado bajo la licencia GPL v2
   2. la versión actual estable del kernel de Linux es la 6.16.3, lanzada el 23 de agosto de 2025.

      antes del kernel 2.4, el esquema de versionado se definía con la siguiente estructura: MAJOR.MINOR.PATCH donde el número MINOR era clave para indicar la estabilidad de la versión.
      * si el número MINOR era impar (como 2.1, 2.3), significaba que era una versión de desarrollo. estas versiones no estaban destinadas para uso en producción porque contenían bugs y nuevas funcionalidades aún no probadas.
      * si el número MINOR era par (como 2.2), significaba que era una versión estable. estas eran las versiones recomendadas para los usuarios y servidores, ya que solo recibían parches de seguridad y correcciones de errores, sin nuevas funcionalidades.

      la versión del kernel de Linux actualmente consta de cuatro números. por ejemplo, asumamos que el número de la versión está compuesta de esta forma: A.B.C[.D] (ej.: 2.6.12.3).
      * A: este es el número de versión principal (Major). cambia muy raramente y solo cuando hay cambios muy grandes en el kernel, como la introducción de nuevas arquitecturas o la eliminación de componentes importantes.
      * B: es el número de versión menor (Minor). este número cambia con cada nueva versión del kernel. en versiones anteriores a la 2.6, este número determinaba si la rama era estable (par) o de desarrollo (impar). hoy en día, esto ya no es relevante; simplemente indica una nueva rama principal de desarrollo.
      * C: es el número de la revisión (Revision). este número aumenta con cada lanzamiento de parches y correcciones de errores. cuando se corrige un fallo de seguridad o se arregla un bug, este es el número que se incrementa.
      * [.D]: el cuarto número (.D) es opcional y se utiliza para indicar una corrección o un parche urgente, a menudo después de que se ha lanzado una versión oficial. por ejemplo, una versión como 6.1.12.1 indicaría una corrección muy específica para la versión 6.1.12.

      el cambio principal que se impuso a partir de la versión 2.6, y que se mantiene hasta hoy, es la eliminación del significado de "par/impar" para el número B. esto permitió un ciclo de desarrollo más rápido y continuo.
   3. sí, es posible. cuando se instala un nuevo kernel en la mayoría de las distribuciones de Linux (como Ubuntu o Debian), el sistema de gestión de paquetes no elimina las versiones anteriores. simplemente añade la nueva versión a la lista de opciones de arranque.

      el gestor de arranque, como GRUB (Grand Unified Bootloader), es la herramienta que hace esto posible. al iniciar el equipo, GRUB te presenta un menú donde puedes elegir qué versión del kernel quieres arrancar. si no haces ninguna selección, GRUB suele iniciar la versión más reciente por defecto.
   4.
      * /boot: este directorio es el lugar más importante. contiene la imagen del kernel (vmlinuz) y otros archivos relacionados necesarios para el arranque del sistema, como el initrd (disco de memoria virtual inicial) y la configuración del gestor de arranque, como GRUB.
      * /lib/modules: en este directorio se almacenan todos los módulos del kernel (.ko - kernel object). los módulos son como *drivers* o extensiones que el kernel puede cargar o descargar dinámicamente según sea necesario, sin tener que reiniciar el sistema. cada versión del kernel instalada tiene su propio subdirectorio dentro de /lib/modules.
5.
   1. el shell -también conocido como el intérprete de comandos línea de comandos, terminal o consola- es un programa que actúa como interfaz para comunicar al usuario con el sistema operativo mediante una ventana que espera comandos textuales ingresados por el usuario en el teclado, los interpreta y los entrega al SO para su ejecución. la respuesta del SO es mostrada al usuario en la misma ventana. a continuación, la shell queda esperando más instrucciones. se interactúa con la información de la manera más simple posible, sin gráficas, solo el texto.
   2. el funcionamiento del shell consiste en que, en su forma más básica, se muestra un prompt (conjunto de caracteres que se muestran en una línea de comandos para indicarnos que está a la espera de ordenes. en el Bourne Shell y sus derivados, el prompt suele ser el carácter $ para los usuarios y # para el administrador), en donde el usuario teclea una orden en el teclado y finaliza la orden (normalmente con la tecla Intro/Enter), y la computadora ejecuta la orden, proporcionando una salida de texto.
   3. /bin/sh - Bourne Shell: está disponible en todas las versiones de UNIX y es lo suficientemente básico como para que funcione en todas las plataformas.

      /bin/bash - Bourne Again Shell: uno de los shells más avanzados y populares en GNU/Linux. tiene licencia GNU. ofrece las mismas capacidades que csh, pero incluye funciones avanzadas: un historial de los comandos ejecutados, que se conserva incluso al pasar de una sesión a otra, accesible utilizando los cursores (arriba/abajo), auto completado de nombres de comandos o archivos presionando TAB, manejo de varios tipos de redirecciones de entrada/salida.

      /bin/zsh: se diseñó para poder usarse interactivamente. se le han incorporado muchas de las características principales de otras shells de Unix como bash, ksh y además posee características propias originales. macOS Catalina, lanzada en octubre de 2019 adoptó a Zsh como la shell predeterminada, reemplazando a Bash.

      el Bourne Shell (sh) es bastante básico y, por ende, flexible entre todas las plataformas. por otro lado, Bourne Again Shell (bash) es igualmente muy conocido pero con muchas más funciones que el Bourne Shell. finalmente, zsh es más interactiva, adoptando bastantes características de otras shells de Unix.
   4. los comandos internos del shell no se encuentran en un path específico porque están embebidos directamente en el intérprete de comandos, como Bash (Bourne Again Shell). no son archivos ejecutables separados. cuando se escribe un comando como cd (cambiar de directorio), echo o pwd (imprimir directorio de trabajo), el shell lo ejecuta sin tener que buscarlo en ningún directorio.

      los comandos externos son programas ejecutables que se encuentran en directorios específicos. el shell los busca en una lista de rutas de directorios definida en la variable de entorno $PATH. cuando se escribe un comando como ls, grep o nano, el shell recorre los directorios listados en $PATH hasta que encuentra el archivo ejecutable del comando.
   5. la shell no forma parte del kernel básico del SO; sino que la misma "dialoga" con el kernel. la shell es iniciada por un proceso denominado "login", y dado que cada usuario tiene asignado una shell por defecto, la misma se inicia cada vez que un usuario comienza a trabajar en su estación de trabajo (es decir se "loguea" en una terminal). dentro del contenido del archivo /etc/passwd, se puede ver cual es la shell que cada usuario tiene asignada por defecto.
   6. el shell de un usuario se define en el sexto campo del archivo /etc/passwd. cada línea en este archivo representa una cuenta de usuario y tiene la siguiente estructura, con los campos separados por dos puntos (:):

      `nombre_usuario:contraseña:UID:GID:GECOS:directorio_home:**shell**`

      no cualquier usuario puede realizar esta tarea. la modificación del archivo /etc/passwd requiere privilegios de superusuario, es decir, del usuario root. esto se debe a que este archivo es crítico para la seguridad y la funcionalidad del sistema. si un usuario sin privilegios pudiera cambiar su shell a un programa malicioso, podría comprometer la seguridad de la máquina.

      los administradores del sistema usan herramientas como chsh (change shell) para modificar el shell de un usuario de forma segura. por ejemplo, para cambiar el shell del usuario juan a /bin/zsh, un administrador con permisos de sudo usaría el siguiente comando:

      ```bash
      sudo chsh -s /bin/zsh juan
      ```
6.
   1. un sistema de archivos es la estructura lógica que un sistema operativo utiliza para organizar, almacenar, nombrar y gestionar archivos en un dispositivo de almacenamiento (como un disco duro, SSD, o memoria USB).
   2. la estructura de directorios en GNU/Linux es un árbol jerárquico que comienza desde un directorio raíz, simbolizado con la barra /.

      la sigla FHS se refiere a Filesystem Hierarchy Standard, que es un estándar que define la estructura principal de directorios y el contenido de cada uno, asegurando la consistencia entre las diferentes distribuciones de GNU/Linux.
      * /: directorio raíz. es el directorio principal de todo el sistema de archivos. todo lo demás se encuentra dentro de él.
      * /bin: binarios esenciales del usuario. contiene programas ejecutables esenciales para todos los usuarios, como ls, cp, y mv.
      * /sbin: binarios del sistema. contiene programas ejecutables para la administración del sistema que solo pueden ser ejecutados por el *root* o con privilegios.
      * /etc: archivos de configuración. contiene los archivos de configuración del sistema, como /etc/passwd y /etc/hosts.
      * /home: directorios de usuario. aquí se almacenan los directorios personales de cada usuario.
      * /root: es el directorio personal del usuario root.
      * /dev: archivos de dispositivos. contiene archivos especiales que representan dispositivos de *hardware* (ej: /dev/sda1).
      * /proc: archivos del sistema en ejecución. es un *pseudo* sistema de archivos que contiene información sobre los procesos del sistema y el kernel.
      * /usr: jerarquía de solo lectura del usuario. contiene la mayoría de los programas y librerías que no son esenciales para el arranque.
      * /var: datos variables. contiene archivos que cambian constantemente, como *logs* del sistema (/var/log).
   3. GNU/Linux soporta una gran variedad de sistemas de archivos, tanto nativos como de otros sistemas operativos. algunos de los más importantes son:
      * ext2, ext3, ext4: nativos de Linux. ext4 es el más común en la actualidad, ya que es la evolución de los anteriores y ofrece mejoras significativas en rendimiento y robustez.
      * XFS: creado por SGI, conocido por su alto rendimiento.
      * Btrfs: un sistema de archivos moderno con características como snapshots y checksums.
      * ZFS: otro sistema avanzado con funcionalidades como gestión de volúmenes, snapshots y duplicación de datos.
      * FAT/FAT32, exFAT: de uso común en memorias USB y tarjetas SD.
      * NTFS: el sistema de archivos nativo de Windows.
      * HFS+: el sistema de archivos de Apple macOS.
   4. sí, es posible. GNU/Linux tiene soporte incorporado para leer y escribir en particiones FAT y NTFS. esto se logra a través de controladores (drivers) y utilidades. para NTFS, se utiliza el controlador NTFS-3G, que permite un soporte completo de lectura y escritura.
7.
   1. una partición es una división lógica de un disco duro. el sistema operativo ve cada partición como una unidad de almacenamiento separada.

      tipos:
      * primaria: un disco puede tener hasta cuatro particiones primarias.
      * extendida: es un tipo especial de partición primaria que actúa como un contenedor para las particiones lógicas. solo puede haber una partición extendida por disco.
      * lógica: particiones contenidas dentro de una partición extendida. el número de particiones lógicas es prácticamente ilimitado.

      ventajas:
      * organización: permite separar los datos del sistema operativo de los datos del usuario.
      * seguridad: en caso de que una partición se corrompa, los datos en otras particiones no se verán afectados.
      * multisistema: permite instalar varios sistemas operativos en el mismo disco duro (*dual-booting*).

      desventajas:
      * ineficiencia: el espacio no utilizado en una partición no puede ser usado por otra partición sin herramientas de redimensionamiento.
      * complejidad: un mal particionamiento puede llevar a problemas de espacio o estabilidad.
   2. en GNU/Linux, las particiones se identifican por el nombre del disco y el número de partición, en el directorio /dev.
      * discos IDE: se nombran como hda, hdb, etc., y las particiones como hda1, hda2.
      * discos SCSI, SATA, USB, NVMe: se nombran como sda, sdb, etc. las particiones se nombran con un número:
        * sda1: primera partición del primer disco SATA.
        * sdb2: segunda partición del segundo disco SATA.
        * las particiones lógicas se numeran a partir del 5 (ej: sda5, sda6).
   3. cómo mínimo se necesita una partición para el /.

      1. partición Raíz:
      * tipo: primaria
      * identificación: sda1
      * tipo de FS: ext4
      * punto de montaje: /

      2. partición de Intercambio (Swap):
      * tipo: primaria o lógica
      * identificación: sda2
      * tipo de FS: swap
      * punto de montaje: ninguno (se usa para memoria virtual)
   4. uso en *Desktop*:
      * / (raíz): ext4, 20-30 GB
      * /home: ext4, el resto del disco
      * swap: swap, igual o el doble de la memoria RAM.

      uso en Servidor:
      * / (raíz): ext4, 10-20 GB
      * /var: ext4, 20-50 GB (para *logs*, bases de datos, web)
      * /home: ext4, 1-2 GB (para usuarios)
      * /tmp: ext4, 5-10 GB
      * swap: swap, 4 GB

      particionamiento de SSD:
      * / (raíz): ext4
      * no usar swap o usar un archivo swap en lugar de una partición para reducir la escritura en la unidad.
   5. GNU Parted: herramienta de línea de comandos, potente y flexible. se usa en entornos de servidor.

      GParted: la versión gráfica de GNU Parted. es muy intuitiva y fácil de usar, ideal para usuarios de *desktop*.

      Disk Utility (Ubuntu): herramienta gráfica incorporada en la mayoría de las distribuciones de Linux.

      fdisk, sfdisk, cfdisk: utilidades de línea de comandos más antiguas, aún muy usadas por su sencillez y eficacia.
8.
   1. el BIOS (Basic Input Output System) es un software de bajo nivel que se halla en el motherboard. cuando se arranca la computadora el BIOS se ejecuta, realizando el POST (Power-on self-test), que incluye rutinas que, entre otras actividades, fijan valores de las señales internas, y ejecutan test internos (RAM, el teclado, y otros dispositivos a través de los buses ISA y PCI).

      luego se lee el primer sector del disco de inicio (seleccionado de entre un conjunto de posibles dispositivos de arranque), llamado MBR (master boot record). esto se carga en memoria y se ejecuta. el MBR puede contener un código de arranque denominado MBC (master boot code) y una marca de 2 bytes que indica su presencia o puede solamente contener la tabla de particiones. en el último caso el BIOS ignora este MBR.
   2. UEFI está definido para las arquitecturas IA32, IA64, AMD64 y ARM, pero para poder hacer una comparación objetiva con el BIOS tradicional detallaremos solamente el proceso de arranque de UEFI en las arquitecturas IA32 y AMD64. la interfaz de comunicación entre el preboot environment y el sistema operativo, que define UEFI, consta simplemente de tablas de datos en memoria con información sobre el hardware y configuración del firmware. estas estructuras tienen, además, punteros a las rutinas que implementan los servicios que el firmware ofrece a los bootloaders y a otras aplicaciones UEFI. UEFI provee un Boot Manager que permite cargar aplicaciones y drivers UEFI desde el UEFI filesystem (este filesystem puede ser FAT12, FAT16 o FAT32) o por red. en este esquema el boot loader (por ejemplo la versión de Grub2 para UEFI) es un tipo especial de aplicación UEFI que al ser cargado se ejecuta ya en "modo protegido" o en "long mode" dependiendo de la arquitectura y tiene a su disposición los servicios de UEFI. de esta forma el boot loader no tiene las restricciones de tamaño impuestas por el antiguo BIOS ni la imposición de tener que arrancar en "modo real" (con direcciones de 20 bits).
   3. el MBR (Master Boot Record) es el primer sector de un disco duro o dispositivo de almacenamiento. contiene la tabla de particiones del disco y un pequeño programa de arranque llamado MBC (Master Boot Code).

      el MBC es el código ejecutable dentro del MBR. su tarea es encontrar la partición de arranque, cargar el gestor de arranque de esa partición y pasarle el control para que inicie el sistema operativo.
   4. GPT (GUID Partition Table) especifica la ubicación y formato de la tabla de particiones en un disco duro. es parte de EFI. puede verse como una sustitución del MBR como era pensado en la BIOS.

      GPT usa modo de direccionamiento lógico (LBA, logical block addressing) en vez del modo cilindro-cabeza-sector usado con el MBR. el MBR "heredado" se almacena en el LBA 0.
   5. un Gestor de Arranque (*bootloader*) es un programa que se carga en la memoria después del BIOS o UEFI y antes que el sistema operativo. su funcionalidad principal es presentar al usuario un menú con los sistemas operativos instalados en la máquina y cargar el seleccionado.
      * tipos de gestores de arranque conocidos:
        * GRUB2 (Grand Unified Bootloader): el gestor de arranque más popular en GNU/Linux.
        * LILO (Linux Loader): un gestor de arranque más antiguo.
        * Systemd-boot: gestor de arranque simple y ligero usado en algunas distribuciones.
      * ubicación: generalmente, se instala en el MBR o en la partición EFI (para sistemas UEFI) del disco duro.
   6.
      1. encendido: el usuario enciende la computadora.
      2. POST: el BIOS/UEFI ejecuta el POST para verificar el *hardware*.
      3. carga del Gestor de Arranque: el BIOS/UEFI busca un dispositivo de arranque (disco duro, USB) y carga el gestor de arranque (ej: GRUB) en la memoria RAM.
      4. menú del Gestor de Arranque: el gestor de arranque muestra un menú con los sistemas operativos disponibles.
      5. carga del SO: el usuario selecciona un sistema operativo, y el gestor de arranque carga el kernel y los archivos necesarios en la memoria RAM.
      6. inicio del SO: el kernel toma el control y completa el proceso de arranque del sistema operativo.
   7.
      1. BIOS/UEFI y GRUB: el BIOS/UEFI carga GRUB, que muestra un menú con las opciones de arranque.
      2. carga del Kernel e initrd: GRUB carga la imagen del kernel (vmlinuz) y un disco de memoria virtual inicial (initrd.img) desde el directorio /boot a la memoria RAM.
      3. kernel toma el control: el kernel se inicializa, configura el *hardware* y monta el sistema de archivos raíz (/) usando los controladores en initrd.
      4. systemd: el kernel inicia el proceso init (que en la mayoría de las distribuciones modernas es systemd).
      5. servicios de arranque: systemd lee sus configuraciones y arranca los servicios del sistema (red, bases de datos, etc.).
      6. login: una vez que todos los servicios necesarios han iniciado, el sistema presenta la pantalla de inicio de sesión o la interfaz gráfica del usuario.
   8.
      1. comando de shutdown: un usuario con privilegios de administrador ejecuta un comando como shutdown, halt o reboot.
      2. envío de señales SIGTERM: el sistema envía una señal (SIGTERM) a todos los procesos en ejecución, pidiéndoles que se cierren de manera ordenada.
      3. espera de finalización: el sistema espera un breve período de tiempo para que los procesos se cierren. si un proceso no responde, se le envía una señal SIGKILL para terminarlo de forma forzada.
      4. sincronización de datos: el sistema sincroniza los datos en la memoria con el disco duro para evitar la pérdida de información.
      5. desmontaje del File System: el sistema de archivos se desmonta en modo de solo lectura.
      6. apagado o reinicio: finalmente, el sistema operativo le dice al *hardware* que se apague o se reinicie.
   9. sí, es posible. esta configuración se conoce como arranque dual o dual-boot.

      un solo disco duro puede dividirse en múltiples particiones. es posible instalar un sistema operativo en una partición (ej: Windows) y otro en una partición diferente (ej: GNU/Linux). durante el proceso de instalación de Linux, el gestor de arranque (como GRUB) detecta la presencia de Windows y se configura para ofrecer un menú de selección al iniciar la computadora, permitiendo al usuario elegir qué sistema operativo desea cargar.
9.
   1. los archivos en GNU/Linux se identifican por su nombre y su ubicación en el sistema de archivos. a diferencia de Windows, la extensión del archivo (ej: .exe) no define el tipo de archivo de forma estricta, sino que es una convención. los permisos, el propietario y el grupo de un archivo también son parte de su identificación.
   2. Vim: es un editor de texto muy potente, pero con una curva de aprendizaje pronunciada. funciona en modos:
      * normal: para navegar por el archivo.
      * insert: para escribir.
      * visual: para seleccionar texto.
      * comando: para ejecutar comandos de edición.

      Nano: editor de texto simple y amigable para principiantes. las opciones de comandos se muestran en la parte inferior de la pantalla. es ideal para ediciones rápidas.

      Mcedit: editor del gestor de archivos Midnight Commander. ofrece una interfaz similar a otros editores visuales, con menús y atajos de teclado fáciles de recordar.

      *cat*: muestra el contenido completo de un archivo en la terminal. útil para archivos pequeños.

      *more*: muestra el contenido de un archivo página por página.

      *less*: una versión más avanzada de more. permite navegar hacia adelante y hacia atrás en el archivo.
   3. `IntroALosSistemasOperativos/2025/Prácticas/Práctica 1/prueba.exe`
   4.
   5.
      1. cd: accede a determinada ruta desde donde se encuentra uno parado;
      2. mkdir: crea un directorio;
      3. rmdir: elimina un directorio;
      4. ln: crea enlaces a archivos (como el acceso directo en Windows);
      5. tail: muestra las últimas líneas de un archivo;
      6. locate: busca archivos por nombre;
      7. ls: lista directorios y archivos;
      8. pwd: muestra el directorio actual;
      9. cp: copia archivos y directorios;
      10. mv: mueve o renombra archivos y directorios;
      11. find: busca archivos recursivamente.
10.
    1. `mkdir ISOCSO`
    2. `cd ISOCSO/`
    3. ```bash
       touch isocso.txt
       touch isocso.csv
       ```
    4. `ls`
    5. `pwd`
    6. `find . -name "iso*"`
    7. `df -h`
    8. `who`
    9. ```bash
       vim isocso.txt
       # i
       # escribo Federico Dobal
       # Escape
       # :wq
       ```
    10. `tail isocso.txt`
11.

    | Comando | Funcionamiento | Parámetros | Ubicación |
    | :---- | :---- | :---- | :---- |
    | `man` | interfaz para los manuales de referencia del sistema | `man [ man opciones ] [[ sección ] página ...] ...  man -k [ apropos opciones ] regexp ...  man -K [ man opciones ] [ sección ] término ...  man -f [ whatis opciones ] página ...  man -l [ man opciones ] archivo ...  man -w \| -W [ man opciones ] página ...` | `/usr/local/etc/man_db.conf` archivo de configuración man-db. `/usr/share/man` jerarquía de páginas de manual global. |
    | `shutdown` | detener, apagar o reiniciar la máquina | `shutdown [OPTIONS...] [TIME] [WALL...]` | `/sbin/shutdown` |
    | `reboot` | reiniciar el equipo | `reboot [OPCIONES…]` | `/sbin/reboot` |
    | `halt` | detiene el equipo | `halt [OPCIONES…]` | `/sbin/halt` |
    | `uname` | imprime información del sistema | `uname [OPCIONES…]` | `/usr/bin/uname` |
    | `dmesg` | imprime o controla el buffer del anillo del kernel | `dmesg [OPCIONES…]  dmesg --clear  dmesg --read-clear [OPCIONES…]  dmesg --console-level level  dmesg --console-on  dmesg --console-off` | `/usr/bin/dmesg` |
    | `lspci` | listar todos los dispositivos PCI | `lspci [OPCIONES…]` | `/usr/share/misc/pci.ids` `/usr/share/misc/pci.ids.gz` `$XDG_CACHE_HOME/pci-ids` |
    | `at` | ejecuta órdenes a una determinada hora | `at [-V] [-q cola] [-f archivo] [-u nombreusuario] [-mMlv] timespec ...  at [-V] [-q cola] [-f archivo] [-u nombreusuario] [-mMkv] [-t tiempo]  at -c tarea [...]  at [-V] -l [-o formatotiempo] [tarea ...]  at [-V] [-q cola] [-o formatotiempo] [tarea ...]  at [-rd] trabajo [...]` | `/var/spool/cron/atjobs` `/var/spool/cron/atspool` `/proc/loadavg` `/var/run/utmp` `/etc/at.allow` `/etc/at.deny` |
    | `netstat` | muestra conexiones de red, tablas de enrutamiento, estadísticas de interfaces, conexiones enmascaradas e información de los miembros de grupos de multidifusión. | `netstat [opciones_familia_dirección] [--tcp\|-t] [--udp\|-u] [--udplite\|-U] [--sctp\|-S] [--raw\|-w] [--l2cap\|-2] [--rfcomm\|-f] [--listening\|-l] [--all\|-a] [--numeric\|-n] [--numeric-hosts] [--numeric-ports] [--numeric-users] [--symbolic\|-N] [--extend\|-e[--extend\|-e]] [--timers\|-o] [--program\|-p] [--verbose\|-v] [--continuous\|-c] [--wide\|-W]  netstat {--route\|-r} [opciones_familia_dirección] [--extend\|-e[--extend\|-e]] [--verbose\|-v] [--numeric\|-n] [--numeric-hosts] [--numeric-ports] [--numeric-users] [--continuous\|-c]  netstat {--interfaces\|-i} [--all\|-a] [--extend\|-e[--extend\|-e]] [--verbose\|-v] [--program\|-p] [--numeric\|-n] [--numeric-hosts] [--numeric-ports] [--numeric-users] [--continuous\|-c]  netstat {--groups\|-g} [--numeric\|-n] [--numeric-hosts] [--numeric-ports] [--numeric-users] [--continuous\|-c]  netstat {--masquerade\|-M} [--extend\|-e] [--numeric\|-n] [--numeric-hosts] [--numeric-ports] [--numeric-users] [--continuous\|-c]  netstat {--statistics\|-s} [--tcp\|-t] [--udp\|-u] [--udplite\|-U] [--sctp\|-S] [--raw\|-w]  netstat {--version\|-V}  netstat {--help\|-h}` | `/etc/services` `/proc` `/proc/net/…` `/sys/kernel/debug/bluetooth/…` |
    | `head` | muestra la primera parte de un archivo | `head [OPCIONES…] [ARCHIVO…]` | `usr/bin/head` |
    | `tail` | muestra la parte final de un archivo | `tail [OPCIONES…] [ARCHIVO…]` |  |
12.
    1. en Linux, un proceso es una instancia de un programa en ejecución, con su propio ID (PID) único y un espacio de memoria. se gestionan mediante herramientas como ps, top o htop, que muestran su estado (ejecutándose, detenido, etc.), consumo de recursos y jerarquía. los procesos pueden ser del sistema o de usuario, y sus estados pueden incluir activo, dormido, detenido o zombi, con la posibilidad de finalizarlos con el comando kill.

       PID significa Process ID o Identificador de Proceso. es un número entero que el sistema operativo asigna de forma única a cada programa o tarea en ejecución (proceso).

       PPID significa Process Parent ID (ID del Proceso Padre). es el ID del proceso (PID) del proceso que creó o inició otro proceso. el PPID establece una relación padre-hijo entre procesos, formando una estructura de árbol, donde cada proceso hijo tiene el mismo PPID que su proceso padre.

       todos los procesos tienen un PID (Process ID) y un PPID (Parent Process ID), con la excepción del proceso "PID 0", un pseudo-proceso que inicia al sistema y no tiene padre, y el proceso "PID 1" (init/systemd), que se considera la raíz de toda la jerarquía de procesos y, por lo tanto, tiene un PPID de 0.

       atributos más importantes de los procesos:
       * PID (ID de Proceso): un número único que identifica a cada proceso en el sistema.
       * nombre del Proceso: el nombre del comando que se ejecutó para iniciar el proceso.
       * usuario Propietario: el nombre del usuario que creó o es dueño del proceso.
       * estado del Proceso: indica en qué fase del ciclo de vida se encuentra el proceso, como:
         * en ejecución: el proceso está actualmente utilizando la CPU.
         * en suspensión (interrumpible e ininterrumpible): el proceso ha sido pausado y está esperando un evento o recursos.
         * detenido: el proceso ha sido detenido por una señal, como SIGSTOP, y puede reanudarse con SIGCONT.
         * zombi: el proceso ha terminado, pero su entrada en la tabla de procesos todavía existe hasta que su proceso padre la recolecta.
       * padre/Hijo: los procesos existen en una jerarquía. cada proceso tiene un proceso padre y puede crear procesos hijo, a quienes puede gestionar.
    2.

       | Comando | Funcionamiento | Parámetros | Ubicación |
       | :---- | :---- | :---- | :---- |
       | `top` | muestra los procesos de Linux | `top [OPCIONES…]` | `/usr/bin/top` |
       | `htop` | es un visor de procesos multiplataforma. además de lo que hace top, permite scrollear horizontal y verticalmente, e interactuar con el mouse | `htop [-dCFhpustvH]  pcp-htop [-dCFhpustvH] [--host/-h host]` | `/usr/bin/htop` |
       | `ps` | muestra información de los procesos activos actualmente | `ps [OPCIONES…]` | `/usr/bin/ps` |
       | `pstree` | muestra un árbol de los procesos activos actualmente | `pstree [-a, --arguments] [-c, --compact-not] [-C, --color attr] [-g, --show-pgids] [-h, --highlight-all, -H pid, --highlight-pid pid] [-l, --long] [-n, --numeric-sort] [-N, --ns-sort ns] [-p, --show-pids] [-s, --show-parents] [-S, --ns-changes] [-t, --thread-names] [-T, --hide-threads] [-u, --uid-changes] [-Z, --security-context] [-A, --ascii, -G, --vt100, -U, --unicode] [pid, user]  pstree -V, --version` | `/usr/bin/pstree` |
       | `kill` | envía una señal a un proceso. la señal por defecto es TERM (terminar proceso). | `kill [OPCIONES…] <pid> [...]` | `/usr/bin/kill` |
       | `pgrep` | examina los procesos que se están ejecutando actualmente y enumera los ID de procesos que coinciden con los criterios de selección indicados en el patrón. | `pgrep [OPCIONES…] pattern` | `/usr/bin/pgrep` |
       | `pkill` | termina los procesos que se están ejecutando actualmente y enumera los ID de procesos que coinciden con los criterios de selección indicados en el patrón. | `pkill [OPCIONES…] pattern` | `/usr/bin/pkill` |
       | `killall` | termina procesos por nombre. | `killall [-Z, --context pattern] [-e, --exact] [-g, --process-group] [-i, --interactive] [-n, --ns PID] [-o, --older-than TIME] [-q, --quiet] [-r, --regexp] [-s, --signal SIGNAL, -SIGNAL] [-u, --user user] [-v, --verbose] [-w, --wait] [-y, --younger-than TIME] [-I, --ignore-case] [-V, --version] [--] name …  killall -l, --list  killall -V, --version` | `/usr/bin/killall` |
       | `renice` | altera la prioridad de los procesos actuales. | `renice [--priority\|--relative] priority [-g\|-p\|-u] identifier...` | `/usr/bin/renice` |
       | `xkill` | es una utilidad para forzar al servidor X a cerrar las conexiones con los clientes. | `xkill [-display displayname] [-id resource] [-button number] [-frame] [-all] [-version]` | `/usr/bin/xkill` |
       | `atop` | monitor avanzado de sistemas y procesos. | `Live measurement in bar graph mode: atop -B[H] [-t [absdir]] [interval [samples]]  Live measurement cgroups in text mode: atop -G [-t [absdir]] [-2\|-3\|-4\|-5\|-6\|-7\|-8\|-9] [-a] [-C\|-M\|-D\|-A] [interval [samples]]  Live measurement processes in text mode: atop [-t [absdir]] [-g\|-m\|-d\|-n\|-u\|-p\|-s\|-c\|-v\|-o\|-y\|-Y] [-C\|-M\|-D\|-N\|-A] [-fFX1xR] [interval [samples]]  Live generation of parsable output (white-space separated or JSON): atop [-Plabel[,label]... [-Z]] [-Jlabel[,label]...] [interval [samples]]  Write raw log files: atop -w rawfile [-a] [-S] [interval [samples]]  Analyze raw log files in bar graph mode: atop -B[H] -r [rawfile\|yyy...] [-b [YYYYMMDD]hhmm[ss]] [-e [YYYYMMDD]hhmm[ss]]  Analyze cgroups from raw log files in text mode: atop -G [-2\|-3\|-4\|-5\|-6\|-7\|-8\|-9] [-a] -r [rawfile\|yyy...] [-b [YYYYMMDD]hhmm[ss]] [-e [YYYYMMDD]hhmm[ss]]  Analyze processes from raw log files in text mode: atop -r [rawfile\|yyy...] [-b [YYYYMMDD]hhmm[ss]] [-e [YYYYMMDD]hhmm[ss]] [-g\|-m\|-d\|-n\|-u\|-p\|-s\|-c\|-v\|-o\|-y\|-Y] [-C\|-M\|-D\|-N\|-A] [-fFX1xR]  Generate parsable output from raw log files (white-space separated or JSON): atop -r [rawfile\|yyy...] [-b [YYYYMMDD]hhmm[ss]] [-e [YYYYMMDD]hhmm[ss]] [-Plabel[,label]... [-Z]] [-Jlabel[,label]...]` | `/usr/bin/atop` |
       | `nice` | ejecuta un programa con la prioridad de planificación modificada. | `nice [OPCIONES…] [ORDEN [ARG]...]` | `/usr/bin/nice` |
13.
    1.
       1. **BIOS/UEFI y POST**: al encender la PC, el *firmware* (BIOS o UEFI) realiza un **P**ower-**O**n **S**elf-**T**est (POST) para verificar el *hardware*.
       2. **Carga del gestor de arranque**: el BIOS/UEFI busca un dispositivo de arranque (como el disco duro) y carga el **gestor de arranque** (ej: GRUB) en la memoria.
       3. **Carga del Kernel**: el gestor de arranque carga la imagen del **kernel** (vmlinuz) y el **initrd** (disco de memoria virtual inicial) desde la partición de arranque hacia la memoria RAM.
       4. **Inicio de init**: el kernel se inicializa, configura el *hardware*, y ejecuta el primer proceso del sistema, llamado **init**. este proceso siempre tiene el ID de proceso (PID) 1.
       5. **Ejecución de *Runlevels***: init lee el archivo de configuración /etc/inittab para determinar el nivel de ejecución (o *runlevel*) predeterminado y ejecutar los *scripts* correspondientes.
       6. **Inicio de servicios y *login***: se inician los servicios del sistema, se montan los sistemas de archivos y se presenta la pantalla de inicio de sesión (*login*).
    2. el kernel ejecuta el proceso init. principalmente, el objetivo de init es ser el padre de todos los procesos posteriores. gestiona el inicio y la detención de los servicios, supervisa los procesos huérfanos (procesos cuyos padres han terminado) y, en esencia, mantiene el sistema en funcionamiento.
    3. los niveles de ejecución (runlevels) son modos de operación del sistema que definen qué servicios se inician o se detienen. un runlevel especifica un conjunto particular de servicios y funcionalidades. por ejemplo, un runlevel podría iniciar todos los servicios para un entorno gráfico, mientras que otro solo iniciaría los servicios esenciales para la línea de comandos.

       el objetivo de los *runlevels* es permitir que el administrador del sistema inicie el sistema en un estado específico de funcionalidad. esto es útil para tareas de mantenimiento (como el modo de usuario único), o para arrancar el sistema con servicios mínimos para solucionar problemas.
    4.
       1. **Runlevel 0**: **Apagado** (*Halt*). el sistema se apaga.
       2. **Runlevel 1 (S o s)**: **Modo de usuario único**. se usa para tareas de mantenimiento, sin red y con servicios mínimos.
       3. **Runlevel 2**: **Multiusuario sin red**. es un modo multiusuario estándar.
       4. **Runlevel 3**: **Multiusuario con red**. es el modo completo de línea de comandos.
       5. **Runlevel 4**: **Reservado**. no tiene una función estándar y puede ser configurado por el usuario.
       6. **Runlevel 5**: **Multiusuario con red y entorno gráfico**. es el modo de escritorio completo.
       7. **Runlevel 6**: **Reinicio** (*Reboot*). el sistema se reinicia.
    5. la finalidad de /etc/inittab es definir el **nivel de ejecución predeterminado** y qué procesos deben ser ejecutados en cada *runlevel*.

       almacena una lista de procesos que init debe iniciar o detener cuando el sistema cambia de *runlevel*.

       cada línea del archivo tiene la siguiente estructura: `id:runlevels:action:process`
       * **id**: identificador único de 1 a 4 caracteres.
       * **runlevels**: nivel o niveles de ejecución en los que se debe ejecutar el proceso.
       * **action**: la acción que init debe tomar (ej: initdefault para definir el *runlevel* por defecto, sysinit para ejecutar *scripts* de inicialización, o respawn para reiniciar un proceso si se detiene).
       * **process**: el comando o *script* a ejecutar.
    6. para cambiar al runlevel \<Y\> se debe usar el comando `init Y`.

       no es un cambio permanente. solo surte efecto hasta el siguiente reinicio del sistema. al reiniciar, el sistema volverá a leer el archivo /etc/inittab y arrancará en el *runlevel* que se haya definido como predeterminado. para hacer un cambio permanente, debes editar el archivo /etc/inittab y modificar la línea de initdefault.
    7. los *scripts* **RC** (Runlevel Control) son *scripts* de *shell* que se ejecutan para iniciar o detener servicios cuando el sistema entra o sale de un *runlevel*. por ejemplo, un *script* RC podría iniciar el servidor web o detener la base de datos.

       se almacenan en directorios como /etc/rc.d o /etc/init.d.

       el sistema determina qué *script* ejecutar basándose en los **enlaces simbólicos** que se encuentran en directorios específicos para cada *runlevel* (ej: /etc/rc.d/rc5.d para el *runlevel* 5).
       * **S**: los *scripts* que comienzan con S (del inglés Start) se ejecutan cuando se ingresa a un *runlevel*.
       * **K**: los *scripts* que comienzan con K (del inglés Kill) se ejecutan cuando se sale de un *runlevel* para detener los servicios.
14.
    1. es un sistema de gestión del sistema y de servicios para GNU/Linux que actúa como el sistema de inicio (PID 1), gestionando el arranque del sistema operativo, los servicios, los puntos de montaje, el registro de eventos y la configuración de los componentes del sistema.
    2. una **Unit** (unidad) en **systemd** es la unidad básica de control. es un archivo de configuración que describe un recurso o servicio que **systemd** puede gestionar. existen varios tipos de unidades, como:
       * **Service unit (.service)**: para gestionar servicios de *daemon* (ej: un servidor web).
       * **Target unit (.target)**: para agrupar otras unidades y definir un estado del sistema (similar a un *runlevel*).
       * **Mount unit (.mount)**: para gestionar puntos de montaje de sistemas de archivos.
       * **Device unit (.device)**: para gestionar dispositivos de *hardware*.
    3. el comando systemctl se usa en Linux para controlar el sistema de inicio systemd y administrar los servicios del sistema. permite a los usuarios iniciar, detener, reiniciar, deshabilitar o habilitar servicios, así como verificar su estado y el de otras unidades del sistema.
       * para iniciar un servicio: `sudo systemctl start servicio.service`
       * para detener un servicio: `sudo systemctl stop servicio.service`
       * para reiniciar un servicio: `sudo systemctl restart servicio.service`
       * para comprobar el estado de un servicio: `systemctl status servicio.service`
       * para habilitar un servicio al arranque: `sudo systemctl enable servicio.service`
    4. en Systemd, un target (objetivo) es una unidad de systemd que agrupa varias unidades de servicio y otros targets para definir un estado final del sistema, como si fuera un grupo de servicios configurado para un propósito específico. sirven un propósito similar a los runlevels de los sistemas SysVinit, gestionando el inicio o la detención de grupos de servicios relacionados como una sola unidad, facilitando así la organización de configuraciones del sistema.
       * `default.target`: el target predeterminado del sistema.
       * `graphical.target`: inicia el sistema para un entorno de escritorio gráfico y multiusuario.
       * `multi-user.target`: inicia el sistema en un estado multiusuario, sin entorno gráfico, pero con servicios de red activos.
       * `reboot.target`: detiene el sistema y lo reinicia.
       * `poweroff.target`: detiene el sistema por completo
    5. este comando muestra en la consola una jerarquía de procesos en forma de árbol. todos los procesos salen del proceso padre systemd.
15.
    1. la información principal sobre los usuarios se guarda en el archivo /etc/passwd, que contiene detalles como el nombre de usuario, ID de usuario, ID de grupo, directorio personal y shell predeterminada. la información de las contraseñas, cifrada, se almacena de forma segura en /etc/shadow. los archivos de logs de actividad de los usuarios se encuentran en el directorio /var/log.
    2. las siglas UID (User Identifier) y GID (Group Identifier) hacen referencia a un número único que el sistema operativo Linux asigna a cada usuario y grupo, respectivamente, para identificar y controlar el acceso a los recursos del sistema. en un sistema Linux, los UIDs iguales sí pueden coexistir, pero no es recomendable, ya que un UID debe ser único para identificar a un usuario. sin embargo, la existencia de UIDs idénticos es una mala práctica y una violación de los principios de seguridad del sistema operativo, que debe ser evitado en la medida de lo posible para garantizar la seguridad y el buen funcionamiento.
    3. el usuario root es el superusuario en sistemas GNU/Linux, una cuenta con acceso y control total sobre el sistema, incluyendo la modificación de cualquier archivo y la administración de otros usuarios. no puede existir más de un usuario con el perfil de root, ya que su identificación se basa en un número de identificación único (UID). específicamente, la UID de root es siempre 0.
    4.
       1. `sudo groupadd informatica`
       2. `sudo useradd -m -g informatica isocso`
       3. `sudo touch /home/isocso/test.txt`
       4. `sudo chown isocso:informatica /home/isocso/test.txt`
       5. `sudo userdel -r isocso`
       6. `grep isocso /etc/passwd`
       7. `grep isocso /etc/group`
       8. `sudo groupdel informatica`
    5.

       | Comando | Funcionamiento | Parámetros |
       | :---- | :---- | :---- |
       | `useradd` y `adduser` | useradd.- crear un nuevo usuario o actualizar la información por defecto de un nuevo usuario. adduser.- agregar o manipular usuarios. | `useradd [options] LOGIN  useradd -D  useradd -D [options]  adduser [--add-extra-groups] [--allow-all-names] [--allow-bad-names] [--comment comment] [--conf file] [--debug] [--disabled-login] [--disabled-password] [--firstgid id] [--firstuid id] [--gid id] [--home dir] [--ingroup group] [--lastgid id] [--lastuid id] [--no-create-home] [--shell shell] [--quiet] [--uid id] [--verbose] [--stdoutmsglevel prio] [--stderrmsglevel prio] [--logmsglevel prio] user  adduser --system [--comment comment] [--conf file] [--debug] [--gid id] [--group] [--home dir] [--ingroup group] [--no-create-home] [--shell shell] [--uid id] [--quiet] [--verbose] [--stdoutmsglevel prio] [--stderrmsglevel prio] [--logmsglevel prio] user  adduser --group [--conf file] [--debug] [--firstgid id] [--gid ID] [--lastgid id] [--quiet] [--verbose] [--stdoutmsglevel prio] [--stderrmsglevel prio] [--logmsglevel prio] group  addgroup [--conf file] [--debug] [--firstgid id] [--gid ID] [--lastgid id] [--quiet] [--verbose] [--stdoutmsglevel prio] [--stderrmsglevel prio] [--logmsglevel prio] group  addgroup --system [--gid id] [--conf file] [--quiet] [--verbose] [--stdoutmsglevel prio] [--stderrmsglevel prio] [--logmsglevel prio] group  adduser [--conf file] [--debug] [--quiet] [--verbose] [--stdoutmsglevel prio] [--stderrmsglevel prio] [--logmsglevel prio] user group  adduser --help  adduser --version` |
       | `usermod` | modificar la cuenta de un usuario. | `usermod [options] LOGIN` |
       | `userdel` | eliminar la cuenta y los archivos relacionados de un usuario. | `userdel [options] LOGIN` |
       | `su` | ejecutar un comando con ID de usuario y grupo sustitutos. | `su [options] [-] [user [argument...]]` |
       | `groupadd` | crear un nuevo grupo. | `groupadd [OPTIONS] NEWGROUP` |
       | `who` | muestra quién está conectado al sistema. | `who [OPCIÓN]... [ FICHERO \| ARG1 ARG2 ]` |
       | `groupdel` | borrar un grupo. | `groupdel [options] GROUP` |
       | `passwd` | cambiar la contraseña de un usuario. | `passwd [options] [LOGIN]` |
16.
    1. los permisos sobre archivos se definen a través de tres tipos de permisos para tres tipos de usuarios:
       1. **r (lectura)**: permite leer el contenido de un archivo. en el caso de un directorio, permite listar los archivos que contiene.
       2. **w (escritura)**: permite modificar o borrar el contenido de un archivo. en un directorio, permite crear, renombrar o borrar archivos dentro de él.
       3. **x (ejecución)**: permite ejecutar un archivo como un programa o *script*. en un directorio, permite entrar en él (`cd`).

       estos tres permisos se aplican a tres categorías de usuarios:
       * **Propietario (u)**: el dueño del archivo, que generalmente es el usuario que lo creó.
       * **Grupo (g)**: el grupo al que pertenece el archivo. todos los miembros de este grupo tienen los permisos asignados a esta categoría.
       * **Otros (o)**: cualquier usuario que no sea el propietario ni pertenezca al grupo.

       los permisos se visualizan a través del comando `ls -l` y se representan en una cadena de 10 caracteres.
       * el **primer carácter** indica el tipo de archivo (ej: `-` para archivo regular, `d` para directorio, `l` para enlace simbólico).
       * los siguientes **nueve caracteres** se dividen en tres grupos de tres, cada uno para el propietario, el grupo y otros, en ese orden.

       por ejemplo, la representación de permisos `-rwxr-xr--` significa:
       * `-`: es un archivo regular.
       * `rwx`: el **propietario** tiene permisos de lectura, escritura y ejecución.
       * `r-x`: el **grupo** tiene permisos de lectura y ejecución, pero no de escritura.
       * `r--`: **Otros** solo tienen permisos de lectura.
    2.
       1. chmod: modifica los permisos de acceso de cada archivo conforme a modo, que puede ser una representación simbólica de dichas modificaciones o un número octal que representa el patrón de bits para el nuevo modo.
       2. chown: modifica la propiedad del usuario y/o grupo de cada archivo dado. si solo se proporciona un propietario (un nombre de usuario o ID de usuario numérico), ese usuario se convierte en el propietario de cada archivo dado y el grupo al que pertenecen los archivos no se modifica. si el propietario va seguido de dos puntos y un nombre de grupo (o ID de grupo numérico), sin espacios entre ellos, también se cambiará el grupo al que pertenecen. si se ponen dos puntos pero ningún nombre de grupo a continuación, ese usuario se convierte en el propietario de los archivos y el grupo de archivos se cambia al grupo principal al que pertenece ese usuario. si se indican los dos puntos y el grupo, pero se omite el propietario, solo se cambiará el grupo; en este caso, chown realiza la misma función que chgrp. si solo se dan dos puntos, o si todo el operando está vacío, no se cambia ni el propietario ni el grupo.
       3. cambia el grupo de cada ARCHIVO a GRUPO. si añade --reference, cambiará el grupo de cada ARCHIVO al del R-ARCHIVO.
    3. un modo numérico consta de entre uno y cuatro dígitos **octales** (0-7), que se obtienen sumando los bits con los valores 4, 2 y 1. los dígitos que faltan se consideran ceros y se colocan al inicio. el primer dígito selecciona el ID de usuario configurado (4), el ID de grupo configurado (2), por último, los atributos de eliminación restringida o sticky bit (1). el segundo dígito selecciona los permisos para el propietario del archivo: leer (4), escribir (2) y ejecutar (1); el tercero selecciona permisos para otros usuarios en el grupo del archivo y el cuarto para otros usuarios que no están en el grupo del archivo, ambos con los mismos rangos de valores.

       *chmod 754 archivo*: asigna rwx al propietario, r-x al grupo y r-- a otros.
    4. existe la posibilidad de que un usuario pueda acceder a un archivo para el cual no tiene permisos, si otro usuario con los permisos adecuados le otorga acceso de forma temporal o permanente. también si este tiene privilegios de superusuario.
    5. "Full Path Name" hace referencia a la dirección exacta de un archivo o directorio desde que comienza el directorio raíz (/).

       "Relative Path Name" es la dirección de un archivo o directorio que se especifica en relación a la ubicación actual del usuario.

       **Ejemplo de Ruta Absoluta (comienza con /):**

       si se desea acceder a un archivo llamado reporte.pdf dentro del directorio documentos, su ruta absoluta es:

       `/home/usuario/documentos/reporte.pdf`

       si se quiere acceder al directorio de configuración del sistema etc, su ruta absoluta es:

       `/etc`

       **Ejemplo de Ruta Relativa (no comienza con /):**

       para acceder al mismo archivo reporte.pdf desde /home/usuario/documentos, la ruta relativa es simplemente:

       `reporte.pdf`

       para acceder a un archivo llamado apuntes.txt que está en /home/usuario/, la ruta relativa desde tu ubicación actual es:

       `../apuntes.txt`

       el .. significa "subir un nivel de directorio".
    6. con "pwd" se puede saber en qué directorio se está actualmente.

       con "cd ~" se puede acceder al directorio personal.

       "cd ." mantiene al usuario en el mismo directorio, mientras que "cd .." lo hace subir de nivel, es decir, al directorio "anterior".
    7.

       | Comando | Funcionalidad | Parámetros |
       | :---- | :---- | :---- |
       | `umount` | desmontar filesystems. | `umount -a [-dflnrv] [-t fstype] [-O option...]  umount [-dflnrv] {directory\|device}  umount -h\|-V` |
       | `du` | estima el uso de espacio de ficheros. | `du [OPCIÓN]... [FICHERO]...  du [OPCIÓN]... --files0-from=F` |
       | `df` | informa de la utilización del espacio de disco en sistemas de archivo. | `df [OPCIÓN]... [FICHERO]...` |
       | `mount` | montar un filesystem. | `mount [-h\|-V]  mount [-l] [-t fstype]  mount -a [-fFnrsvw] [-t fstype] [-O optlist]  mount [-fnrsvw] [-o options] device\|mountpoint  mount [-fnrsvw] [-t fstype] [-o options] device mountpoint  mount --bind\|--rbind\|--move olddir newdir  mount --make-[shared\|slave\|private\|unbindable\|rshared\|rslave\|rprivate\|runbindable] mountpoint` |
       | `mkfs` | construye un sistema de ficheros de Linux. | `mkfs [options] [-t type] [fs-options] device [size]` |
       | `fdisk` | manipula la tabla de particiones del disco. | `fdisk [options] device  fdisk -l [device...]` |
       | `write` | enviar un mensaje de texto a otro usuario que está actualmente conectado al mismo sistema. | `write usuario [terminal]` |
       | `losetup` | configurar y controlar dispositivos de bucle. | `Get info: losetup [loopdev] losetup -l [-a] losetup -j file [-o offset]  Detach a loop device: losetup -d loopdev ...  Detach all associated loop devices: losetup -D  Set up a loop device: losetup [-o offset] [--sizelimit size] [--sector-size size] [--loop-ref name] [-Pr] [--show] -f\|loopdev file  Resize a loop device: losetup -c loopdev` |
       | `stat` | muestra el estado de un archivo o sistema de archivos. | `stat [OPCIÓN]... ARCHIVO...` |
17.
    1. un proceso que se ejecuta en **foreground** es aquel que está en primer plano y tiene el control de la terminal. mientras un proceso está en foreground, no puedes ingresar nuevos comandos hasta que el proceso termine o lo detengas. por el contrario, un proceso en **background** es aquel que se ejecuta en segundo plano, liberando la terminal para que puedas seguir ingresando comandos.
    2. **Para ejecutar un proceso en background**, simplemente agrega un ampersand (&) al final del comando. por ejemplo:

       `sleep 30 &`

       este comando hará que el sistema espere durante 30 segundos en segundo plano, mientras puedes seguir usando la terminal.

       **Para pasar un proceso de background a foreground**, se usa el comando `fg` (foreground). si se tienen varios procesos en background, se puede especificar cuál se quiere traer al frente. primero, se usa el comando `jobs` para ver los procesos en segundo plano. luego, se usa `fg %ID_DEL_PROCESO` para traerlo a primer plano. por ejemplo:

       ```bash
       jobs
       # [1]+  Running                 sleep 30 &
       fg %1
       ```

       **Para pasar un proceso de foreground a background**, primero se debe detenerlo temporalmente presionando la combinación de teclas `Ctrl + Z`. luego, se usa el comando `bg` (background) para enviarlo a segundo plano:

       ```bash
       sleep 30
       # Presiona Ctrl + Z
       # [1]+  Stopped                 sleep 30
       bg
       ```
    3. la **pipe** (`|`) es un operador que se utiliza para conectar la salida de un comando con la entrada de otro. esto permite encadenar comandos para crear flujos de trabajo más complejos y potentes. la finalidad de una pipe es usar el resultado de una operación como el punto de partida para la siguiente.

       **Ejemplos de utilización:**
       * **Contar archivos en un directorio**: `ls -l` lista el contenido de un directorio. al usar `| wc -l`, la salida de `ls -l` se redirige al comando `wc` (word count), que cuenta el número de líneas, dándote el total de archivos.

         `ls -l | wc -l`
       * **Buscar texto en la salida de un comando**: `ps -ef` muestra todos los procesos del sistema. al usar `| grep ssh`, solo verás las líneas que contengan la cadena "ssh".

         `ps -ef | grep ssh`
    4. la redirección es el proceso de cambiar la entrada o salida estándar de un comando. en lugar de que la salida se muestre en la terminal, puedes enviarla a un archivo, o puedes hacer que un comando reciba su entrada desde un archivo en lugar de desde el teclado.

       existen **tres** tipos principales de redirección:
       * **Redirección de salida (`>` y `>>`)**:

         **`>`**: redirige la salida estándar a un archivo, **sobrescribiendo** su contenido si ya existe.

         `echo "Hola mundo" > archivo.txt`

         **`>>`**: redirige la salida estándar a un archivo, **añadiendo** el contenido al final del archivo.

         `echo "Adiós mundo" >> archivo.txt`
       * **Redirección de entrada (`<`)**:

         redirige la entrada estándar de un comando para que la tome desde un archivo en lugar de desde el teclado.

         `wc -l < archivo.txt`

         esto le dice a `wc` que cuente las líneas dentro de `archivo.txt`.
       * **Redirección de error (`2>`)**:

         redirige la salida de errores estándar a un archivo, lo que es muy útil para depurar *scripts*. el número `2` representa el *file descriptor* para la salida de error.

         `ls -l archivo_que_no_existe 2> error.log`

         el error "no existe el archivo" se escribirá en `error.log` en lugar de en la terminal.
18.
    1. empaquetar archivos en GNU/Linux se refiere al proceso de agrupar múltiples archivos y directorios en un solo archivo. a diferencia de la compresión, que reduce el tamaño de los datos, el empaquetado simplemente crea un "contenedor" o "paquete" que facilita la manipulación, el almacenamiento y la transferencia de un conjunto de archivos.

       el comando más utilizado para empaquetar archivos es tar (de Tape Archive). por sí solo, tar no comprime los archivos, solo los agrupa.
    2. tomaré estos archivos:

       ![][image1]

       en total, suman 4,9 MB. al empaquetarlos, usando tar y gzip, me queda un paquete de 4,4 MB.
    3. ```bash
       tar -czvf mi_paquete.tar.gz "Apunte de UEFI.pdf" "Conceptos básicos sobre GNU_Linux.pdf" "Explicacion Linux 1.pdf" "Explicación Linux 2.pdf" "Explicación Procesos.pdf" "Instalacion y Particionado - Primera Parte.pdf" "Otro apunte de Instalacion y Particionado.pdf"
       ```
    4. sí, se puede.
    5.

       | Comando | Funcionalidad |
       | :---- | :---- |
       | `tar` | es un programa de archivado diseñado para almacenamiento de múltiples archivos en un solo archivo (un archive) así como su manipulación. el archivo puede ser un archivo normal o un dispositivo (por ejemplo, una unidad de cinta, de ahí el nombre del programa, que viene de 'tape archiver'), que puede ubicarse en el propio equipo o en un equipo remoto. |
       | `grep` | busca PATRONES en cada ARCHIVO. PATRONES consistirá en uno o más patrones separados entre sí por un salto de línea; grep mostrará cada línea donde encuentre una concordancia con dicho patrón. en general, deben entrecomillarse los patrones si se ejecuta grep dentro de otra orden de la shell. |
       | `gzip` | reduce el tamaño de los archivos nombrados mediante la codificación Lempel-Ziv (LZ77). siempre que es posible, cada archivo se reemplaza por uno con la extensión .gz, manteniendo los mismos modos de propiedad, acceso y tiempos de modificación. |
       | `zgrep` | se emplea para invocar grep sobre ficheros comprimidos o "gzipeados". todas las opciones especificadas se pasan directamente a grep. si no se especifica ningún fichero, entonces se descomprime (si es necesario) la entrada estándar y se envía a grep. en otro caso, se descomprimen los archivos dados, si es necesario, y se envían a grep. |
       | `wc` | muestra el total de líneas, palabras y bytes de cada ARCHIVO y una totalización si se especifica más de un ARCHIVO. se considera una palabra a una cadena de más de cero caracteres delimitada por espacios o por el inicio y final de una entrada. |
19.

    | Comando | Resultado |
    | :---- | :---- |
    | `l s −l > prueba` | se creó un archivo llamado "prueba" y se escribió en el mismo archivo: `total 0 -rw-rw-r-- 1 fededobal-noroot fededobal-noroot 0 ago 28 10:29 prueba` |
    | `ps > PRUEBA` | se creó el archivo "PRUEBA" y se escribió en el mismo archivo: `PID TTY          TIME CMD  6229 pts/0    00:00:00 bash  6581 pts/0    00:00:00 bash  7312 pts/0    00:00:00 ps` |
    | `chmod 710 prueba` | el archivo "prueba" tiene permisos rwx- -x- - -. es decir, RWX para el propietario, X para el grupo, y nada para otros. |
    | `chown root:root PRUEBA` | `chown: cambiando el propietario de 'PRUEBA': Operación no permitida.` |
    | `chmod 777 PRUEBA` | el archivo "PRUEBA" ahora tiene permisos rwx- -rwx- -rwx. es decir, todos los permisos para todos. |
    | `chmod 700 /etc/passwd` | `chmod: cambiando los permisos de '/etc/passwd': Operación no permitida.` |
    | `passwd root` | `passwd: no debe ver o cambiar la información de la contraseña para root.` |
    | `rm PRUEBA` | se borra el archivo "PRUEBA". |
    | `man /etc/shadow` | `man: can't open /etc/shadow: Permiso denegado.` |
    | `find / −name ∗ .conf` | busca y lista todos los archivos con extensión .conf desde el directorio raíz. tira muchos "Permiso denegado" (casi me revienta la máquina). |
    | `usermod root −d /home/ newroot −L` | permiso denegado. por defecto, un usuario no tiene permisos 700 cómo para acceder al directorio de root. |
    | `cd /root` | permiso denegado por lo mismo. |
    | `rm ∗` | se borran todos los archivos posibles (prueba era el único que quedaba). |
    | `cd /etc` | se accede al directorio /etc. |
    | `cp ∗ /home -R` | falla. |
    | `shutdown` | falla. orden no encontrada. |
20.
    1. `sudo kill 23`
    2.
       1. `sudo killall init` -> no encuentra el proceso "init"
       2. `sudo killall systemd` -> cierra sesión
    3. `find /home -name "*.conf"`
    4.
       1. `cd /home/fededobal`
       2. `mkdir procesos`
       3. `cd procesos`
       4. `ps > procesos.txt`
    5.
       1. `touch xxxx`
       2. `chmod 751 xxxx`
    6.
       1. `touch yyyy`
       2. `chmod 650 yyyy`
    7.
       1. `cd /tmp`
       2. `rm *`
    8.
       1. `cd /opt`
       2. `sudo mkdir isodata`
       3. `sudo chown isocso isodata`
    9.
       1. `cd ~`
       2. `touch donde` (si no existe)
       3. `pwd >> donde`
21.
    1. `su root`
    2. `sudo adduser fdobal`
    3. se crearon, en /home/fdobal/:
       1. `.bash_logout`
       2. `.bashrc`
       3. `.face`
       4. `.face.icon`
       5. `.profile`
    4.
       1. `cd /tmp`
       2. `mkdir miCursada`
    5. `cp -r /var/log/* /tmp`
    6.
       1. `cd /tmp`
       2. `chown fdobal miCursada`
       3. `chgrp users miCursada`
    7. `chmod -R 777 miCursada`
    8. `su fdobal`
    9. `hostname`
    10. `ps -ef`
    11. `who`
    12.
        1. `su -`
        2. `write fdobal "se te va a apagar el sistema"`
    13. `shutdown`
22.
    1. ```bash
       mkdir -p "25983"
       cd 25983
       ```
    2. ```bash
       vim LEAME
       # i
       # escribo mis datos
       # Escape
       # :wq
       ```
    3. `chmod 017 LEAME`
    4. ```bash
       cd /etc
       ls
       ls > ~/leame
       ```
       *esto se puede hacer porque la shell es case-sensitive, es decir, diferencia entre "LEAME" y "leame".*
    5. ```bash
       sudo find / -name "leame"
       sudo find / -name "*.txt"
       ```
       *busca todos los archivos con extensión .txt.*
    6. `sudo find / -name "*.so" > ~/25983/ejercicioF`
23.
    1. crea el directorio "iso" en donde se está ubicado.
    2. mueve al subdirectorio iso y luego crea o sobrescribe un archivo llamado f0 con una lista de los procesos que se están ejecutando.
    3. exporta al archivo "f1" el listado de los ficheros y archivos presentes.
    4. se mueve al dir. raíz.
    5. imprime la ruta del directorio personal del usuario actual.
    6. lista los archivos en el directorio actual y guardaría la salida en un archivo llamado ls dentro de ~/iso.
    7. mueve el directorio actual al directorio personal del usuario y luego crea un nuevo directorio llamado f2.
    8. muestra información detallada sobre el directorio f2 sin listar su contenido.
    9. cambia los permisos del directorio f2 a 3 (escritura y ejecución) para el propietario, 4 (lectura) para el grupo y 1 (ejecución) para otros.
    10. crea un archivo vacío llamado dir en el directorio actual.
    11. mueve el directorio actual a f2.
    12. mueve el directorio actual al subdirectorio iso dentro del directorio personal del usuario.
    13. muestra la ruta del directorio actual y la guarda en un nuevo archivo llamado f3, sobrescribiendo cualquier contenido anterior.
    14. muestra los procesos, filtra los que contienen "ps", cuenta el número de líneas resultantes y añade ese número al final del archivo f3 que se encuentra en el directorio f2.
    15. cambia los permisos del directorio f2 a 700 (rwx para el propietario, y sin permisos para los demás) y luego mueve el directorio actual un nivel arriba.
    16. busca un archivo llamado etc/passwd dentro del directorio actual, lo cual probablemente no encuentre nada.
    17. busca un archivo llamado etc/passwd en todo el sistema de archivos, lo cual debería encontrar la ruta /etc/passwd.
    18. crea un nuevo directorio llamado ejercicio5 en la ubicación actual.
[image1]: <data:image/png;base64,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>