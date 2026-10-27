.class public Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;
.super Ljava/lang/Object;
.source "TboxReplaceDevicesId.java"


# instance fields
.field public ble_mac:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field public nfc_seid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->ble_mac:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->nfc_seid:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->iccid:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getBle_mac()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->ble_mac:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getNfc_seid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->nfc_seid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxReplaceDevicesId{ble_mac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->ble_mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nfc_seid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->nfc_seid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iccid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxReplaceDevicesId;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
