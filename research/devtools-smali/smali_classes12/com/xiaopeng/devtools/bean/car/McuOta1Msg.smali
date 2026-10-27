.class public Lcom/xiaopeng/devtools/bean/car/McuOta1Msg;
.super Ljava/lang/Object;
.source "McuOta1Msg.java"


# instance fields
.field public McuAckArdRstNotify:I

.field public McuAckOtaTestAck:I

.field public McuPacketSt:I

.field public McuProCondStAck:I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuOta1Msg;->McuProCondStAck:I

    .line 12
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuOta1Msg;->McuPacketSt:I

    .line 13
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuOta1Msg;->McuAckOtaTestAck:I

    .line 14
    const/4 v0, 0x3

    aget p1, p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuOta1Msg;->McuAckArdRstNotify:I

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    const-string v0, ""

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "McuProCondStAck="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuOta1Msg;->McuProCondStAck:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method
