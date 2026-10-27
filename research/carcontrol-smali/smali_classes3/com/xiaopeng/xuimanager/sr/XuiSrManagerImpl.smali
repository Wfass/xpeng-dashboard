.class public Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;
.super Ljava/lang/Object;
.source "XuiSrManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;
.implements Lcom/xiaopeng/xuimanager/sr/XuiSrManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$ISrListenerToService;
    }
.end annotation


# static fields
.field private static final MSG_ON_HIDE_ICON:I = 0x2

.field private static final MSG_ON_SHOW_ICON:I = 0x1

.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XuiSrManager"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/xiaopeng/xuimanager/sr/ISr;

.field private name:Ljava/lang/String;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

.field private serverDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->serverDisconnected:Z

    .line 37
    new-instance v0, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    new-instance v1, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$2;-><init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)Lcom/xiaopeng/xuimanager/sr/ISr;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sr/ISr;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->handleOnShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->handleOnHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    return-object v0
.end method

.method private handleOnHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleOnShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public getIcons()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/sr/SrIcon;",
            ">;"
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sr/ISr;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/sr/ISr;->getIcons()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "XuiSrManager"

    const-string v2, "getIcons"

    .line 122
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    .line 113
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sr/ISr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sr/ISr;

    .line 114
    new-instance p1, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onServerDisconnected()V

    const-string v0, "XuiSrManager"

    const-string v1, "onServerDisconnected"

    .line 103
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->serverDisconnected:Z

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onXUIConnected(Landroid/os/IBinder;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onXUIConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XuiSrManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->serverDisconnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->serverDisconnected:Z

    .line 86
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sr/ISr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sr/ISr;

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->connect()V

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    const-string v0, "XuiSrManager"

    const-string v1, "onXUIDisconnected"

    .line 70
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public registerIconListener(Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->register(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportIconClick(Ljava/lang/String;)V
    .locals 3

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->mService:Lcom/xiaopeng/xuimanager/sr/ISr;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/sr/ISr;->reportIconClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportIconClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XuiSrManager"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public unregisterIconListener(Lcom/xiaopeng/xuimanager/sr/XuiSrIconListener;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->registerAndNotify:Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    return-void
.end method
