USE ONLINESTORE

CREATE TABLE Accounts (
    accountID INT NOT NULL,
    balance varchar(255),
    PRIMARY KEY (accountID)
);

CREATE TABLE Users (
    userID INT AUTO_INCREMENT NOT NULL,
    username varchar(255),
    password varchar(255),
    accountID INT,
    PRIMARY KEY (userID),
    FOREIGN KEY (accountID) REFERENCES Accounts(accountID)
);


CREATE TABLE Transactions (
    TransactionID INT NOT NULL,
    debitedAccountID INT NOT NULL,
    creditedAccountID INT NOT NULL,
    value varchar(255),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (TransactionID),
    FOREIGN KEY (debitedAccountID) REFERENCES Accounts(accountID),
    FOREIGN KEY (creditedAccountID) REFERENCES Accounts(AccountID)
);