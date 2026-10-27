.class public Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;
.super Landroid/app/Fragment;
.source "FmPerformanceFragment.java"


# instance fields
.field Sf:Landroid/widget/TextView;

.field Sg:Landroid/widget/TextView;

.field Sh:Landroid/widget/TextView;

.field private Si:Landroid/view/View;

.field private Sj:Lcom/xiaopeng/devtools/presenter/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Si:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Si:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private nL()V
    .locals 7

    .line 54
    const v0, 0x7f0903ff

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sf:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0903ef

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sg:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0903f0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sh:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sf:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sf:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10015b

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 60
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/c;->hg()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sg:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100158

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 64
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/c;->getFrequency()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 63
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sh:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sh:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10015c

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 68
    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/c;->hh()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 67
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_2
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

    .line 45
    const p3, 0x7f0c0093

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Si:Landroid/view/View;

    .line 47
    new-instance p2, Lcom/xiaopeng/devtools/presenter/e/a;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/presenter/e/a;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->nL()V

    .line 49
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 50
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sf:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sg:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sh:Landroid/widget/TextView;

    .line 85
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Si:Landroid/view/View;

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/FmEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sf:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 35
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/e/c;->hg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 34
    const v3, 0x7f10015b

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sg:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 37
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/e/c;->getFrequency()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 36
    const v3, 0x7f100158

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sh:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/signal/FmPerformanceFragment;->Sj:Lcom/xiaopeng/devtools/presenter/e/c;

    .line 39
    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/e/c;->hh()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 38
    const v2, 0x7f10015c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
