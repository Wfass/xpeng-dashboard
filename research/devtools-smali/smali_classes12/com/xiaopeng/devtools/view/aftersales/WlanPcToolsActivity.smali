.class public Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "WlanPcToolsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ER:Landroid/widget/CheckBox;

.field private ES:Landroid/content/Intent;

.field private ET:Z

.field private EU:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private pd:Lcom/xiaopeng/xui/app/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ET:Z

    .line 37
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->EU:Z

    .line 39
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;-><init>(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->mf()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->EU:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ET:Z

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Lcom/xiaopeng/xui/app/e;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ER:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/content/Intent;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ES:Landroid/content/Intent;

    return-object p0
.end method

.method private lT()V
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-nez v0, :cond_0

    .line 159
    const v0, 0x7f1002f2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$2;

    invoke-direct {v4, p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$2;-><init>(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V

    const/4 v5, 0x1

    const/16 v6, 0x2710

    new-instance v7, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$3;

    invoke-direct {v7, p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$3;-><init>(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/xiaopeng/xui/app/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/e$a;)Lcom/xiaopeng/xui/app/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 176
    :goto_0
    return-void
.end method

.method private mf()V
    .locals 3

    .line 179
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$4;-><init>(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/j;->b(Ljava/lang/Runnable;J)V

    .line 191
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 3

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 111
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->setContentView(I)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ES:Landroid/content/Intent;

    .line 113
    return-void
.end method

.method public fe()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 118
    const v0, 0x7f0902b0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ER:Landroid/widget/CheckBox;

    .line 119
    return-void
.end method

.method public ff()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ER:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->k(Ljava/lang/Object;)V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->mf()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ER:Landroid/widget/CheckBox;

    const-string v1, "com.xiaopeng.devtools.system.service.PcCommandService"

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/a;->cr(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902b0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 145
    check-cast p1, Landroid/widget/CheckBox;

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->lT()V

    .line 147
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ES:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ES:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->stopService(Landroid/content/Intent;)Z

    .line 155
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/f;->l(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iput-boolean v1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ET:Z

    .line 91
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->EU:Z

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ER:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 82
    :pswitch_1
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ET:Z

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->ER:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    nop

    .line 101
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
