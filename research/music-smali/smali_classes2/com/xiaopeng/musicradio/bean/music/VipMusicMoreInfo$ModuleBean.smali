.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;
.super Ljava/lang/Object;
.source "VipMusicMoreInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleBean"
.end annotation


# instance fields
.field private childList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;",
            ">;"
        }
    .end annotation
.end field

.field private collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;

.field private isShowAll:I

.field private moduleId:J

.field private name:Ljava/lang/String;

.field private type:I

.field private zoneId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->childList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->childList:Ljava/util/List;

    return-object v0
.end method

.method public getCollectInfo()Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;

    return-object v0
.end method

.method public getIsShowAll()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->isShowAll:I

    return v0
.end method

.method public getModuleId()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->moduleId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->type:I

    return v0
.end method

.method public getZoneId()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->zoneId:J

    return-wide v0
.end method

.method public setChildList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->childList:Ljava/util/List;

    return-void
.end method

.method public setCollectInfo(Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;

    return-void
.end method

.method public setIsShowAll(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->isShowAll:I

    return-void
.end method

.method public setModuleId(J)V
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->moduleId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->type:I

    return-void
.end method

.method public setZoneId(J)V
    .locals 0

    .line 112
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->zoneId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleBean{zoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->zoneId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->moduleId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->isShowAll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collectInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->collectInfo:Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$CollectInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicMoreInfo$ModuleBean;->childList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
