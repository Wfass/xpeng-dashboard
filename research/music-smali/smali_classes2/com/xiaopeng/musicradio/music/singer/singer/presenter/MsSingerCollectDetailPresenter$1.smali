.class Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;
.super Lbkv;
.source "MsSingerCollectDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->f()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
