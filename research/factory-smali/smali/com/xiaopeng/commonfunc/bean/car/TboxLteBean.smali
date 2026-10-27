.class public Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;
.super Ljava/lang/Object;
.source "TboxLteBean.java"


# instance fields
.field public Band:Ljava/lang/String;

.field public CID:Ljava/lang/String;

.field public EARFCN:Ljava/lang/String;

.field public PCI:Ljava/lang/String;

.field public RRCStatus:Ljava/lang/String;

.field public RSRP:Ljava/lang/String;

.field public RSRQ:Ljava/lang/String;

.field public SINR:Ljava/lang/String;

.field public TAC:Ljava/lang/String;

.field public Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "LTE"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->Type:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getBand()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->Band:Ljava/lang/String;

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->CID:Ljava/lang/String;

    return-object v0
.end method

.method public getEARFCN()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->EARFCN:Ljava/lang/String;

    return-object v0
.end method

.method public getPCI()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->PCI:Ljava/lang/String;

    return-object v0
.end method

.method public getRRCStatus()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->RRCStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRSRP()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->RSRP:Ljava/lang/String;

    return-object v0
.end method

.method public getRSRQ()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->RSRQ:Ljava/lang/String;

    return-object v0
.end method

.method public getSINR()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->SINR:Ljava/lang/String;

    return-object v0
.end method

.method public getTAC()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->TAC:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RRCStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->RRCStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Band : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->Band:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EARFCN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->EARFCN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PCI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->PCI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TAC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->TAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->CID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RSRP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->RSRP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RSRQ : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->RSRQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SINR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxLteBean;->SINR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
