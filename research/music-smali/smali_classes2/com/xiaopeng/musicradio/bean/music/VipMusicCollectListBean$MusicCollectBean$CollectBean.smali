.class public Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;
.super Ljava/lang/Object;
.source "VipMusicCollectListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectBean"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isFavourite:Z

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private songCount:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->songCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->type:I

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->isFavourite:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavourite(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->isFavourite:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->songCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/VipMusicCollectListBean$MusicCollectBean$CollectBean;->type:I

    return-void
.end method
