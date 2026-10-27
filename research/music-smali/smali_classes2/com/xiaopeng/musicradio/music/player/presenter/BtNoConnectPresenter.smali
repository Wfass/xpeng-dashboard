.class public Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "BtNoConnectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 27
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->h()V

    .line 29
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->o()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lbsd;->a()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaCenterBtStatusChanged(Lasa$e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaCenterBtStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtNoConnectPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/c;

    invoke-virtual {p1}, Lasa$e;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/c;->updateBtLoadingState(I)V

    :cond_0
    return-void
.end method
