.class public Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;
.super Lcom/xiaopeng/devtools/view/AppBaseActivity;
.source "FactoryTestBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

.field private FS:Landroid/widget/Button;

.field private FT:Landroid/widget/Button;

.field private FU:Landroid/widget/Button;

.field private FV:Landroid/widget/LinearLayout;

.field private FW:Ljava/lang/String;

.field private FX:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FX:Z

    return-void
.end method

.method private ar(Z)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FW:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->d(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->finish()V

    .line 106
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FX:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public fd()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fd()V

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    .line 33
    return-void
.end method

.method public fe()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fe()V

    .line 38
    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FS:Landroid/widget/Button;

    .line 39
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FT:Landroid/widget/Button;

    .line 40
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FU:Landroid/widget/Button;

    .line 41
    const v0, 0x7f09023e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FV:Landroid/widget/LinearLayout;

    .line 42
    return-void
.end method

.method public ff()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->ff()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FT:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FU:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FW:Ljava/lang/String;

    return-object v0
.end method

.method public lJ()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->lJ()V

    .line 47
    return-void
.end method

.method public mt()V
    .locals 2

    .line 79
    const-string v0, "FactoryTestBaseActivity"

    const-string v1, "onTestSucceed"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->ar(Z)V

    .line 81
    return-void
.end method

.method public mu()V
    .locals 2

    .line 84
    const-string v0, "FactoryTestBaseActivity"

    const-string v1, "onTestFail"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->ar(Z)V

    .line 86
    return-void
.end method

.method public mv()V
    .locals 2

    .line 89
    const-string v0, "FactoryTestBaseActivity"

    const-string v1, "onTestNext"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected mw()V
    .locals 2

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FX:Z

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FV:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09011b

    if-eq p1, v0, :cond_2

    const v0, 0x7f090124

    if-eq p1, v0, :cond_1

    const v0, 0x7f090136

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->mt()V

    .line 62
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->mv()V

    .line 70
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->mu()V

    .line 66
    nop

    .line 76
    :goto_0
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->FW:Ljava/lang/String;

    .line 120
    return-void
.end method
