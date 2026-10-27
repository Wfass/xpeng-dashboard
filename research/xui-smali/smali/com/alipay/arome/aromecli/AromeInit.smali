.class public Lcom/alipay/arome/aromecli/AromeInit;
.super Ljava/lang/Object;
.source "AromeInit.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/arome/aromecli/AromeInit$a;,
        Lcom/alipay/arome/aromecli/AromeInit$Callback;,
        Lcom/alipay/arome/aromecli/AromeInit$b;
    }
.end annotation


# static fields
.field public static final AROME_INIT_FAILED_BIND_SERVICE_FAILED:I = 0x3

.field public static final AROME_INIT_FAILED_BIND_SERVICE_TIMEOUT:I = 0x4

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.alipay.arome.app"

.field private static sApplicationContext:Landroid/content/Context;

.field private static final sConnectionLock:Ljava/lang/Object;

.field private static sCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static sInitOptions:Lcom/alipay/arome/aromecli/AromeInitOptions;

.field private static sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastBindedConn:Landroid/content/ServiceConnection;

.field private static sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

.field private static sServiceInterface:Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sConnectionLock:Ljava/lang/Object;

    .line 40
    sput-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sLastBindedConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sConnectionLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/ServiceConnection;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sLastBindedConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Landroid/content/ServiceConnection;

    .line 24
    sput-object p0, Lcom/alipay/arome/aromecli/AromeInit;->sLastBindedConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/alipay/arome/aromecli/AromeInit$b;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->startTransActivity()V

    return-void
.end method

.method static synthetic access$600()Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sServiceInterface:Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;)Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    .line 24
    sput-object p0, Lcom/alipay/arome/aromecli/AromeInit;->sServiceInterface:Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static attachApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    sput-object p0, Lcom/alipay/arome/aromecli/AromeInit;->sApplicationContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 50
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getRemoteService()Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
    .locals 5

    const-class v0, Lcom/alipay/arome/aromecli/AromeInit;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sServiceInterface:Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 69
    :try_start_2
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "getRemoteService"

    invoke-static {v2, v1}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sServiceInterface:Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 75
    :cond_1
    :try_start_4
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sInitOptions:Lcom/alipay/arome/aromecli/AromeInitOptions;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/arome/aromecli/AromeInit;->init(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V

    .line 76
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getRemoteService()Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    .line 65
    :cond_2
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connect to RemoteService on main thread error."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Lcom/alipay/arome/aromecli/AromeInit$Callback;)V
    .locals 2
    .param p0, "callback"    # Lcom/alipay/arome/aromecli/AromeInit$Callback;

    const-class v0, Lcom/alipay/arome/aromecli/AromeInit;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0}, Lcom/alipay/arome/aromecli/AromeInit;->init(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-void

    .line 85
    .end local p0    # "callback":Lcom/alipay/arome/aromecli/AromeInit$Callback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V
    .locals 4
    .param p0, "options"    # Lcom/alipay/arome/aromecli/AromeInitOptions;
    .param p1, "callback"    # Lcom/alipay/arome/aromecli/AromeInit$Callback;

    const-class v0, Lcom/alipay/arome/aromecli/AromeInit;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AromeInit with call stack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Just Print!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 91
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "AromeInit init skip because isBinding!"

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return-void

    .line 95
    :cond_0
    :try_start_1
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "AromeInit init skip because isBound!"

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    .line 99
    :cond_1
    :try_start_2
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Lcom/alipay/arome/aromecli/AromeInit$1;

    invoke-direct {v1, p1}, Lcom/alipay/arome/aromecli/AromeInit$1;-><init>(Lcom/alipay/arome/aromecli/AromeInit$Callback;)V

    sput-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AromeInit create service binder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 166
    :cond_2
    sput-object p0, Lcom/alipay/arome/aromecli/AromeInit;->sInitOptions:Lcom/alipay/arome/aromecli/AromeInitOptions;

    .line 167
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 168
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    new-instance v2, Lcom/alipay/arome/aromecli/AromeInit$a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/arome/aromecli/AromeInit$a;-><init>(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V

    invoke-interface {v1, v2}, Lcom/alipay/arome/aromecli/AromeInit$b;->a(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    monitor-exit v0

    return-void

    .line 89
    .end local p0    # "options":Lcom/alipay/arome/aromecli/AromeInitOptions;
    .end local p1    # "callback":Lcom/alipay/arome/aromecli/AromeInit$Callback;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isMainThread()Z
    .locals 2

    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isServiceOnline()Z
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isServiceOnline :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected static reset()V
    .locals 4

    .line 187
    const-string v0, "AromeInit reset status!"

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBinding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 189
    sget-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sIsBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sServiceInterface:Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    .line 192
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v2, Lcom/alipay/arome/aromecli/AromeInit;->sLastBindedConn:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Lcom/alipay/arome/aromecli/AromeInit;->sApplicationContext:Landroid/content/Context;

    sget-object v3, Lcom/alipay/arome/aromecli/AromeInit;->sLastBindedConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 195
    sput-object v0, Lcom/alipay/arome/aromecli/AromeInit;->sLastBindedConn:Landroid/content/ServiceConnection;

    .line 197
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static setServiceBinder(Lcom/alipay/arome/aromecli/AromeInit$b;)V
    .locals 0
    .param p0, "serviceBinder"    # Lcom/alipay/arome/aromecli/AromeInit$b;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 82
    sput-object p0, Lcom/alipay/arome/aromecli/AromeInit;->sServiceBinder:Lcom/alipay/arome/aromecli/AromeInit$b;

    .line 83
    return-void
.end method

.method private static startTransActivity()V
    .locals 4

    const/4 v0, 0x0

    .line 173
    .local v0, "transApp":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    move-object v0, v1

    const-string v2, "com.alipay.arome.app"

    const-string v3, "com.alipay.mobile.aromeservice.TransProcessPayActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "com.alipay.arome.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    sget-object v1, Lcom/alipay/arome/aromecli/AromeInit;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startTransActivity failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 182
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 183
    return-void
.end method
