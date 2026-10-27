.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "WlanTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;


# instance fields
.field private Iq:Landroid/widget/TextView;

.field private Ir:Landroid/widget/TextView;

.field private Is:Landroid/widget/TextView;

.field private Iu:Landroid/widget/TextView;

.field private Iv:Landroid/widget/TextView;

.field private Iw:Landroid/widget/TextView;

.field private MT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;

.field private MU:Landroid/widget/Switch;

.field private MV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

.field private MW:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;

    return-object p0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 1

    .line 164
    if-eqz p2, :cond_0

    .line 165
    const p2, 0x7f100349

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060012

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 168
    :cond_0
    const p2, 0x7f100333

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060016

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MW:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public c(IIII)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iw:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 206
    const p1, 0x7f100237

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public d(IIII)V
    .locals 8

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MU:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const v4, 0x7f100237

    const v5, 0x7f1004bd

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v4, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p0, v0, v7, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iq:Landroid/widget/TextView;

    invoke-direct {p0, p1, v7}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v4, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p0, v0, v6, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iq:Landroid/widget/TextView;

    invoke-direct {p0, p1, v6}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 221
    :goto_0
    return-void
.end method

.method public fd()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 78
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->setContentView(I)V

    .line 79
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;->onInit()V

    .line 81
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->setTarget(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public fe()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 87
    const v0, 0x7f09037d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MU:Landroid/widget/Switch;

    .line 88
    const v0, 0x7f09046d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iv:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f090469

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MW:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0902ee

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iq:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f090463

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iw:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0902e2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Ir:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0902f6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Is:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iu:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 100
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    const v0, 0x7f090249

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v0, 0x7f090248

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->c(IIII)V

    .line 105
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MU:Landroid/widget/Switch;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method public mU()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MT:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;->getWlanLocalAddr()Ljava/lang/String;

    move-result-object v0

    .line 194
    const v2, 0x7f1002da

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f1004b4

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Ir:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v4, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Ir:Landroid/widget/TextView;

    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iv:Landroid/widget/TextView;

    const v3, 0x7f1004b3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public mt()V
    .locals 2

    .line 175
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09013b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 176
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 177
    return-void
.end method

.method public mu()V
    .locals 2

    .line 181
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09013b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 182
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 183
    return-void
.end method

.method public mv()V
    .locals 0

    .line 187
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 188
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->pause()V

    .line 129
    :cond_0
    return-void
.end method

.method public onResult(Landroid/view/View;)V
    .locals 4

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 139
    const v0, 0x7f09017e

    const v1, 0x7f1004b7

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x7f090180

    const/4 v3, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f090324

    const v1, 0x7f1004bf

    if-eq p1, v0, :cond_1

    const v0, 0x7f090329

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Is:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 144
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Is:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iu:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->Iu:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 161
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->MV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->resume()V

    .line 117
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    const-string v0, "wifi diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    return-void
.end method
