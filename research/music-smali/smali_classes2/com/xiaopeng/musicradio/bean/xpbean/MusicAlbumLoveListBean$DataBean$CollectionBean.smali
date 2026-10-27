.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;
.super Ljava/lang/Object;
.source "MusicAlbumLoveListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionBean"
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

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassifiedType()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->isFavourite()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumType;->getType(IZ)I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSongCount()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->songCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->type:I

    return v0
.end method

.method public isFavourite()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->isFavourite:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavourite(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->isFavourite:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSongCount(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->songCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;->type:I

    return-void
.end method
