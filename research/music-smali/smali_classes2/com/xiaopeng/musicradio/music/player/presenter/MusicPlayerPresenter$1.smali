.class Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$1;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->onPlayerNav(Lbli$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$1;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter$1;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/g;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/g;->openLrc()V

    return-void
.end method
