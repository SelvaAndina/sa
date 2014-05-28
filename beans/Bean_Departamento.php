<?php
class Bean_Departamento extends Bean_General
{

	# Departamento
	protected $IdDepartamento;
	protected $Nombre;
	protected $IdPais;
	protected $nDepEstado;
	protected $OrderBy;
	protected $Ordenar;
	protected $Inicio;
	protected $Cuantos;

	public function setIdDepartamento($IdDepartamento_){ $this->IdDepartamento=$IdDepartamento_;}
	public function getIdDepartamento(){ return $this->IdDepartamento;}

	public function setNombre($Nombre_){ $this->Nombre=$Nombre_;}
	public function getNombre(){	return $this->Nombre;}

	public function setIdPais($IdPais_){ $this->IdPais=$IdPais_;}
	public function getIdPais(){ return $this->IdPais;}

	public function setnDepEstado($nDepEstado_){ $this->nDepEstado=$nDepEstado_;}
	public function getnDepEstado(){ return $this->nDepEstado;}

	public function setOrderBy($OrderBy_){ $this->OrderBy=$OrderBy_;}
	public function getOrderBy(){ return $this->OrderBy;}

	public function setOrdenar($Ordenar_){ $this->Ordenar=$Ordenar_;}
	public function getOrdenar(){ return $this->Ordenar;}

	public function setInicio($Inicio_){ $this->Inicio=$Inicio_;}
	public function getInicio(){ return $this->Inicio;}

	public function setCuantos($Cuantos_){ $this->Cuantos=$Cuantos_;}
	public function getCuantos(){ return $this->Cuantos;}
}
