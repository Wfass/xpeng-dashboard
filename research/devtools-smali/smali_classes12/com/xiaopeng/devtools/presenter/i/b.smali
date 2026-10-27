.class public Lcom/xiaopeng/devtools/presenter/i/b;
.super Ljava/lang/Object;
.source "UserSettingsPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/i/a;


# instance fields
.field private Ai:Lcom/xiaopeng/devtools/model/i/a;

.field private Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

.field private Ak:Lcom/xpeng/test/WifiTest;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/presenter/i/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/i/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/i/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {}, Lcom/xiaopeng/devtools/model/i/b;->hM()Lcom/xiaopeng/devtools/model/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    .line 67
    new-instance v0, Lcom/xpeng/test/WifiTest;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xpeng/test/WifiTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ak:Lcom/xpeng/test/WifiTest;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/usersettings/a;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/presenter/i/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/i/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/i/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    invoke-static {}, Lcom/xiaopeng/devtools/model/i/b;->hM()Lcom/xiaopeng/devtools/model/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

    .line 73
    new-instance p1, Lcom/xpeng/test/WifiTest;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xpeng/test/WifiTest;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ak:Lcom/xpeng/test/WifiTest;

    .line 74
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method private synthetic O(Z)V
    .locals 2

    .line 116
    if-eqz p1, :cond_0

    const/16 p1, 0x13ba

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cE(I)V

    .line 117
    const-string p1, "adbd"

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cM(Ljava/lang/String;)V

    .line 118
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 119
    const-string p1, "adbd"

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->cK(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/usersettings/a;->nY()V

    .line 123
    :cond_1
    return-void
.end method

.method private synthetic P(Z)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/i/a;->setDebugStatus(Z)V

    .line 106
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/view/usersettings/a;->nY()V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xpeng/test/WifiTest;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ak:Lcom/xpeng/test/WifiTest;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Aj:Lcom/xiaopeng/devtools/view/usersettings/a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/model/i/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    return-object p0
.end method

.method public static synthetic lambda$WU4gi-Myjy2mcChocjeyK2iLYC4(Lcom/xiaopeng/devtools/presenter/i/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/i/b;->P(Z)V

    return-void
.end method

.method public static synthetic lambda$jmuwrEpYzbmBNFt7-FjvHhubGzI(Lcom/xiaopeng/devtools/presenter/i/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/i/b;->O(Z)V

    return-void
.end method


# virtual methods
.method public F(Z)V
    .locals 1

    .line 86
    new-instance v0, Lcom/xiaopeng/devtools/presenter/i/b$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/i/b$2;-><init>(Lcom/xiaopeng/devtools/presenter/i/b;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public G(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/i/a;->G(Z)V

    .line 145
    return-void
.end method

.method public H(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/i/a;->H(Z)V

    .line 150
    return-void
.end method

.method public N(Z)V
    .locals 1

    .line 115
    new-instance v0, Lcom/xiaopeng/devtools/presenter/i/-$$Lambda$b$jmuwrEpYzbmBNFt7-FjvHhubGzI;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/i/-$$Lambda$b$jmuwrEpYzbmBNFt7-FjvHhubGzI;-><init>(Lcom/xiaopeng/devtools/presenter/i/b;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public bJ(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/i/a;->bJ(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public hK()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/i/a;->hK()Z

    move-result v0

    return v0
.end method

.method public hL()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ai:Lcom/xiaopeng/devtools/model/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/i/a;->hL()Z

    move-result v0

    return v0
.end method

.method public kE()Z
    .locals 2

    .line 128
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->li()I

    move-result v0

    .line 129
    const/16 v1, 0x13ba

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kF()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b;->Ak:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getIPAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/i/b;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    return-void
.end method

.method public setDebugStatus(Z)V
    .locals 1

    .line 104
    new-instance v0, Lcom/xiaopeng/devtools/presenter/i/-$$Lambda$b$WU4gi-Myjy2mcChocjeyK2iLYC4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/i/-$$Lambda$b$WU4gi-Myjy2mcChocjeyK2iLYC4;-><init>(Lcom/xiaopeng/devtools/presenter/i/b;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
