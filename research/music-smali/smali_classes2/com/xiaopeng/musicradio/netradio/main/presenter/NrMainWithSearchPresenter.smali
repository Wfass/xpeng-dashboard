.class public Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;
.super Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainPresenter;
.source "NrMainWithSearchPresenter.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainPresenter;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->b:I

    return-void
.end method

.method public onClearFocusEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$l;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/c;->clearFocus()V

    :cond_0
    return-void
.end method

.method public resultBackPress(Lbnw$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/c;->backToHistory()V

    :cond_0
    return-void
.end method

.method public searchBackPress(Lbnw$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/c;

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->b:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/c;->selectTab(I)V

    :cond_0
    return-void
.end method
