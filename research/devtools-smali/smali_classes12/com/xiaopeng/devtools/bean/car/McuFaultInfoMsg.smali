.class public Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;
.super Ljava/lang/Object;
.source "McuFaultInfoMsg.java"


# instance fields
.field public ApmStSynFailCount:I

.field public BattRstCount:I

.field public EepReadErrCount:I

.field public EepWriteErrCount:I

.field public HardErrRstCount:I

.field public IapCount:I

.field public IapFailCount:I

.field public RtcErrCount:I

.field public SoftRstCount:I

.field public UartRxOverFlowCount:I

.field public UartTxOverFlowCount:I

.field public WdgRstCount:I


# direct methods
.method public constructor <init>([I)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->SoftRstCount:I

    .line 21
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->BattRstCount:I

    .line 22
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->WdgRstCount:I

    .line 23
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->HardErrRstCount:I

    .line 24
    const/4 v0, 0x1

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->RtcErrCount:I

    .line 25
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->EepReadErrCount:I

    .line 26
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->EepWriteErrCount:I

    .line 27
    aget v0, p1, v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->IapFailCount:I

    .line 28
    const/4 v0, 0x2

    aget v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->IapCount:I

    .line 29
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->ApmStSynFailCount:I

    .line 30
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->UartRxOverFlowCount:I

    .line 31
    aget p1, p1, v0

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->UartTxOverFlowCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    const-string v0, ""

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SoftRstCount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuFaultInfoMsg;->SoftRstCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    return-object v0
.end method
