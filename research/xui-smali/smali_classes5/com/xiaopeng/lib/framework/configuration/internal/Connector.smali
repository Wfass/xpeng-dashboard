.class final Lcom/xiaopeng/lib/framework/configuration/internal/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field private static final MSG_BIND_REQUEST:I = 0x1

.field private static final MSG_BIND_SUCCESS:I = 0x2

.field private static final MSG_BIND_TIMEOUT:I = 0x3

.field private static final REMOTE_CLASS_NAME:Ljava/lang/String; = "com.xiaopeng.configurationcenter.connector.RemoteService"

.field private static final REMOTE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.configurationcenter"

.field private static final REMOTE_SERVICE_ACTION:Ljava/lang/String; = "com.xiaopeng.configurationcenter.connector.RemoteService.CONNECT"

.field private static final TAG:Ljava/lang/String; = "Connector"


# instance fields
.field private mCallback:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private mProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

.field private volatile mService:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$2;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 122
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$3;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 134
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$4;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mCallback:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thread-connector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->bindService()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mService:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mService:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mCallback:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method private bindService()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.xiaopeng.configurationcenter"

    const-string v4, "com.xiaopeng.configurationcenter.connector.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    const-string v2, "com.xiaopeng.configurationcenter.connector.RemoteService.CONNECT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 158
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method connect()V
    .locals 4

    .line 69
    const-string v0, "Connector"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    return-void
.end method

.method getConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mService:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mService:Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->mProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;->getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 82
    const-string v1, "Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguration: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 87
    :cond_0
    const-string v1, "Connector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfiguration key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but service is null, has the service been connected?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    return-object v0
.end method
