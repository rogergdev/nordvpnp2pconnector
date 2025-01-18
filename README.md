# Conexión P2P con NordVPN en Ubuntu

## Descripción

Este proyecto tiene como objetivo facilitar la conexión a los servidores P2P de **NordVPN** de manera automática en contenedores o sistemas Linux que usan Ubuntu. Actualmente, **NordVPN** no permite seleccionar automáticamente los servidores P2P cuando se utiliza el cliente de línea de comandos en Ubuntu, lo que obliga a los usuarios a realizar la conexión manualmente cada vez que inician el servicio VPN.

Este programa resuelve este problema al automatizar el proceso de conexión a los servidores P2P de NordVPN, asegurando una experiencia más fluida y conveniente para los usuarios que necesitan hacer uso de conexiones P2P (como torrenting) mientras mantienen una conexión VPN segura.

## ¿Por qué es interesante conectarse a un servidor P2P de NordVPN?

**NordVPN** ofrece servidores optimizados específicamente para conexiones **P2P (Peer-to-Peer)**, como las que se usan para compartir archivos mediante **torrenting**. Conectarse a un servidor P2P ofrece varios beneficios:

1. **Mayor velocidad**: Los servidores P2P están optimizados para asegurar que puedas descargar y compartir archivos a la máxima velocidad posible.
2. **Conexión más estable**: Dado que están diseñados para el tráfico de torrenting, los servidores P2P son más estables y menos propensos a caídas o desconexiones.
3. **Privacidad adicional**: Al usar NordVPN con servidores P2P, tu actividad de torrenting se mantiene protegida mediante cifrado de extremo a extremo, evitando la exposición de tu IP.

## ¿Por qué no lo hace automáticamente el cliente de NordVPN en Ubuntu?

El cliente oficial de **NordVPN** en Ubuntu no selecciona automáticamente los servidores P2P. Esto se debe a que NordVPN utiliza un sistema de asignación automática de servidores que no prioriza los servidores P2P por defecto. El cliente no realiza la conexión a estos servidores optimizados para compartir archivos sin intervención manual.

Sin embargo, conectar automáticamente a un servidor P2P es una necesidad para muchos usuarios, especialmente aquellos que realizan frecuentes descargas o cargas de torrents. De no hacerlo, el cliente puede conectarse a un servidor estándar que no optimiza el tráfico P2P, lo que puede resultar en menor rendimiento y estabilidad.

## ¿Cómo resuelve este programa el problema?

Este programa automatiza la conexión a los servidores P2P de NordVPN en Ubuntu, garantizando que siempre que inicies el contenedor o el sistema, se conecte directamente a uno de estos servidores optimizados.

**Pasos que realiza el programa:**

1. Espera 60 segundos para asegurar que NordVPN esté completamente iniciado.
2. Verifica que el servicio de NordVPN esté activo.
3. Conecta automáticamente a un servidor P2P de NordVPN.

Esto ahorra tiempo y mejora la eficiencia, especialmente si usas NordVPN para actividades de torrenting o conexiones P2P de manera regular.

## Requisitos

- **Ubuntu** (u otros sistemas basados en Linux)
- **NordVPN** instalado y configurado correctamente.
- Acceso a línea de comandos con privilegios de administrador.
- Contenedor LXC o similar si es necesario.

## Instalación

1. Asegúrate de tener **NordVPN** instalado y configurado.
2. Copia el script `start_with_delay.sh` en tu contenedor o sistema.
3. Haz que el script sea ejecutable:

   ```bash
   chmod +x start_with_delay.sh
   ```

4. Ejecuta el script manualmente o configúralo para que se ejecute al inicio del contenedor/sistema.

## Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo `LICENSE` para más detalles.
