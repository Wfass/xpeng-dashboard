.class public Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;
.super Landroid/app/Fragment;
.source "WifiBtPerformanceFragment.java"


# instance fields
.field private SD:Landroid/widget/TextView;

.field private SE:Landroid/widget/TextView;

.field private SF:Landroid/widget/TextView;

.field private SG:Landroid/widget/TextView;

.field private SH:Landroid/widget/TextView;

.field private SI:Landroid/widget/TextView;

.field private SJ:Landroid/widget/TextView;

.field private SK:Landroid/widget/TextView;

.field private SL:Landroid/widget/TextView;

.field private SM:Lcom/xiaopeng/devtools/presenter/e/f;

.field private Si:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->Si:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->Si:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 140
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private nL()V
    .locals 7

    .line 87
    const v0, 0x7f090437

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SD:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0903e6

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SE:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f090435

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SF:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0903e5

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SG:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f090438

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SH:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0903e7

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SI:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f090436

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SJ:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f090434

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SK:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f090433

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SL:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SD:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SD:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1004c2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 99
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->jV()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SE:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SE:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100090

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 103
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->jW()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 102
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SF:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SF:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1004bc

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 107
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->hv()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 106
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SG:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SG:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10008e

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 111
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->getBtName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 110
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SH:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SH:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1004c4

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 115
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->hy()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 114
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/e/f;->hC()V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SI:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SI:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100092

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "N/A"

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SJ:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SJ:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1004c0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 124
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->hx()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 123
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SK:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SK:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1004ba

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 128
    invoke-interface {v6}, Lcom/xiaopeng/devtools/presenter/e/f;->jX()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 127
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SL:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SL:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1004b8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 132
    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/e/f;->hB()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 131
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_8
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

    .line 78
    const p3, 0x7f0c0097

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->Si:Landroid/view/View;

    .line 80
    new-instance p2, Lcom/xiaopeng/devtools/presenter/e/h;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/presenter/e/h;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->nL()V

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 83
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SD:Landroid/widget/TextView;

    .line 147
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SE:Landroid/widget/TextView;

    .line 148
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SF:Landroid/widget/TextView;

    .line 149
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SG:Landroid/widget/TextView;

    .line 150
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SH:Landroid/widget/TextView;

    .line 151
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SI:Landroid/widget/TextView;

    .line 152
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SJ:Landroid/widget/TextView;

    .line 153
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SK:Landroid/widget/TextView;

    .line 154
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SL:Landroid/widget/TextView;

    .line 155
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->Si:Landroid/view/View;

    .line 156
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/BtNameEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SG:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 60
    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/e/f;->getBtName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 59
    const v2, 0x7f10008e

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/BtPowerEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SE:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 66
    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/e/f;->jW()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 65
    const v2, 0x7f100090

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/BtRssiEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SI:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/signal/BtRssiEvent;->getRssi()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 71
    const p1, 0x7f100092

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SF:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 40
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/e/f;->hv()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 39
    const v3, 0x7f1004bc

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SH:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 42
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/e/f;->hy()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 41
    const v3, 0x7f1004c4

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SJ:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 44
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/e/f;->hx()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 43
    const v3, 0x7f1004c0

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SL:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 46
    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/e/f;->hB()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 45
    const v2, 0x7f1004b8

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SD:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 52
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/e/f;->jV()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 51
    const v3, 0x7f1004c2

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SK:Landroid/widget/TextView;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/signal/WifiBtPerformanceFragment;->SM:Lcom/xiaopeng/devtools/presenter/e/f;

    .line 54
    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/e/f;->jX()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 53
    const v2, 0x7f1004ba

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
