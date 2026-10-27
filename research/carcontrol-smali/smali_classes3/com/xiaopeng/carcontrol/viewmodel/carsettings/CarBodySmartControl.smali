.class public Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;
.super Ljava/lang/Object;
.source "CarBodySmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarBodySmartControl"


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl$SingleHolder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public controlChargePort(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "unlock"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->isChargePortEnable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-interface {v0, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->setChargePortUnlock(IZ)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->isChargePortResetable(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 54
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->resetChargePort(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public resetChargePort(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->resetChargePort(Z)V

    return-void
.end method

.method public setLockResponseNew(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lockResponse",
            "needSave"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->setLockResponseNew(IZ)V

    :cond_0
    return-void
.end method

.method public setUnLockResponseNew(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unlockResponse",
            "needSave"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->setUnLockResponseNew(IZ)V

    :cond_0
    return-void
.end method

.method public setUnlockResponse(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unlockResponse"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodySmartControl;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->setUnlockResponse(I)V

    :cond_0
    return-void
.end method
