.class public Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;
.super Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;
.source "ProgramMainWithSearchPresenter.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainPresenter;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->b:I

    return-void
.end method

.method public onClearFocusEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$l;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/main/view/a;->clearFocus()V

    :cond_0
    return-void
.end method

.method public resultBackPress(Lbnw$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/main/view/a;->backToHistory()V

    :cond_0
    return-void
.end method

.method public searchBackPress(Lbnw$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/main/view/a;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->b:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/main/view/a;->selectTab(I)V

    :cond_0
    return-void
.end method
