.class public Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
.super Ljava/lang/Object;
.source "PeripheralDeviceDataBi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeripheralDeviceData"
.end annotation


# static fields
.field private static final KEY_BRAND:Ljava/lang/String; = "Brand"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_END:Ljava/lang/String; = "endTime"

.field private static final KEY_ERROR_COUNT:Ljava/lang/String; = "ErrCount"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_OFF_TYPE:Ljava/lang/String; = "OffType"

.field private static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final KEY_START:Ljava/lang/String; = "startTime"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "subtype"


# instance fields
.field public brand:Ljava/lang/String;

.field public endTime:J

.field public errCount:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public offType:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public startTime:J

.field public subType:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public sendBiLog()V
    .locals 5

    .line 121
    const-string v0, "P10141"

    const-string v1, "B004"

    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 122
    .local v0, "bilog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "subtype"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "Brand"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "name"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "id"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "OffType"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->offType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "ErrCount"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->errCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "params"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "PeripheralDeviceDataBi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bi,type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->subType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",brand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->endTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",offType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->offType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->errCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->params:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 137
    return-void
.end method
