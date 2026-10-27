.class public Lcom/xiaopeng/devtools/bean/car/TboxApn;
.super Ljava/lang/Object;
.source "TboxApn.java"


# instance fields
.field public apn1:I

.field public apn2:I

.field public apn3:I

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public rssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->imsi:Ljava/lang/String;

    .line 14
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->imei:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getApn1()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->apn1:I

    return v0
.end method

.method public getApn2()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->apn2:I

    return v0
.end method

.method public getApn3()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->apn3:I

    return v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->rssi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rssi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apn1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->apn1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apn2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->apn2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\r\r\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apn3 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/TboxApn;->apn3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
