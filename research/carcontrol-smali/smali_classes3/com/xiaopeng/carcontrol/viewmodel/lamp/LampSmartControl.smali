.class public Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;
.super Ljava/lang/Object;
.source "LampSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LampSmartControl"


# instance fields
.field private mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;
    .locals 1

    .line 23
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl$Holder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public controlXpWaitMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlXpWaitMode: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LampSmartControl"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-interface {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->setHeadLampGroup(IZ)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->getHeadLampGroupSp()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->setHeadLampGroup(IZ)V

    :goto_0
    return-void
.end method

.method public setRearFogSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampSmartControl;->mLampVm:Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->setRearFogLamp(Z)V

    return-void
.end method
