.class public Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;
.super Ljava/lang/Object;
.source "NavigationInfoBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field public destinationPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

.field public remainderLift:J

.field public remainderRange:J

.field public remainderServieArea:J

.field public remainderTime:J

.field public remainderTollStation:J

.field public speedLimit:J

.field public viaPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationPoint()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->destinationPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-object v0
.end method

.method public getRemainderLift()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderLift:J

    return-wide v0
.end method

.method public getRemainderRange()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderRange:J

    return-wide v0
.end method

.method public getRemainderServieArea()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderServieArea:J

    return-wide v0
.end method

.method public getRemainderTime()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderTime:J

    return-wide v0
.end method

.method public getRemainderTollStation()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderTollStation:J

    return-wide v0
.end method

.method public getSpeedLimit()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->speedLimit:J

    return-wide v0
.end method

.method public getViaPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->viaPoints:Ljava/util/List;

    return-object v0
.end method

.method public setDestinationPoint(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0
    .param p1, "destinationPoint"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->destinationPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 170
    return-void
.end method

.method public setRemainderLift(J)V
    .locals 0
    .param p1, "remainderLift"    # J

    .line 133
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderLift:J

    .line 134
    return-void
.end method

.method public setRemainderRange(J)V
    .locals 0
    .param p1, "remainderRange"    # J

    .line 97
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderRange:J

    .line 98
    return-void
.end method

.method public setRemainderServieArea(J)V
    .locals 0
    .param p1, "remainderServieArea"    # J

    .line 72
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderServieArea:J

    .line 73
    return-void
.end method

.method public setRemainderTime(J)V
    .locals 0
    .param p1, "remainderTime"    # J

    .line 115
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderTime:J

    .line 116
    return-void
.end method

.method public setRemainderTollStation(J)V
    .locals 0
    .param p1, "remainderTollStation"    # J

    .line 80
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderTollStation:J

    .line 81
    return-void
.end method

.method public setSpeedLimit(J)V
    .locals 0
    .param p1, "speedLimit"    # J

    .line 88
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->speedLimit:J

    .line 89
    return-void
.end method

.method public setViaPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "viaPoints":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviInfoBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->viaPoints:Ljava/util/List;

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationInfoBean{remainderRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderRange:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainderLift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderLift:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainderServieArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderServieArea:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", remainderTollStation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->remainderTollStation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speedLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->speedLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", viaPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->viaPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/navi/bean/NavigationInfoBean;->destinationPoint:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
