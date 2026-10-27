.class public Landroid/car/hardware/condition/ICarCondition$Default;
.super Ljava/lang/Object;
.source "ICarCondition.java"

# interfaces
.implements Landroid/car/hardware/condition/ICarCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/condition/ICarCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
