.class public Lcom/xiaopeng/musicradio/bean/UserVipInfo;
.super Ljava/lang/Object;
.source "UserVipInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TYPE_QQ_SUPER_VIP:I = 0x3

.field private static final TYPE_SUPER_VIP:I = 0x4

.field private static final TYPE_VIP:I = 0x1


# instance fields
.field public eightEndTime:J

.field public eightFlag:Z

.field public eightStartTime:J

.field public expireTime:J

.field public greenVipEndTime:J

.field public greenVipFlag:Z

.field public greenVipStartTime:J

.field public songQuality:I

.field public superGreenVipEndTime:J

.field public superGreenVipFlag:Z

.field public superGreenVipStartTime:J

.field public twelveEndTime:J

.field public twelveFlag:Z

.field public twelveStartTime:J

.field public type:I

.field private vipDetailDto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;"
        }
    .end annotation
.end field

.field private vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

.field public yearGreenVipFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEightEndTime()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightEndTime:J

    return-wide v0
.end method

.method public getEightStartTime()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightStartTime:J

    return-wide v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->expireTime:J

    return-wide v0
.end method

.method public getGreenVipEndTime()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipEndTime:J

    return-wide v0
.end method

.method public getGreenVipStartTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipStartTime:J

    return-wide v0
.end method

.method public getSongQuality()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->songQuality:I

    return v0
.end method

.method public getSuperGreenVipEndTime()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipEndTime:J

    return-wide v0
.end method

.method public getSuperGreenVipStartTime()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipStartTime:J

    return-wide v0
.end method

.method public getTwelveEndTime()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->twelveEndTime:J

    return-wide v0
.end method

.method public getTwelveStartTime()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->twelveStartTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->type:I

    return v0
.end method

.method public getVipDetailDto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->vipDetailDto:Ljava/util/List;

    return-object v0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 2

    .line 182
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    if-eqz v0, :cond_0

    .line 183
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipEndTime:J

    invoke-static {v0, v1}, Lbtf;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipFlag:Z

    if-eqz v0, :cond_1

    .line 186
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipEndTime:J

    invoke-static {v0, v1}, Lbtf;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightFlag:Z

    if-eqz v0, :cond_2

    .line 189
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightEndTime:J

    invoke-static {v0, v1}, Lbtf;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 192
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->expireTime:J

    invoke-static {v0, v1}, Lbtf;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getVipInfo()Lcom/xiaopeng/musicradio/bean/UserVipInfo;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    return-object v0
.end method

.method public isEightFlag()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightFlag:Z

    return v0
.end method

.method public isGreenVip()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipFlag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGreenVipFlag()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipFlag:Z

    return v0
.end method

.method public isSVip(I)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    const/4 v1, 0x0

    .line 155
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->vipDetailDto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/VipDetail;

    .line 157
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipDetail;->getVipType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 158
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    .line 162
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    return p1
.end method

.method public isSuperGreenVipFlag()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    return v0
.end method

.method public isTwelveFlag()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->twelveFlag:Z

    return v0
.end method

.method public isVip()Z
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightFlag:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isYearGreenVipFlag()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->yearGreenVipFlag:Z

    return v0
.end method

.method public setEightEndTime(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightEndTime:J

    return-void
.end method

.method public setEightFlag(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightFlag:Z

    return-void
.end method

.method public setEightStartTime(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightStartTime:J

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->expireTime:J

    return-void
.end method

.method public setGreenVipEndTime(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipEndTime:J

    return-void
.end method

.method public setGreenVipFlag(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipFlag:Z

    return-void
.end method

.method public setGreenVipStartTime(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipStartTime:J

    return-void
.end method

.method public setSongQuality(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->songQuality:I

    return-void
.end method

.method public setSuperGreenVipEndTime(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipEndTime:J

    return-void
.end method

.method public setSuperGreenVipFlag(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    return-void
.end method

.method public setSuperGreenVipStartTime(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipStartTime:J

    return-void
.end method

.method public setTwelveEndTime(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->twelveEndTime:J

    return-void
.end method

.method public setTwelveFlag(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->twelveFlag:Z

    return-void
.end method

.method public setTwelveStartTime(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->twelveStartTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->type:I

    return-void
.end method

.method public setVipDetailDto(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->vipDetailDto:Ljava/util/List;

    return-void
.end method

.method public setVipInfo(Lcom/xiaopeng/musicradio/bean/UserVipInfo;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->vipInfo:Lcom/xiaopeng/musicradio/bean/UserVipInfo;

    return-void
.end method

.method public setYearGreenVipFlag(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->yearGreenVipFlag:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserVipInfo{greenVipFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", yearGreenVipFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->yearGreenVipFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", superGreenVipFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", eightFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", greenVipStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", greenVipEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->greenVipEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", superGreenVipStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", superGreenVipEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->superGreenVipEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eightStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eightEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->eightEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", songQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->songQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vipDetailDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/UserVipInfo;->vipDetailDto:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
