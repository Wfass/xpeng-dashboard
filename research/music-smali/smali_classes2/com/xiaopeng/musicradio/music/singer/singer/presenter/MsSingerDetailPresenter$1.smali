.class Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;
.super Lbkv;
.source "MsSingerDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->c()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->f()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
