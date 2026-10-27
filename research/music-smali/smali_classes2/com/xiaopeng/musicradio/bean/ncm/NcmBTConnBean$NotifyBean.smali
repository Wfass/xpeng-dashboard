.class public Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;
.super Ljava/lang/Object;
.source "NcmBTConnBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyBean"
.end annotation


# instance fields
.field private BluetoothMusic:Ljava/lang/String;

.field private CDUUSBInsert:Ljava/lang/String;

.field private CDUrecording:Ljava/lang/String;

.field private ChargeTime:Ljava/lang/String;

.field private MsgIndex:Ljava/lang/String;

.field private NomalRoadName:Ljava/lang/String;

.field private NomalSpeedLimit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->MsgIndex:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalRoadName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUrecording:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUUSBInsert:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->BluetoothMusic:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalSpeedLimit:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->ChargeTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBluetoothMusic()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->BluetoothMusic:Ljava/lang/String;

    return-object v0
.end method

.method public getCDUUSBInsert()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUUSBInsert:Ljava/lang/String;

    return-object v0
.end method

.method public getCDUrecording()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUrecording:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTime()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->ChargeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgIndex()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->MsgIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getNomalRoadName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getNomalSpeedLimit()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalSpeedLimit:Ljava/lang/String;

    return-object v0
.end method

.method public setBluetoothMusic(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->BluetoothMusic:Ljava/lang/String;

    return-void
.end method

.method public setCDUUSBInsert(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUUSBInsert:Ljava/lang/String;

    return-void
.end method

.method public setCDUrecording(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUrecording:Ljava/lang/String;

    return-void
.end method

.method public setChargeTime(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->ChargeTime:Ljava/lang/String;

    return-void
.end method

.method public setMsgIndex(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->MsgIndex:Ljava/lang/String;

    return-void
.end method

.method public setNomalRoadName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalRoadName:Ljava/lang/String;

    return-void
.end method

.method public setNomalSpeedLimit(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalSpeedLimit:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifyBean{MsgIndex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->MsgIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", NomalRoadName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalRoadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", CDUrecording=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUrecording:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", CDUUSBInsert=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->CDUUSBInsert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothMusic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->BluetoothMusic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", NomalSpeedLimit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->NomalSpeedLimit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ChargeTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/ncm/NcmBTConnBean$NotifyBean;->ChargeTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
