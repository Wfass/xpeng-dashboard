.class public Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;
.super Ljava/lang/Object;
.source "NetRadioCollect.java"


# instance fields
.field private append:Z

.field private areaCode:Ljava/lang/String;

.field private cacheTime:J

.field private hz:D

.field private id:J

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private playCount:I

.field private playUrl:Ljava/lang/String;

.field private playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

.field private programInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JDLjava/lang/String;ILjava/lang/String;ZLcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JD",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;J)V"
        }
    .end annotation

    move-object v0, p0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 50
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->id:J

    move-object v1, p3

    .line 51
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->name:Ljava/lang/String;

    move-object v1, p4

    .line 52
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->picUrl:Ljava/lang/String;

    move-wide v1, p5

    .line 53
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->updateTime:J

    move-wide v1, p7

    .line 54
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->hz:D

    move-object v1, p9

    .line 55
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->areaCode:Ljava/lang/String;

    move v1, p10

    .line 56
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playCount:I

    move-object v1, p11

    .line 57
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playUrl:Ljava/lang/String;

    move v1, p12

    .line 58
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->append:Z

    move-object/from16 v1, p13

    .line 59
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-object/from16 v1, p14

    .line 60
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->programInfos:Ljava/util/List;

    move-wide/from16 v1, p15

    .line 61
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->cacheTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    .line 162
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->id:J

    iget-wide v4, p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAppend()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->append:Z

    return v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->cacheTime:J

    return-wide v0
.end method

.method public getHz()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->hz:D

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playCount:I

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-object v0
.end method

.method public getProgramInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->programInfos:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->updateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 167
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAppend(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->append:Z

    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->cacheTime:J

    return-void
.end method

.method public setHz(D)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->hz:D

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->name:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playCount:I

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-void
.end method

.method public setProgramInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->programInfos:Ljava/util/List;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->updateTime:J

    return-void
.end method
