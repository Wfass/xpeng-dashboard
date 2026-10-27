.class public Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsXpPlayItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "new_music_radio"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_recommend_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public o_()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRmItemPresenter"

    const-string v0, "onCreateView"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->j()V

    return-void
.end method

.method public xpChange(Lbhk$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;->change()V

    :cond_0
    return-void
.end method
