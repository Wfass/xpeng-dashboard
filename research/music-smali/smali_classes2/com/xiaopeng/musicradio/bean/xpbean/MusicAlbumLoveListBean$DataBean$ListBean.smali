.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;
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
    name = "ListBean"
.end annotation


# instance fields
.field private collect:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;

.field private createTime:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->state:I

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public getMusicCollectBean()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->collect:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->state:I

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->createTime:J

    return-void
.end method

.method public setMusicCollectBean(Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->collect:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$CollectionBean;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumLoveListBean$DataBean$ListBean;->state:I

    return-void
.end method
