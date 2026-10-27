.class public Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
.super Ljava/lang/Object;
.source "SysConfigManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;
.implements Lcom/xiaopeng/sysconfig/SysConfigManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SysConfigListenerToService;,
        Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SingleInstanceHolder;
    }
.end annotation


# static fields
.field private static final EVENT_MSG_HANDLE_SYS_CONFIG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SysConfigManagerImpl"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

.field private serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    new-instance v1, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;-><init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->handleSysConfigUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;)Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$SingleInstanceHolder;->access$200()Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private handleSysConfigUpdated(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    .line 123
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    .line 124
    new-instance p1, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onServerDisconnected()V

    .line 167
    sget-object v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onServerDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_0

    .line 149
    sget-object p1, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onXUIConnected,service binder is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 153
    sget-object v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;->connect()V

    .line 161
    sget-object p1, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onXUIConnected"

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 132
    sget-object v0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onXUIDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public registerConfigUpdateListener(Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;->register(Ljava/lang/Object;)Z

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public unregisterConfigUpdateListener(Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/SysConfigListenerRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    return-void
.end method
