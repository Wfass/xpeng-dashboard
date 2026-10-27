.class public Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MsRankMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/rank/main/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRankMainPresenter"

    const-string v0, "onCreateView"

    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onMusicUnBinded(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsRankMainPresenter"

    const-string v0, "KugouUnBinded"

    .line 47
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/main/view/a;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/a;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsRankMainPresenter"

    const-string v0, "onMusicUnBinded"

    .line 31
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/main/view/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/a;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsRankMainPresenter"

    const-string v0, "NeteaseUnBinded"

    .line 39
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/main/presenter/MsRankMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/main/view/a;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/rank/main/view/a;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method
