.class public Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "AlbumsGuessLikeBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumsGuessLikeBean$DataBean;

    return-void
.end method
