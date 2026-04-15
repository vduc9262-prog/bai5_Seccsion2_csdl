create database bai5_data;

use bai5_data;

CREATE TABLE Wallets (
    WalletID INT , 
    CustomerID INT UNIQUE NOT NULL, 
    Balance DECIMAL(18,2) DEFAULT 0 CHECK (Balance >= 0),
    CreatedAt DATETIME NOT NULL  ,
     PRIMARY KEY (WalletID)
);

CREATE TABLE Transactions (
    TransID INT,
    WalletID INT NOT NULL REFERENCES Wallets(WalletID),
    TransType VARCHAR(50) CHECK (TransType IN ('Nap', 'Rut', 'ThanhToan')),
    Amount DECIMAL(18,2) NOT NULL CHECK (Amount > 0),
    Status VARCHAR(20) DEFAULT 'ThanhCong',
    CreatedAt DATETIME ,
    PRIMARY KEY (TransID)
);

