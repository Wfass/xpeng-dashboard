.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private IC:Z

.field private IE:I

.field private IF:I

.field private IG:I

.field private IH:I

.field private MP:Landroid/widget/Switch;

.field private MQ:Z

.field private MR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final sx:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;Landroid/widget/Switch;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    .line 43
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IE:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IF:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IG:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IH:I

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;

    .line 59
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->sx:Landroid/net/wifi/WifiManager;

    .line 60
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->dm(I)V

    return-void
.end method

.method private dm(I)V
    .locals 4

    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 171
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->setSwitchChecked(Z)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->setSwitchChecked(Z)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;->mU()V

    .line 153
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    if-eqz p1, :cond_0

    .line 154
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IE:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IE:I

    .line 155
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mB()V

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IE:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IF:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IG:I

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IH:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;->d(IIII)V

    .line 158
    goto :goto_0

    .line 147
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 148
    goto :goto_0

    .line 163
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->setSwitchChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 165
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    if-eqz p1, :cond_1

    .line 166
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IG:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IG:I

    .line 167
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mB()V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 161
    nop

    .line 175
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 135
    move v0, v1

    goto :goto_0

    .line 133
    :cond_0
    nop

    .line 135
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 136
    return v1

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private mB()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IE:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IF:I

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IG:I

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IH:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/a;->c(IIII)V

    .line 187
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MQ:Z

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 181
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MQ:Z

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MQ:Z

    if-eqz v0, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f10047c

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 97
    return-void

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    .line 103
    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-ne p1, v1, :cond_3

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 109
    :cond_3
    const/4 p1, 0x1

    if-eqz p2, :cond_5

    .line 110
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    if-eqz v1, :cond_4

    .line 111
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IF:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IF:I

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mB()V

    .line 114
    :cond_4
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    goto :goto_0

    .line 116
    :cond_5
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    .line 117
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IC:Z

    if-eqz v1, :cond_6

    .line 118
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IH:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->IH:I

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mB()V

    .line 123
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p2

    if-nez p2, :cond_7

    .line 126
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 127
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100474

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_7
    return-void
.end method

.method public pause()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    return-void
.end method

.method public resume()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    .line 81
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 82
    move v0, v2

    goto :goto_0

    .line 81
    :cond_1
    nop

    .line 82
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_2

    .line 83
    move p1, v2

    goto :goto_1

    .line 82
    :cond_2
    nop

    .line 83
    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->MP:Landroid/widget/Switch;

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 85
    return-void
.end method
