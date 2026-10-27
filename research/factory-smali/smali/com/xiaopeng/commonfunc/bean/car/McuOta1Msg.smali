.class public Lcom/xiaopeng/commonfunc/bean/car/McuOta1Msg;
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
    .param p1, "data"    # [I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuOta1Msg;->McuProCondStAck:I

    .line 12
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuOta1Msg;->McuPacketSt:I

    .line 13
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuOta1Msg;->McuAckOtaTestAck:I

    .line 14
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/car/McuOta1Msg;->McuAckArdRstNotify:I

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 18
    const-string v0, ""

    .line 19
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "McuProCondStAck="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuOta1Msg;->McuProCondStAck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method
