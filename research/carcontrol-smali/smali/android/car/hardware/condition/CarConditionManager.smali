.class public Landroid/car/hardware/condition/CarConditionManager;
.super Landroid/car/CarManagerBase;
.source "CarConditionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarConditionManager"


# instance fields
.field private mService:Landroid/car/hardware/condition/ICarCondition;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 31
    invoke-static {p2}, Landroid/car/hardware/condition/ICarCondition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/condition/ICarCondition;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/condition/CarConditionManager;->mService:Landroid/car/hardware/condition/ICarCondition;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 36
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/car/hardware/condition/CarConditionManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_condition"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/condition/ICarCondition$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/condition/ICarCondition;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/condition/CarConditionManager;->mService:Landroid/car/hardware/condition/ICarCondition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {p0, v0}, Landroid/car/hardware/condition/CarConditionManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerCondition(Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/car/hardware/condition/CarConditionInfo;->getLimitsArray()Landroid/util/SparseArray;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 71
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    sget-boolean v1, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarConditionManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/condition/CarConditionManager;->mService:Landroid/car/hardware/condition/ICarCondition;

    invoke-interface {v1, v0, p1, p2}, Landroid/car/hardware/condition/ICarCondition;->registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V

    return-void

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CarConditionInfo can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/hardware/condition/CarConditionInfo;",
            "Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-virtual {p0, p2, p3}, Landroid/car/hardware/condition/CarConditionManager;->registerCondition(Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;)V

    return-void
.end method

.method public unregisterCondition(Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister condition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarConditionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/condition/CarConditionManager;->mService:Landroid/car/hardware/condition/ICarCondition;

    invoke-interface {v0, p1}, Landroid/car/hardware/condition/ICarCondition;->unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V

    return-void
.end method
