.class Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;
.super Lbkv;
.source "MsMusicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->j()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->f()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
