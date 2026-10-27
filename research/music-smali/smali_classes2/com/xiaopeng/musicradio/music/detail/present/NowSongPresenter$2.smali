.class Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;
.super Ljava/lang/Object;
.source "NowSongPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;->b:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;->b:Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->j:Z

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a(Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
