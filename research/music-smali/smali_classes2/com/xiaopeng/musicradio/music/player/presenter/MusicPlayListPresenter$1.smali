.class Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;
.super Ljava/lang/Object;
.source "MusicPlayListPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Landroidx/lifecycle/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/music/player/view/k$d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/music/player/view/k$d;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;->a:Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/player/view/e;->submitList(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method
