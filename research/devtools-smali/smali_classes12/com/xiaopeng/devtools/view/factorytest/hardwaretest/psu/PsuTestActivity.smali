.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "PsuTestActivity.java"


# instance fields
.field private KO:Landroid/widget/TextView;

.field private KP:Landroid/widget/TextView;

.field private KQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

.field private mHandler:Landroid/os/Handler;

.field private xa:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->xa:Z

    .line 30
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KO:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .line 57
    const v0, 0x1060016

    const v1, 0x7f100333

    packed-switch p2, :pswitch_data_0

    .line 71
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 65
    :pswitch_0
    const p2, 0x7f100349

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060012

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    nop

    .line 76
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;Landroid/widget/TextView;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->xa:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KP:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 86
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->setContentView(I)V

    .line 87
    const v0, 0x7f10033d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->setTarget(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public fe()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fe()V

    .line 93
    const v0, 0x7f0902f2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KO:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0902f5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KP:Landroid/widget/TextView;

    .line 95
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->init()V

    .line 97
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->lJ()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->ji()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KP:Landroid/widget/TextView;

    const v1, 0x7f100349

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KP:Landroid/widget/TextView;

    const v1, 0x7f100333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :goto_0
    return-void
.end method

.method public mt()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mt()V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090127

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public mu()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mu()V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090127

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public mv()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mv()V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->KQ:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->destroy()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    return-void
.end method
