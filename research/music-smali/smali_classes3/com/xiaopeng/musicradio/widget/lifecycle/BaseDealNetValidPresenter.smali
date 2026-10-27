.class public abstract Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "BaseDealNetValidPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->b:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter$1;-><init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->b:Ljava/lang/Runnable;

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 27
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method
