.class public Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "FMAlbumDetailBean.java"


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method
