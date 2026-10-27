.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "ReadAlbumLoveListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private album:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field private createTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$ListBean;->album:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$ListBean;->createTime:J

    return-wide v0
.end method

.method public setAlbum(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$ListBean;->album:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadAlbumLoveListBean$DataBean$ListBean;->createTime:J

    return-void
.end method
