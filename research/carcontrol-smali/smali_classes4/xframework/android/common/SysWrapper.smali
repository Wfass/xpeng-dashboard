.class public Lxframework/android/common/SysWrapper;
.super Ljava/lang/Object;
.source "SysWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxframework/android/common/SysWrapper$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "sysWrapper"

.field private static final TAG:Ljava/lang/String; = "SysWrapper"

.field private static final busServiceName:Ljava/lang/String; = "xuiservice"


# instance fields
.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xuiservice"

    const-string v2, "sysWrapper"

    .line 29
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lxframework/android/common/SysWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v1, "syswrapper"

    .line 31
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lxframework/android/common/SysWrapper$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lxframework/android/common/SysWrapper;-><init>()V

    return-void
.end method

.method public static getInstance()Lxframework/android/common/SysWrapper;
    .locals 1

    .line 35
    invoke-static {}, Lxframework/android/common/SysWrapper$SingletonHolder;->access$100()Lxframework/android/common/SysWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    .line 43
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 45
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v3, "listener"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    new-array p2, v2, [Landroid/os/Parcelable;

    aput-object p1, p2, v0

    .line 47
    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 49
    :cond_1
    iget-object p1, p0, Lxframework/android/common/SysWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const/4 p2, 0x0

    const-string v3, "sysWrapper"

    const-string v4, "sysWrapper.clearAppData"

    invoke-virtual {p1, v3, v4, v1, p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    if-nez p1, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)I
    .locals 4

    if-nez p1, :cond_0

    const/16 p1, -0x3e7

    return p1

    .line 59
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 60
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 62
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 63
    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v2, "listener"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    new-array p2, v1, [Landroid/os/Parcelable;

    aput-object p1, p2, v3

    .line 64
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 66
    :cond_1
    iget-object p1, p0, Lxframework/android/common/SysWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const/4 p2, 0x0

    const-string v1, "sysWrapper"

    const-string v2, "sysWrapper.deleteAppCache"

    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public setSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 9

    const/16 v0, -0x3e7

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 76
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 78
    instance-of v2, p3, Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v2, :cond_1

    const-string v2, "int"

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v7

    aput-object v2, v8, v6

    aput-object p2, v8, v5

    .line 80
    move-object p1, p3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-virtual {v1, v8}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "string"

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v7

    aput-object v2, v8, v6

    aput-object p2, v8, v5

    .line 83
    move-object p1, p3

    check-cast p1, Ljava/lang/String;

    aput-object p1, v8, v4

    invoke-virtual {v1, v8}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    instance-of v2, p3, Ljava/lang/Long;

    if-eqz v2, :cond_3

    const-string v2, "long"

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v7

    aput-object v2, v8, v6

    aput-object p2, v8, v5

    .line 86
    move-object p1, p3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-virtual {v1, v8}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_4

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSettings: unsupported type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SysWrapper"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 94
    :cond_4
    iget-object p1, p0, Lxframework/android/common/SysWrapper;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string p2, "sysWrapper"

    const-string p3, "sysWrapper.setSetting"

    invoke-virtual {p1, p2, p3, v1, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v0
.end method
