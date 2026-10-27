.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$3;
.super Ljava/lang/Object;
.source "MusicPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$900(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
