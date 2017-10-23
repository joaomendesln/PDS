SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `telefones` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `pessoa` TINYINT(1) NOT NULL,
  `certidao` VARCHAR(20) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Venda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Venda` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Venda` (
  `idVenda` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `desconto` DOUBLE NOT NULL,
  `totalVenda` FLOAT NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idVenda`),
  INDEX `fk_Venda_Cliente1_idx` (`Cliente_idCliente` ASC),
  CONSTRAINT `fk_Venda_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Produto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NULL,
  PRIMARY KEY (`idProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ItemVenda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ItemVenda` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ItemVenda` (
  `Venda_idVenda` INT NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  `peso` FLOAT NOT NULL,
  `precoKg` FLOAT NOT NULL,
  PRIMARY KEY (`Venda_idVenda`, `Produto_idProduto`),
  INDEX `fk_Venda_has_Produto_Produto1_idx` (`Produto_idProduto` ASC),
  INDEX `fk_Venda_has_Produto_Venda1_idx` (`Venda_idVenda` ASC),
  CONSTRAINT `fk_Venda_has_Produto_Venda1`
    FOREIGN KEY (`Venda_idVenda`)
    REFERENCES `mydb`.`Venda` (`idVenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venda_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `mydb`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Fornecedor` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Fornecedor` (
  `idFornecedor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(2) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `pessoa` TINYINT(1) NOT NULL,
  `certidao` VARCHAR(45) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `Fornecedorcol` VARCHAR(45) NULL,
  PRIMARY KEY (`idFornecedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Compra` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Compra` (
  `idCompra` INT NOT NULL,
  `data` DATE NOT NULL,
  `desconto` FLOAT NOT NULL,
  `totalCompra` FLOAT NOT NULL,
  `Fornecedor_idFornecedor` INT NOT NULL,
  PRIMARY KEY (`idCompra`),
  INDEX `fk_Compra_Fornecedor1_idx` (`Fornecedor_idFornecedor` ASC),
  CONSTRAINT `fk_Compra_Fornecedor1`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `mydb`.`Fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ItemCompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ItemCompra` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ItemCompra` (
  `Compra_idCompra` INT NOT NULL,
  `Produto_idProduto` INT NOT NULL,
  `unidade` VARCHAR(2) NOT NULL,
  `quantidade` FLOAT NOT NULL,
  `precoUnitario` FLOAT NOT NULL,
  `totalCompra` FLOAT NOT NULL,
  PRIMARY KEY (`Compra_idCompra`, `Produto_idProduto`),
  INDEX `fk_Compra_has_Produto_Produto1_idx` (`Produto_idProduto` ASC),
  INDEX `fk_Compra_has_Produto_Compra1_idx` (`Compra_idCompra` ASC),
  CONSTRAINT `fk_Compra_has_Produto_Compra1`
    FOREIGN KEY (`Compra_idCompra`)
    REFERENCES `mydb`.`Compra` (`idCompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compra_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `mydb`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Funcionario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Funcionario` (
  `idFuncionario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `telefones` VARCHAR(45) NOT NULL,
  `identidade` VARCHAR(45) NOT NULL,
  `carteiraDeTrabalho` VARCHAR(45) NOT NULL,
  `salario` FLOAT NOT NULL,
  `motorista` TINYINT(1) NOT NULL,
  `tecnico` TINYINT(1) NOT NULL,
  `observacao` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idFuncionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PagamentoSalario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PagamentoSalario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`PagamentoSalario` (
  `idPagamentoSalario` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NOT NULL,
  `mes` INT NOT NULL,
  `ano` INT NOT NULL,
  `valorPago` FLOAT NOT NULL,
  `Funcionario_idFuncionario` INT NOT NULL,
  PRIMARY KEY (`idPagamentoSalario`),
  INDEX `fk_PagamentoSalario_Funcionario1_idx` (`Funcionario_idFuncionario` ASC),
  CONSTRAINT `fk_PagamentoSalario_Funcionario1`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `mydb`.`Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
