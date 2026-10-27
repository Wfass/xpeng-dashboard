.class public Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;
.super Ljava/lang/Object;
.source "McuGsensorOffsetAckTest.java"


# instance fields
.field public offset_x:I

.field public offset_y:I

.field public offset_z:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;->offset_x:I

    .line 18
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;->offset_y:I

    .line 19
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;->offset_z:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McuGsensorOffsetAckTest{offset_x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;->offset_x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset_y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;->offset_y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset_z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/car/McuGsensorOffsetAckTest;->offset_z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
