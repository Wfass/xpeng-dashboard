.class public Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;
.super Landroid/app/Fragment;
.source "GpsPerformanceFragment.java"


# instance fields
.field private Si:Landroid/view/View;

.field private Sk:Landroid/widget/TextView;

.field private Sl:Landroid/widget/TextView;

.field private Sm:Landroid/widget/TextView;

.field private Sn:Landroid/widget/TextView;

.field private So:Landroid/widget/TextView;

.field private Sp:Lcom/xiaopeng/devtools/presenter/e/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Si:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Si:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private nL()V
    .locals 7

    .line 67
    const v0, 0x7f090402

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sk:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f090403

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sl:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f090405

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sm:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f090401

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sn:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f090404

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->So:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/xiaopeng/devtools/presenter/e/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/e/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sp:Lcom/xiaopeng/devtools/presenter/e/d;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sk:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sk:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10017c

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sp:Lcom/xiaopeng/devtools/presenter/e/d;

    .line 76
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/d;->jS()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sl:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sl:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100185

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sp:Lcom/xiaopeng/devtools/presenter/e/d;

    .line 80
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/d;->hj()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 79
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sm:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sm:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100187

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sp:Lcom/xiaopeng/devtools/presenter/e/d;

    .line 84
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/d;->getLocationTime()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sn:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sn:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100179

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sp:Lcom/xiaopeng/devtools/presenter/e/d;

    .line 88
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/d;->hk()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 87
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->So:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->So:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100186

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sp:Lcom/xiaopeng/devtools/presenter/e/d;

    .line 92
    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/d;->getGpsSpeed()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 91
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_4
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 59
    const p3, 0x7f0c0094

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Si:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->nL()V

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 63
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sk:Landroid/widget/TextView;

    .line 107
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sl:Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sm:Landroid/widget/TextView;

    .line 109
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sn:Landroid/widget/TextView;

    .line 110
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->So:Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Si:Landroid/view/View;

    .line 112
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/GpsLocationEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sm:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/GpsLocationEvent;->getLocationTime()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 43
    const v4, 0x7f100187

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sn:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/GpsLocationEvent;->getLocation()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 45
    const p1, 0x7f100179

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/GpsNumSnrEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sk:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/GpsNumSnrEvent;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 35
    const v4, 0x7f10017c

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->Sl:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/GpsNumSnrEvent;->getSnrString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 37
    const p1, 0x7f100185

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/GpsPerformanceFragment;->So:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;->getGpsSpeed()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 51
    const p1, 0x7f100186

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
