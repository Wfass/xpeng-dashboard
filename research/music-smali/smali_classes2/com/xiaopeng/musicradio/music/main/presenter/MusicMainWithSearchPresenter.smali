.class public Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;
.source "MusicMainWithSearchPresenter.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->b:I

    return-void
.end method

.method public onClearFocusEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$l;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/d;->clearFocus()V

    :cond_0
    return-void
.end method

.method public resultBackPress(Lbnw$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/d;->backToHistory()V

    :cond_0
    return-void
.end method

.method public searchBackPress(Lbnw$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 14
    iget p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->b:I

    if-ltz p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->b:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->selectTab(I)V

    :cond_0
    return-void
.end method
