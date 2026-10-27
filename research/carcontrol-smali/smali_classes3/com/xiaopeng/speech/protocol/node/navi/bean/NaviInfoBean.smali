.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;
.super Ljava/lang/Object;
.source "NaviInfoBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

.field private remainderLift:J

.field private remainderRange:J

.field private remainderTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPoiBean()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-object v0
.end method

.method public getRemainderLift()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderLift:J

    return-wide v0
.end method

.method public getRemainderRange()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderRange:J

    return-wide v0
.end method

.method public getRemainderTime()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderTime:J

    return-wide v0
.end method

.method public setPoiBean(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-void
.end method

.method public setRemainderLift(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderLift:J

    return-void
.end method

.method public setRemainderRange(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderRange:J

    return-void
.end method

.method public setRemainderTime(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviInfoBean{remainderRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderRange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainderLift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->remainderLift:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", poiBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
