.class public Lcom/xiaopeng/factory/bean/car/McuPmStatusMsg;
.super Ljava/lang/Object;
.source "McuPmStatusMsg.java"


# instance fields
.field public mPmAwake:I

.field public mSysPmStatus:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuPmStatusMsg;->mPmAwake:I

    .line 10
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuPmStatusMsg;->mSysPmStatus:I

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 14
    const-string v0, ""

    .line 15
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSysPmStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/car/McuPmStatusMsg;->mSysPmStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n mPmAwake="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/bean/car/McuPmStatusMsg;->mPmAwake:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    return-object v0
.end method
