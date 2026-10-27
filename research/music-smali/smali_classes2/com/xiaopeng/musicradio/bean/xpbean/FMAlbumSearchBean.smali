.class public Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "FMAlbumSearchBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumSearchBean$DataBean;

    return-void
.end method
