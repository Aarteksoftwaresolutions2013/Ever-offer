package com.ever.offer.in.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class Payment extends AbstractEntity {
    private String txnId;
    private String amount;
    private String cardNumber;
    private String cardType;
    private String status;

    public Payment() {
    }

    public Payment(String txnId, String amount, String cardNumber, String cardType, String status) {
        this.txnId = txnId;
        this.amount = amount;
        this.cardNumber = cardNumber;
        this.cardType = cardType;
        this.status = status;
    }

    @Column(name = "txnid")
    public String getTxnId() {
        return txnId;
    }

    public void setTxnId(String txnId) {
        this.txnId = txnId;
    }

    @Column(name = "amount")
    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    @Column(name = "cardnum")
    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    @Column(name = "card_type")
    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
