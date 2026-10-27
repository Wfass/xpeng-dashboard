.class public Lcom/xiaopeng/devtools/model/c/a/g;
.super Ljava/lang/Object;
.source "MobileNetworkModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/c/a/g$a;,
        Lcom/xiaopeng/devtools/model/c/a/g$b;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

.field private sB:Lcom/xiaopeng/devtools/model/c/a/g$a;

.field private sC:I

.field private sw:Landroid/net/ConnectivityManager;

.field private sx:Landroid/net/wifi/WifiManager;

.field private sy:Z

.field private sz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sC:I

    .line 57
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sw:Landroid/net/ConnectivityManager;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sx:Landroid/net/wifi/WifiManager;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sC:I

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sz:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sw:Landroid/net/ConnectivityManager;

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sx:Landroid/net/wifi/WifiManager;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/g;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sC:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/g;)Lcom/xiaopeng/devtools/model/c/a/g$a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sB:Lcom/xiaopeng/devtools/model/c/a/g$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$a;)Lcom/xiaopeng/devtools/model/c/a/g$a;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sB:Lcom/xiaopeng/devtools/model/c/a/g$a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$b;)Lcom/xiaopeng/devtools/model/c/a/g$b;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/g;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/g;->by(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/c/a/g;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private by(Ljava/lang/String;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 219
    const v1, 0x30d41

    iput v1, v0, Landroid/os/Message;->what:I

    .line 220
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/c/a/g;)Lcom/xiaopeng/devtools/model/c/a/g$b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/model/c/a/g;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sC:I

    return p0
.end method

.method private synthetic fW()V
    .locals 2

    .line 169
    const-string v0, "MobileNetworkModel"

    const-string v1, "getConnectInfo"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 171
    const-string v1, "http://www.baidu.com"

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/model/c/a/g$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/model/c/a/g$1;-><init>(Lcom/xiaopeng/devtools/model/c/a/g;)V

    .line 172
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 187
    return-void
.end method

.method public static synthetic lambda$rNTaAuju5NfsBec5x9Y25y49Wpk(Lcom/xiaopeng/devtools/model/c/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/c/a/g;->fW()V

    return-void
.end method


# virtual methods
.method public bw(Ljava/lang/String;)V
    .locals 1

    .line 198
    const-string v0, "ping"

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/m;->R(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public bx(Ljava/lang/String;)Z
    .locals 1

    .line 203
    const-string v0, "ping"

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/m;->Q(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fS()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sx:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sy:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/g$b;->kill()V

    .line 82
    :cond_0
    return-void
.end method

.method public fT()V
    .locals 1

    .line 168
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/-$$Lambda$g$rNTaAuju5NfsBec5x9Y25y49Wpk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/-$$Lambda$g$rNTaAuju5NfsBec5x9Y25y49Wpk;-><init>(Lcom/xiaopeng/devtools/model/c/a/g;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public fU()Z
    .locals 2

    .line 208
    nop

    .line 209
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/ttyUSB0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInit()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sx:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sy:Z

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sx:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sz:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/c/a/g$b;-><init>(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$1;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g;->sA:Lcom/xiaopeng/devtools/model/c/a/g$b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/g$b;->start()V

    .line 74
    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 1

    .line 193
    new-instance v0, Lcom/xiaopeng/devtools/system/b/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/devtools/system/b/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method
