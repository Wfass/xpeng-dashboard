.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;
.super Ljava/lang/Object;
.source "GattAospImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpRecord"
.end annotation


# instance fields
.field public characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public dataSize:I

.field public errorCount:I

.field private lastWriteSize:I

.field public mAddr:Ljava/lang/String;

.field public mCmd:I

.field public mData:[B

.field public mRead:Z

.field public opStartTick:J

.field public transferUnit:I

.field public transferredSize:I

.field public waitCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Z[BI)V
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "read"    # Z
    .param p4, "data"    # [B
    .param p5, "cmd"    # I

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mAddr:Ljava/lang/String;

    .line 1080
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1081
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mRead:Z

    .line 1082
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    .line 1083
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->waitCount:I

    .line 1084
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->opStartTick:J

    .line 1085
    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->errorCount:I

    .line 1086
    iput p5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mCmd:I

    .line 1087
    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    .line 1088
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    array-length v1, v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->dataSize:I

    goto :goto_0

    .line 1091
    :cond_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->dataSize:I

    .line 1093
    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferUnit:I

    .line 1094
    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    .line 1095
    return-void
.end method


# virtual methods
.method public dataSliceDone()V
    .locals 3

    .line 1116
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    if-eqz v0, :cond_0

    .line 1117
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    .line 1119
    :cond_0
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataSliceDone,lastWriteSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",transferredSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    return-void
.end method

.method public getWriteData()[B
    .locals 6

    .line 1098
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->dataSize:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    sub-int/2addr v0, v1

    .line 1099
    .local v0, "left":I
    const-string v1, "GattAospImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWriteData,left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",dataSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->dataSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",transferredSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",lastWriteSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",transferUnit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferUnit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    if-lez v0, :cond_1

    .line 1102
    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferUnit:I

    if-ge v0, v1, :cond_0

    .line 1103
    iput v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    goto :goto_0

    .line 1105
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferUnit:I

    iput v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    .line 1107
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    new-array v1, v1, [B

    .line 1108
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->mData:[B

    iget v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->lastWriteSize:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1109
    return-object v1

    .line 1111
    .end local v1    # "bytes":[B
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasPendingData()Z
    .locals 2

    .line 1124
    iget v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->transferredSize:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$OpRecord;->dataSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
