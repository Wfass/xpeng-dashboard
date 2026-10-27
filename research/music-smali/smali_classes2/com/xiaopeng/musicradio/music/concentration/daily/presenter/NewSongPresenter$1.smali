.class Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;
.super Lbkv;
.source "NewSongPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 113
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
