.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "CollectListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field public createTime:J

.field public creatorName:Ljava/lang/String;

.field public creatorPic:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dissExtraId:Ljava/lang/String;

.field public favNum:J

.field public id:Ljava/lang/String;

.field public listenNum:J

.field public logo:Ljava/lang/String;

.field public modifyTime:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->creatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorPic()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->creatorPic:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDissExtraId()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->dissExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getFavNum()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->favNum:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getListenNum()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->listenNum:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->modifyTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->createTime:J

    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public setCreatorPic(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->creatorPic:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDissExtraId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->dissExtraId:Ljava/lang/String;

    return-void
.end method

.method public setFavNum(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->favNum:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setListenNum(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->listenNum:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setModifyTime(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->modifyTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->name:Ljava/lang/String;

    return-void
.end method
