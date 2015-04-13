<p align="center">
    <img src="http://www.lataco.com/wp-content/uploads/15askamexican.jpg" width="190px"/>
</p>

*Elblog* es un blog minimo hecho desde un rails engine, que usa las siguientes gemas: 

[Bootsy](https://github.com/volmer/bootsy)
[Bootstrap-wysihtml5](https://github.com/jhollingworth/bootstrap-wysihtml5)
[CarrierWave](https://github.com/carrierwaveuploader/carrierwave).


## Instalación

1. Agrega elblog a tu Gemfile:
  ```ruby
  gem 'elblog', git: 'https://github.com/p404/elblog'
  ```

2. Instalar la gema:
  ```console
  bundle install
  ```

3. Corre el generador:
  ```console
  rails generate elblog:install <target_mount_path>
  ```
  
  **Nota:** si no se usa <target_mount_path> se montara en la ruta "/elblog"

4. Por ultimo instalar y correr las migraciones:
  ```console
  rake elblog:install:migrations
  rake db:migrate
  ```
  
5. Si deseas personalizar las vistas ejecuta este comando 
  ```console
  rails generate elblog:views
  ```
  
  Esta comando copiará las vistas show, edit, index, new y form dentro de la carpeta app/views de tu aplicación
