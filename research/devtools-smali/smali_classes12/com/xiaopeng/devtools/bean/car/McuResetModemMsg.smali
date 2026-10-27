.class public Lcom/xiaopeng/devtools/bean/car/McuResetModemMsg;
.super Ljava/lang/Object;
.source "McuResetModemMsg.java"


# instance fields
.field public mMcuMsgType:I

.field public mMcuRstAck:I

.field public mMcuRstLvl:I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuResetModemMsg;->mMcuMsgType:I

    .line 11
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/devtools/bean/car/McuResetModemMsg;->mMcuRstLvl:I

    .line 12
    const/4 v0, 0x2

    aget p1, p1, v0

    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/McuResetModemMsg;->mMcuRstAck:I

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    const-string v0, ""

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mMcuMsgType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/McuResetModemMsg;->mMcuMsgType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    return-object v0
.end method
