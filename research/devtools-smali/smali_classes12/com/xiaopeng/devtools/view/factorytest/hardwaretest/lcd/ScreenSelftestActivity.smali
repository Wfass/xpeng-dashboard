.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "ScreenSelftestActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;


# instance fields
.field private Kr:Landroid/widget/Switch;

.field private Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

.field private Kt:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;

.field private Ku:Landroid/widget/TextView;

.field private Kv:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic av(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->K(Z)V

    return-void
.end method

.method public static synthetic lambda$qO6n-bXTzdM9g34kE_BYSXDMcJg(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->av(Z)V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 0

    .line 107
    return-void
.end method

.method public cY(I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ku:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kt:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;->e(Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method public dj(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public fd()V
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 33
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f100344

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->setTarget(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    .line 36
    return-void
.end method

.method public fe()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 41
    const v0, 0x7f090379

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kr:Landroid/widget/Switch;

    .line 42
    const v0, 0x7f0903ed

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ku:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f09025f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->mListView:Landroid/widget/ListView;

    .line 44
    const v0, 0x7f0903f5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kv:Landroid/widget/TextView;

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kt:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kt:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelfAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method public ff()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kr:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 52
    const-string v0, "ScreenSelftestActivity"

    const-string v1, "setView"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->iW()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Kr:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->iZ()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 55
    return-void
.end method

.method public mt()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public mu()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public mv()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 103
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f090379

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/-$$Lambda$ScreenSelftestActivity$qO6n-bXTzdM9g34kE_BYSXDMcJg;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/-$$Lambda$ScreenSelftestActivity$qO6n-bXTzdM9g34kE_BYSXDMcJg;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;Z)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->iX()V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->Ks:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->iY()V

    .line 67
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, "screen diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/ScreenSelftestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method
