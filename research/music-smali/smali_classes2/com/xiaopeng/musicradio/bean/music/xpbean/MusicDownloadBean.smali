.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "MusicDownloadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean;->data:Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicDownloadBean$DataBean;

    return-void
.end method
