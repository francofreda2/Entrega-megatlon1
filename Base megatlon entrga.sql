create database megatlon;
use megatlon2;
CREATE TABLE socios(
	id_socio INT UNSIGNED AUTO_INCREMENT primary key not null,
      Cod_socio INTEGER,
      Dni DECIMAL(8,0),
      Nombre_soc CHAR(20),
      Apellido_soc CHAR(20) ,
      Tel_socio DECIMAL(20,0),
      Direccion_socio DECIMAL(40,0),
      Certificado_medico_activo  bit not null,
      Promocion_activa CHAR(20) NOT NULL,
      Sucursal_asiste Char (20),
      ID_promocion_activa CHAR(20),
      Obra_social_socios CHAR(40)
      
      ) ;

 
use megatlon2;
CREATE TABLE Promociones(
      id_promocion INT UNSIGNED AUTO_INCREMENT primary key not null,
      id_socio INTEGER UNSIGNED not null,
      Cod_promocion INTEGER,
      Nombre_promocion VARCHAR(20) ,
      Tel_socio DECIMAL(20,0),
      Medio_de_pago_aceptado  VARCHAR(20),
      Direccion_socio DECIMAL(20,0),
      Banco_aceptado  VARCHAR(20),
      FOREIGN KEY (id_socio)  references socios (id_socio)
      );
use megatlon2;
CREATE TABLE Obra_social 
     (
      id_obra_social INT UNSIGNED AUTO_INCREMENT primary key not null,
      Cod_obra_social INTEGER,
      CUIL DECIMAL(20,0),
      Nombre_obr_soc CHAR(20),
      Tel_obra_soc DECIMAL(20,0),
      Direccion_obr_soc DECIMAL(20,0),
      Certificado_medico_activo  bit not null
      );   
      
use megatlon2;
CREATE  TABLE Sucursal 
     (
      id_sucursal INT UNSIGNED primary key not null,
      Cod_sucursal INTEGER,
      Nombre_sucursal CHAR(20),
      Tel_sucursal DECIMAL(8,0),
      Direccion_sucursal DECIMAL(8,0)
      
      
      )  ;
use megatlon2;
CREATE TABLE Profesores 
     (
      id_profesor INT UNSIGNED AUTO_INCREMENT primary key not null,
      Cod_profesor INTEGER,
      Dni_profesor DECIMAL(8,0),
      Nombre_profesor  CHAR(20) ,
      Apellido_profesor  CHAR(20) ,
      Tel_profesor  DECIMAL(8,0),
      Direccion_profesor  DECIMAL(8,0),
      Certificado_medico_activo  bit not null,
      Sucursal_trabaja varchar(20),
      Obra_social_profesor  varchar(20) ,
      Actividad_que_realiza varchar(20),
      id_sucursal int UNSIGNED,
      FOREIGN KEY (id_sucursal)  references sucursal(id_sucursal)

	);
      
      
USE megatlon2; 
CREATE  TABLE Actividades 
     (
      id_actividad INT UNSIGNED AUTO_INCREMENT primary key not null,
      Cod_actividad INTEGER,
      Nombre_actividad  CHAR(20) ,
      Sucursal_actividad char(20),
      Dias_actividad  varchar(20),
      Horas_actividad CHAR(20)
      );
      
      USE megatlon2 ;
CREATE  TABLE Sucursal 
     (
      id_sucursal INT UNSIGNED AUTO_INCREMENT primary key not null,
      Cod_sucursal INTEGER,
      Nombre_sucursal CHAR(20),
      Tel_sucursal DECIMAL(8,0),
      Direccion_sucursal DECIMAL(8,0)
      );

use megatlon2;
CREATE  TABLE Actividades 
     (
      id_actividad INTEGER  UNSIGNED AUTO_INCREMENT primary key not null,
      Cod_actividad INTEGER,
      Nombre_actividad  CHAR(20) ,
      Sucursal_actividad char(20),
      Dias_actividad  varchar(20),
      Horas_actividad CHAR(20) 
       
	)      ;