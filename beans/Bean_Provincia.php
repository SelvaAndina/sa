<?php
class Bean_Provincia extends Bean_General
{

	# Provincia
	protected $IdProvincia;
	protected $Nombre;
	protected $IdDepartamento;
	protected $nProEstado;
	protected $OrderBy;
	protected $Ordenar;
	protected $Inicio;
	protected $Cuantos;

	public function setIdProvincia($IdProvincia_){ $this->IdProvincia=$IdProvincia_;}
	public function getIdProvincia(){ return $this->IdProvincia;}

	public function setNombre($Nombre_){ $this->Nombre=$Nombre_;}
	public function getNombre(){	return $this->Nombre;}

	public function setIdDepartamento($IdDepartamento_){ $this->IdDepartamento=$IdDepartamento_;}
	public function getIdDepartamento(){ return $this->IdDepartamento;}

	public function setnProEstado($nProEstado_){ $this->nProEstado=$nProEstado_;}
	public function getnProEstado(){ return $this->nProEstado;}

	public function setOrderBy($OrderBy_){ $this->OrderBy=$OrderBy_;}
	public function getOrderBy(){ return $this->OrderBy;}

	public function setOrdenar($Ordenar_){ $this->Ordenar=$Ordenar_;}
	public function getOrdenar(){ return $this->Ordenar;}

	public function setInicio($Inicio_){ $this->Inicio=$Inicio_;}
	public function getInicio(){ return $this->Inicio;}

	public function setCuantos($Cuantos_){ $this->Cuantos=$Cuantos_;}
	public function getCuantos(){ return $this->Cuantos;}
}
