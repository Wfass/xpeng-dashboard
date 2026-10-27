.class Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;
.super Ljava/lang/Object;
.source "MsMusicDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;->b:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;->b:Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->k:Z

    .line 172
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
