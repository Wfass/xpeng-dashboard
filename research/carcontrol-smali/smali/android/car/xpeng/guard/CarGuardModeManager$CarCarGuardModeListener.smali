.class public interface abstract Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;
.super Ljava/lang/Object;
.source "CarGuardModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/guard/CarGuardModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarCarGuardModeListener"
.end annotation


# virtual methods
.method public onCarGuardModeActiveChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 0

    return-void
.end method

.method public onCarGuardModeLevelChanged(II)V
    .locals 0

    return-void
.end method

.method public onCarGuardModeSceneOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarGuardModeWork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onOtherStatistics(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
