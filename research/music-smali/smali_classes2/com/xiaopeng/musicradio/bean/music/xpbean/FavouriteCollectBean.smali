.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "FavouriteCollectBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    return-void
.end method
