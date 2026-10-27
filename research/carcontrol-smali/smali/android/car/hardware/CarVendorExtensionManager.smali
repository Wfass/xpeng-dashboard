.class public final Landroid/car/hardware/CarVendorExtensionManager;
.super Landroid/car/CarManagerBase;
.source "CarVendorExtensionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;,
        Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarVendorExtensionManager"


# instance fields
.field private final mCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerToBase:Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 51
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    .line 53
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mListenerToBase:Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/CarVendorExtensionManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/car/hardware/CarVendorExtensionManager;->handleOnChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/hardware/CarVendorExtensionManager;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/CarVendorExtensionManager;->handleOnErrorEvent(II)V

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vendor_extension"

    return-object v0
.end method

.method private handleOnChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3

    .line 60
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;

    .line 64
    invoke-interface {v1, p1}, Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleOnErrorEvent(II)V
    .locals 3

    .line 70
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;

    .line 74
    invoke-interface {v1, p1, p2}, Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public getGlobalProperty(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, v0}, Landroid/car/hardware/CarVendorExtensionManager;->getProperty(Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;II)TE;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isPropertyAvailable(II)Z
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->isPropertyAvailable(II)Z

    move-result p1

    return p1
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    .line 207
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerCallback(Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;)V
    .locals 6

    .line 106
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

    invoke-direct {v1, p0}, Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;-><init>(Landroid/car/hardware/CarVendorExtensionManager;)V

    iput-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mListenerToBase:Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

    .line 110
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v1}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 113
    iget-object v3, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v4, p0, Landroid/car/hardware/CarVendorExtensionManager;->mListenerToBase:Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setGlobalProperty(Ljava/lang/Class;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Class;IILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;IITE;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    return-void
.end method

.method public unregisterCallback(Landroid/car/hardware/CarVendorExtensionManager$CarVendorExtensionCallback;)V
    .locals 4

    .line 121
    iget-object v0, p0, Landroid/car/hardware/CarVendorExtensionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 126
    iget-object v2, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v3, p0, Landroid/car/hardware/CarVendorExtensionManager;->mListenerToBase:Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Landroid/car/hardware/CarVendorExtensionManager;->mListenerToBase:Landroid/car/hardware/CarVendorExtensionManager$CarPropertyEventListenerToBase;

    .line 131
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
