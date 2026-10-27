.class public Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "HwCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private pi:Landroid/content/BroadcastReceiver;

.field private ra:Landroid/widget/Button;

.field private rb:Landroid/widget/Button;

.field private rc:Landroid/widget/Button;

.field private rd:Landroid/widget/Button;

.field private re:Landroid/widget/Button;

.field private rf:Landroid/widget/Button;

.field private rg:Landroid/widget/Button;

.field private rh:Landroid/widget/Button;

.field private ri:Lcom/xiaopeng/devtools/devdebug/hwcheck/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->ri:Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

    .line 60
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity$1;-><init>(Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->pi:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bm(Ljava/lang/String;)V
    .locals 1

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 53
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->setContentView(I)V

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    const-string v1, "com.xiaopeng.broadcast.START_UPGRADE_MODEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.xiaopeng.broadcast.STOP_UPGRADE_MODEM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->pi:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public fe()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 75
    const v0, 0x7f090123

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->ra:Landroid/widget/Button;

    .line 76
    const v0, 0x7f090126

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rb:Landroid/widget/Button;

    .line 77
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rc:Landroid/widget/Button;

    .line 78
    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rd:Landroid/widget/Button;

    .line 79
    const v0, 0x7f0900e2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->re:Landroid/widget/Button;

    .line 80
    const v0, 0x7f090118

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rf:Landroid/widget/Button;

    .line 81
    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rg:Landroid/widget/Button;

    .line 82
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rh:Landroid/widget/Button;

    .line 83
    return-void
.end method

.method public ff()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->ra:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->re:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rf:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 114
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 128
    :sswitch_0
    const-class p1, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 129
    goto :goto_0

    .line 141
    :sswitch_1
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 142
    goto :goto_0

    .line 120
    :sswitch_2
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/powertest/PowerTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 121
    goto :goto_0

    .line 116
    :sswitch_3
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 117
    goto :goto_0

    .line 145
    :sswitch_4
    const-class p1, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 146
    goto :goto_0

    .line 136
    :sswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->ri:Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

    const/16 v0, 0xfa0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/b;->bS(I)V

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rf:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    goto :goto_0

    .line 124
    :sswitch_6
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/audio/AudioTestActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 125
    goto :goto_0

    .line 132
    :sswitch_7
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->d(Ljava/lang/Class;)V

    .line 133
    nop

    .line 150
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900e2 -> :sswitch_7
        0x7f090106 -> :sswitch_6
        0x7f090118 -> :sswitch_5
        0x7f09011f -> :sswitch_4
        0x7f090123 -> :sswitch_3
        0x7f090126 -> :sswitch_2
        0x7f09012b -> :sswitch_1
        0x7f090132 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 166
    const-string v0, "com.xiaopeng.broadcast.STOP_UPGRADE_MODEM"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->bm(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/EtcPwmEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rf:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/HwCheckActivity;->rf:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 109
    return-void
.end method
