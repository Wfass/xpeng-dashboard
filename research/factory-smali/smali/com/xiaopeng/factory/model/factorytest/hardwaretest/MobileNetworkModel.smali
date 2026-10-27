.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
.super Ljava/lang/Object;
.source "MobileNetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;,
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;
    }
.end annotation


# static fields
.field private static final MESSAGE_HTTP_GET:I = 0x1

.field private static final MODULE_4G:Ljava/lang/String; = "/dev/ttyUSB0"

.field public static final NETWORK_BAIDU:Ljava/lang/String; = "http://www.baidu.com"

.field private static final TAG:Ljava/lang/String; = "MobileNetworkModel"


# instance fields
.field private lteSignalStrength:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

.field private phoneStateListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

.field private wifiStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I

    .line 57
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->phoneStateListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
    .param p1, "x1"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->phoneStateListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$MyPhoneStateListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
    .param p1, "x1"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    .line 32
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getConnectInfo$0(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V
    .locals 3

    .line 162
    const-string v0, "MobileNetworkModel"

    const-string v1, "getConnectInfo"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 164
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    const-string v1, "http://www.baidu.com"

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V

    .line 165
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 180
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 196
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getConnectInfo()V
    .locals 1

    .line 161
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/-$$Lambda$MobileNetworkModel$qQdqk1Q5XhHS5ibpujfXjPv2u5g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/-$$Lambda$MobileNetworkModel$qQdqk1Q5XhHS5ibpujfXjPv2u5g;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public getLteSignalStrength()I
    .locals 3

    .line 156
    const-string v0, "MobileNetworkModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteSignalStrength lteSignalStrength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I

    return v0
.end method

.method public getMobileDataEnabled()Z
    .locals 6

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "isMobileDataEnabled":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 139
    .local v1, "mConnectivityManagerClass":Ljava/lang/Class;
    :try_start_0
    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 140
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 144
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MobileNetworkModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "MobileNetworkModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileDataEnabled isMobileDataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    return v0
.end method

.method public getNetworkType()I
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 151
    .local v0, "type":I
    const-string v1, "MobileNetworkModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    return v0
.end method

.method public isModuleNormal()Z
    .locals 3

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "status":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/ttyUSB0"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :cond_0
    return v0
.end method

.method public onDestory()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->wifiStatus:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->kill()V

    .line 80
    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->wifiStatus:Z

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->networkLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$NetworkLooperThread;->start()V

    .line 73
    :cond_0
    return-void
.end method

.method public setMobileDataEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "mConnectivityManagerClass":Ljava/lang/Class;
    :try_start_0
    const-string v1, "setMobileDataEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 120
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 121
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    if-nez p1, :cond_0

    .line 124
    iput v5, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lteSignalStrength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MobileNetworkModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
