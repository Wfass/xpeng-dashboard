.class public Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;
.super Landroid/app/Fragment;
.source "NetPerformanceFragment.java"


# instance fields
.field private Si:Landroid/view/View;

.field private Sq:Landroid/widget/TextView;

.field private Sr:Landroid/widget/TextView;

.field private Ss:Landroid/widget/TextView;

.field private St:Landroid/widget/TextView;

.field private Su:Landroid/widget/TextView;

.field private Sv:Landroid/widget/TextView;

.field private Sw:Landroid/widget/TextView;

.field private Sx:Landroid/widget/TextView;

.field private Sy:Lcom/xiaopeng/devtools/presenter/e/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Si:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Si:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 114
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private nL()V
    .locals 7

    .line 73
    const v0, 0x7f090409

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sq:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f09040a

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sr:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0903f4

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Ss:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0903f3

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->St:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0903f1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Su:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0903f7

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sv:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f090413

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sw:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090411

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sq:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sq:Landroid/widget/TextView;

    const v3, 0x7f100212

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/e;->getIccid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sr:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sr:Landroid/widget/TextView;

    const v3, 0x7f100213

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/e;->getImei()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Ss:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Ss:Landroid/widget/TextView;

    const v3, 0x7f10020f

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/e;->ho()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->St:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->St:Landroid/widget/TextView;

    const v3, 0x7f100211

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/e;->hp()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Su:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Su:Landroid/widget/TextView;

    const v3, 0x7f10020c

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/e;->hq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sv:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sv:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10021c

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    .line 98
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/e;->jT()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sw:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sw:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10021b

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    .line 102
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/e;->jU()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 101
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100210

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    .line 106
    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/e;->hr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 105
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_7
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    const p3, 0x7f0c0095

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Si:Landroid/view/View;

    .line 66
    new-instance p2, Lcom/xiaopeng/devtools/presenter/e/g;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/presenter/e/g;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sy:Lcom/xiaopeng/devtools/presenter/e/e;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->nL()V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 69
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sq:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sr:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Ss:Landroid/widget/TextView;

    .line 123
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->St:Landroid/widget/TextView;

    .line 124
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Su:Landroid/widget/TextView;

    .line 125
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sv:Landroid/widget/TextView;

    .line 126
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sw:Landroid/widget/TextView;

    .line 127
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    .line 128
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Si:Landroid/view/View;

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100210

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;->getNeighboringCellInfo()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/NetServiceEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sw:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10021b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/NetServiceEvent;->getNetService()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/NetStrengthEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sx:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/NetPerformanceFragment;->Sv:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10021c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/NetStrengthEvent;->getNetStrength()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method
