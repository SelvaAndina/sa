<?php
class Bean_Distrito extends Bean_General
{

	# Provincia
	protected $IdDistrito;
	protected $Nombre;
	protected $IdProvincia;
	protected $nDisEstado;
	protected $OrderBy;
	protected $Ordenar;
	protected $Inicio;
	protected $Cuantos;

	public function setIdDistrito($IdDistrito_){ $this->IdDistrito=$IdDistrito_;}
	public function getIdDistrito(){ return $this->IdDistrito;}

	public function setNombre($Nombre_){ $this->Nombre=$Nombre_;}
	public function getNombre(){	return $this->Nombre;}

	public function setIdProvincia($IdProvincia_){ $this->IdProvincia=$IdProvincia_;}
	public function getIdProvincia(){ return $this->IdProvincia;}

	public function setnDisEstado($nDisEstado_){ $this->nDisEstado=$nDisEstado_;}
	public function getnDisEstado(){ return $this->nDisEstado;}

	public function setOrderBy($OrderBy_){ $this->OrderBy=$OrderBy_;}
	public function getOrderBy(){ return $this->OrderBy;}

	public function setOrdenar($Ordenar_){ $this->Ordenar=$Ordenar_;}
	public function getOrdenar(){ return $this->Ordenar;}

	public function setInicio($Inicio_){ $this->Inicio=$Inicio_;}
	public function getInicio(){ return $this->Inicio;}

	public function setCuantos($Cuantos_){ $this->Cuantos=$Cuantos_;}
	public function getCuantos(){ return $this->Cuantos;}
}
