.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;
.super Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;,
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;
    }
.end annotation


# instance fields
.field private final Od:Landroid/content/IntentFilter;

.field private final Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

.field private Of:Landroid/net/wifi/WifiManager$ActionListener;

.field private Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

.field private Oh:Landroid/net/NetworkInfo$DetailedState;

.field private Oi:Landroid/net/wifi/WifiInfo;

.field private final Oj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

.field private Ol:Landroid/widget/TextView;

.field private Om:Z

.field private On:Z

.field private Oo:Z

.field private Op:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

.field private Oq:Landroid/os/Bundle;

.field private Or:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private sx:Landroid/net/wifi/WifiManager;

.field private xx:Landroid/net/wifi/WifiManager$ActionListener;

.field private xy:Landroid/net/wifi/WifiManager$ActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 140
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 551
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->dp(I)V

    goto/16 :goto_2

    .line 554
    :cond_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 555
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 558
    :cond_1
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 565
    const-string p1, "newState"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 567
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 568
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Landroid/net/NetworkInfo$DetailedState;)V

    .line 575
    :goto_0
    goto :goto_2

    :cond_3
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 576
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 578
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 579
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->aB(Z)V

    .line 580
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->nn()V

    .line 581
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Landroid/net/NetworkInfo$DetailedState;)V

    .line 582
    iget-boolean p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->On:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 584
    if-eqz p1, :cond_4

    .line 585
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 586
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 588
    :cond_4
    return-void

    .line 590
    :cond_5
    goto :goto_2

    :cond_6
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 591
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_2

    .line 557
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->nn()V

    .line 593
    :cond_8
    :goto_2
    return-void
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->pause()V

    .line 599
    return-void

    .line 602
    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->pause()V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->resume()V

    .line 608
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oi:Landroid/net/wifi/WifiInfo;

    .line 609
    if-eqz p1, :cond_2

    .line 610
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oh:Landroid/net/NetworkInfo$DetailedState;

    .line 613
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 616
    instance-of v1, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v1, :cond_3

    .line 617
    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 618
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oi:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oh:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 613
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 621
    :cond_4
    return-void
.end method

.method private a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;Z)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->removeDialog(I)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Op:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 350
    iput-boolean p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oo:Z

    .line 352
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->showDialog(I)V

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private aB(Z)V
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Om:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 694
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private do(I)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 477
    return-void
.end method

.method private dp(I)V
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 629
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->resume()V

    .line 632
    return-void

    .line 635
    :pswitch_1
    const p1, 0x7f1004ab

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->do(I)V

    .line 636
    goto :goto_0

    .line 639
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->no()V

    .line 643
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oi:Landroid/net/wifi/WifiInfo;

    .line 644
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oh:Landroid/net/NetworkInfo$DetailedState;

    .line 645
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->pause()V

    .line 646
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private nn()V
    .locals 3

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 427
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 430
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->np()Ljava/util/List;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 432
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 433
    const v1, 0x7f100473

    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->do(I)V

    .line 435
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 436
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 437
    goto :goto_0

    .line 438
    :cond_2
    goto :goto_1

    .line 441
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 442
    goto :goto_1

    .line 449
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->no()V

    goto :goto_1

    .line 445
    :pswitch_3
    const v0, 0x7f1004ad

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->do(I)V

    .line 446
    nop

    .line 452
    :goto_1
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

.method private no()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    const v1, 0x7f100472

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 457
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const v0, 0x7f10048f

    goto :goto_0

    .line 465
    :cond_0
    const v0, 0x7f10048e

    .line 467
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 472
    return-void
.end method

.method private np()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;)V

    .line 488
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_0

    .line 490
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 491
    new-instance v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 492
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oi:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oh:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v3, v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 493
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v3, v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    goto :goto_0

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 499
    if-eqz v2, :cond_6

    .line 500
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 502
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[IBSS]"

    .line 503
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 504
    goto :goto_1

    .line 507
    :cond_2
    const/4 v4, 0x0

    .line 508
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->n(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 509
    invoke-virtual {v6, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->d(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 510
    const/4 v4, 0x1

    .line 511
    :cond_3
    goto :goto_2

    .line 512
    :cond_4
    if-nez v4, :cond_5

    .line 513
    new-instance v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 514
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v3, v4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$a;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    :cond_5
    goto :goto_1

    .line 521
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 522
    return-object v0
.end method


# virtual methods
.method a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;)V
    .locals 3

    .line 698
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 700
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 701
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq p1, v1, :cond_3

    .line 703
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->xx:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 706
    :cond_0
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v1, :cond_1

    .line 707
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz p1, :cond_3

    .line 708
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Of:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nm()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 712
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Of:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 714
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->xx:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 718
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 719
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->resume()V

    .line 721
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->nn()V

    .line 722
    return-void
.end method

.method protected mY()I
    .locals 1

    .line 791
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Or:Z

    if-eqz v0, :cond_0

    .line 792
    const/4 v0, 0x0

    return v0

    .line 794
    :cond_0
    const v0, 0x7f100195

    return v0
.end method

.method nq()V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 727
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget v1, v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->xy:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->resume()V

    .line 736
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->nn()V

    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->aB(Z)V

    .line 740
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 171
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    .line 175
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->xx:Landroid/net/wifi/WifiManager$ActionListener;

    .line 191
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$3;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Of:Landroid/net/wifi/WifiManager$ActionListener;

    .line 207
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$4;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->xy:Landroid/net/wifi/WifiManager$ActionListener;

    .line 223
    if-eqz p1, :cond_0

    const-string v0, "wifi_ap_state"

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oo:Z

    .line 226
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 233
    const-string v1, "wifi_auto_finish_on_connect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->On:Z

    .line 235
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->On:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->hasNextButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    :cond_1
    const-string v1, "connectivity"

    .line 242
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 243
    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 246
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 247
    return-void

    .line 253
    :cond_2
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Om:Z

    .line 255
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Om:Z

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    const-string v0, "connectivity"

    .line 258
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 259
    if-eqz p1, :cond_3

    .line 260
    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->aB(Z)V

    .line 267
    :cond_3
    const p1, 0x7f130001

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->addPreferencesFromResource(I)V

    .line 269
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Or:Z

    if-eqz p1, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x1a40000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ol:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 284
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Or:Z

    if-nez p1, :cond_5

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 287
    :cond_5
    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->setHasOptionsMenu(Z)V

    .line 288
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Or:Z

    .line 166
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 357
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 410
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Op:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 360
    if-nez p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 362
    new-instance p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 364
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Op:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    .line 370
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 371
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oo:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;-><init>(Landroid/content/Context;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;Z)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$5;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;)V

    .line 384
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$6;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;)V

    .line 391
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$7;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;)V

    .line 401
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 403
    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 407
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onPause()V

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oe:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->pause()V

    .line 304
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    .line 323
    instance-of v0, p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v0, :cond_2

    .line 324
    check-cast p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 326
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 328
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mX()V

    .line 329
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->sx:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->xx:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, p2, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 332
    const p1, 0x7f100489

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/u;->cr(I)V

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Og:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;Z)V

    .line 339
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 337
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 292
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onResume()V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Od:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->nn()V

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 308
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Ok:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oo:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Op:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Op:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/os/Bundle;)V

    .line 316
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->Oq:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 319
    :cond_0
    return-void
.end method
