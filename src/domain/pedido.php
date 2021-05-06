<?php

	class Pedido {
		var $id_pedido;
		var $id_servico;
		var $id_produto;
		var $descricao_pedido;
		var $data;
		var $hora;
		var $status;
		var $valor;

		function getId_pedido(){
			return $this->id_pedido;
		}
		function setId_pedido($id_pedido){
			$this->id_pedido = $id_pedido;
		}

		function getId_servico(){
			return $this->id_servico;
		}
		function setId_servico($id_servico){
			$this->id_servico = $id_servico;
		}

		function getId_produto(){
			return $this->id_produto;
		}
		function setId_produto($id_produto){
			$this->id_produto = $id_produto;
		}

		function getDescricao_pedido(){
			return $this->descricao_pedido;
		}
		function setDescricao_pedido($descricao_pedido){
			$this->descricao_pedido = $descricao_pedido;
		}

		function getData(){
			return $this->data;
		}
		function setData($data){
			$this->data = $data;
		}

		function getHora(){
			return $this->hora;
		}
		function setHora($hora){
			$this->hora = $hora;
		}

		function getStatus(){
			return $this->status;
		}
		function setStatus($status){
			$this->status = $status;
		}

		function getValor(){
			return $this->valor;
		}
		function setValor($valor){
			$this->valor = $valor;
		}
	}

	class PedidoDAO {
		function create($pedido) {
			$result = array();

			try {
				$query = "INSERT INTO table_name (column1, column2) VALUES (value1, value2)";

				$con = new Connection();

				if(Connection::getInstance()->exec($query) >= 1){
				}

				$con = null;
			}catch(PDOException $e) {
				$result["err"] = $e->getMessage();
			}

			return $result;
		}

		function read() {
			$result = array();

			try {
				$query = "SELECT column1, column2 FROM table_name WHERE condition";

				$con = new Connection();

				$resultSet = Connection::getInstance()->query($query);

				while($row = $resultSet->fetchObject()){
				}

				$con = null;
			}catch(PDOException $e) {
				$result["err"] = $e->getMessage();
			}

			return $result;
		}

		function update() {
			$result = array();

			try {
				$query = "UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition";

				$con = new Connection();

				$status = Connection::getInstance()->prepare($query);

				if($status->execute()){
				}

				$con = null;
			}catch(PDOException $e) {
				$result["err"] = $e->getMessage();
			}

			return $result;
		}

		function delete() {
			$result = array();

			try {
				$query = "DELETE FROM table_name WHERE condition";

				$con = new Connection();

				if(Connection::getInstance()->exec($query) >= 1){
				}

				$con = null;
			}catch(PDOException $e) {
				$result["err"] = $e->getMessage();
			}

			return $result;
		}
	}
