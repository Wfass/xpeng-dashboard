.class public Lcom/xiaopeng/commonfunc/bean/GpsSensorData;
.super Ljava/lang/Object;
.source "GpsSensorData.java"


# instance fields
.field private mAcc_X:D

.field private mAcc_Y:D

.field private mAcc_Z:D

.field private mGyro_X:D

.field private mGyro_Y:D

.field private mGyro_Z:D


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_X:D

    .line 19
    iput-wide p3, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Y:D

    .line 20
    iput-wide p5, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Z:D

    .line 21
    iput-wide p7, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_X:D

    .line 22
    iput-wide p9, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Y:D

    .line 23
    iput-wide p11, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Z:D

    .line 24
    return-void
.end method


# virtual methods
.method public getAcc_X()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_X:D

    return-wide v0
.end method

.method public getAcc_Y()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Y:D

    return-wide v0
.end method

.method public getAcc_Z()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Z:D

    return-wide v0
.end method

.method public getGyro_X()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_X:D

    return-wide v0
.end method

.method public getGyro_Y()D
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Y:D

    return-wide v0
.end method

.method public getGyro_Z()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Z:D

    return-wide v0
.end method

.method public setAcc_X(D)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_X:D

    .line 32
    return-void
.end method

.method public setAcc_Y(D)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Y:D

    .line 40
    return-void
.end method

.method public setAcc_Z(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Z:D

    .line 48
    return-void
.end method

.method public setGyro_X(D)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_X:D

    .line 56
    return-void
.end method

.method public setGyro_Y(D)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Y:D

    .line 64
    return-void
.end method

.method public setGyro_Z(D)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Z:D

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsSensorData{mAcc_X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_X:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mAcc_Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mAcc_Z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mAcc_Z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mGyro_X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_X:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mGyro_Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mGyro_Z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->mGyro_Z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
