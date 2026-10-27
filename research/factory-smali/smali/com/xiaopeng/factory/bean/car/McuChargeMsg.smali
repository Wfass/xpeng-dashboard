.class public Lcom/xiaopeng/factory/bean/car/McuChargeMsg;
.super Ljava/lang/Object;
.source "McuChargeMsg.java"


# instance fields
.field public ChargeMode:I

.field public ChargeTime1Day:I

.field public ChargeTime1Hour:I

.field public ChargeTime1Min:I

.field public ChargeTime1Mon:I

.field public ChargeTime1Week:I

.field public ChargeTime2Day:I

.field public ChargeTime2Hour:I

.field public ChargeTime2Min:I

.field public ChargeTime2Mon:I

.field public ChargeTime2Week:I

.field public StopChargeSoc:I

.field public TimeMode:I


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "data"    # [I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeMode:I

    .line 22
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->StopChargeSoc:I

    .line 23
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Week:I

    .line 24
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Mon:I

    .line 25
    const/4 v0, 0x1

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Day:I

    .line 26
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Hour:I

    .line 27
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Min:I

    .line 28
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Week:I

    .line 29
    const/4 v0, 0x2

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Mon:I

    .line 30
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Day:I

    .line 31
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Hour:I

    .line 32
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Min:I

    .line 33
    const/4 v0, 0x3

    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->TimeMode:I

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "McuChargeMsg{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "ChargeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, ", StopChargeSoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->StopChargeSoc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 40
    const-string v1, ", ChargeTime1Week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, ", ChargeTime1Mon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Mon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    const-string v1, ", ChargeTime1Day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 43
    const-string v1, ", ChargeTime1Hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, ", ChargeTime1Min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime1Min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 45
    const-string v1, ", ChargeTime2Week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, ", ChargeTime2Mon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Mon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, ", ChargeTime2Day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, ", ChargeTime2Hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, ", ChargeTime2Min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->ChargeTime2Min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, ", TimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuChargeMsg;->TimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
