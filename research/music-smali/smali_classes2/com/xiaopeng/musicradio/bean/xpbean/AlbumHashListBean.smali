.class public Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "AlbumHashListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/AlbumHashListBean$DataBean;

    return-void
.end method
