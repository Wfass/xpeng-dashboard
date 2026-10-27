.class public Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MusicMainAuthPresenter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/main/view/c;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "local_music_extra"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_local_rm_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2000"

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

.method public changeAccountType(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/c;->changeAccountType()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/c;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/c;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MusicMainAuthPresenter"

    const-string v0, "onCreateView"

    .line 29
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainAuthPresenter;->j()V

    return-void
.end method
