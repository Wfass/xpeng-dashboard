.class Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;
.super Lbkv;
.source "NowSongPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->d()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->f()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
