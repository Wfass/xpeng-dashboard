.class public Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;,
        Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Proxy"


# instance fields
.field private mAppID:Ljava/lang/String;

.field private mApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

.field private mContextProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mContextProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mApplication:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$Holder;->access$100()Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    monitor-enter p0

    .line 48
    :try_start_0
    const-string v0, "Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguration key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; default:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mConnector:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->getConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    move-object v0, p2

    .line 53
    :cond_0
    monitor-exit p0

    return-object v0

    .line 47
    .end local v0    # "value":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
    throw p1
.end method

.method public declared-synchronized init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "appID"    # Ljava/lang/String;

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mApplication:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init appID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mApplication:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mAppID:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mContextProvider:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mConnector:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->mConnector:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    const-string v0, "Proxy"

    const-string v1, "Warning! init many times;"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init many times"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .end local p1    # "application":Landroid/app/Application;
    .end local p2    # "appID":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
    throw p1
.end method
