.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcuCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 4822
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 4822
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method

.method private getSoundEffectPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "defaultPath"
        }
    .end annotation

    .line 5025
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSoundResManager()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 5029
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 5033
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->getResPath()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5034
    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5037
    aget-object p1, p1, p2

    return-object p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method private handleEpb(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    const-string v0, "isSupportEpbWarning"

    .line 4981
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 4986
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4987
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4989
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3400(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAccPedalStatusChanged(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5081
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 5084
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v4, v4, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const-string v3, "getEpbAccPedalThreshold"

    .line 5085
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    if-le p1, v3, :cond_6

    .line 5086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccPedalStatusChanged: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ServiceViewModel"

    invoke-static {v3, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5087
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getIgStatusFromMcu()I

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    .line 5089
    :goto_2
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v4, v4, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getApbSystemDisplayMessage()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    .line 5091
    :goto_3
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v5, v5, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getApbSystemStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    .line 5093
    :goto_4
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->isDrvDoorClose()Z

    move-result v6

    .line 5094
    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v7, v7, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEpbDriverOffWarningMsg()I

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    .line 5097
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAccPedalStatusChanged: isIgOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isEpbMessageOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isEpbClosed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isDrvDoorClosed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", gearLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", isEpbWarning="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 5102
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->epb_title:I

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_mid_osdparking:I

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->release_epb_desc:I

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;III)V

    :cond_6
    return-void
.end method

.method public onAutoShowModeChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 5110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoShowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-ne p1, v2, :cond_2

    const-string v0, "isSupportWelcomeMode"

    .line 5112
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 5113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSeatWelcomeMode(Z)V

    :cond_0
    const-string v0, "isSupportPsnWelcomeMode"

    .line 5115
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnSeatWelcomeMode(Z)V

    :cond_1
    const-string v0, "isSupportSeatRhythm"

    .line 5118
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v4, v4, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmMode()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmMode(I)V

    .line 5120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5123
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v3, v3, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v3, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmEnable(Ljava/util/Set;Z)V

    .line 5126
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_4

    .line 5128
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->handleSmartRestore()V

    .line 5130
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3502(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void
.end method

.method public onAvailableMileageChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 5003
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "available_distance"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onBreakPedalStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 5135
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;

    move-result-object v0

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->inDisConnectIngProcess:Z

    if-eqz v0, :cond_1

    .line 5136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 5137
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_retexting_brk_press:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 5138
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    .line 5139
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ready_disable_retext_brk_press:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 5142
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3602(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void
.end method

.method public onChargeStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 5011
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charge_status"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onDriveModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 4832
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "shouldForceTurnOnAvhForXpedal"

    .line 4836
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ServiceViewModel"

    const-string v2, "Drive mode changed to ECO+ mode, so turn on AVH"

    .line 4837
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4838
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->onEcoPlusMode(Z)V

    .line 4842
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setSnowModeEnergyCache(I)V

    const-string v0, "isSupportSnowMode"

    .line 4843
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4844
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setSnowMode(Z)V

    .line 4851
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2900(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    if-eq p1, v1, :cond_3

    .line 4852
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    .line 4854
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2902(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void
.end method

.method public onElecPercentChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 4995
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_percent"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onEvSysReady(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5050
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkEspCondition()V

    .line 5051
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mChassisSmartControl:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkAvhCondition()V

    const-string p1, "isSupportMcuKeyOpenFailed"

    .line 5054
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5055
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGearChanged(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    .line 4883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGearChanged: previous gear level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current gear level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4885
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4886
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3002(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    .line 4889
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    const-string v1, "isSupportMirrorMemory"

    .line 4890
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->mIsDataSynced:Z

    if-eqz v1, :cond_5

    .line 4892
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->isSopStage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->checkCurPos()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 4893
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getReverseMirrorMode()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    if-ne p1, v6, :cond_3

    .line 4895
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v7}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v1, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 4897
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v7}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3100(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4898
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    if-ne v1, v6, :cond_4

    if-eqz p1, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 4900
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->handleReverseMirror(Z)V

    .line 4901
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    if-eqz v1, :cond_5

    .line 4902
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->resetRecoverMirrorFlag()V

    .line 4907
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handlePGearMenu(I)V

    .line 4908
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    const-string v7, "isSupportCtrlBonnet"

    const/4 v8, 0x4

    if-ne v1, v8, :cond_a

    if-eq p1, v8, :cond_a

    if-eqz p1, :cond_6

    .line 4910
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 4911
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBonnetState()I

    move-result v1

    if-eqz v1, :cond_6

    .line 4912
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4913
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v7}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v1, v7, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4917
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWiperRepairMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4918
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWiperRepairMode(Z)V

    .line 4920
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearWiperRepairMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4921
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRearWiperRepairMode(Z)V

    .line 4923
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->isFactoryModeActive()Z

    move-result v1

    if-nez v1, :cond_e

    .line 4924
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getHeadLampState()I

    move-result v1

    if-eqz v1, :cond_9

    if-ne v1, v5, :cond_e

    .line 4926
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v6, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHeadLampState(IZ)V

    goto :goto_2

    .line 4929
    :cond_a
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    if-eq v1, v8, :cond_e

    if-ne p1, v8, :cond_e

    .line 4931
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    .line 4932
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBonnetState()I

    move-result v1

    if-eqz v1, :cond_b

    .line 4933
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop()V

    .line 4935
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 4936
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3300(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_c
    const-string v1, "isSupportXPilotSafeExam"

    .line 4938
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4939
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->handleXPilotWhenEnterParkGear()V

    :cond_d
    const-string v1, "isSupportCarStatusBIUpload"

    .line 4943
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4944
    invoke-static {}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;->getInstance()Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;->uploadResumeStatus()V

    .line 4948
    :cond_e
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    if-eq v1, v6, :cond_f

    if-ne p1, v6, :cond_10

    .line 4949
    :cond_f
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v1

    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->isShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4950
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->dismiss(Ljava/lang/String;)V

    :cond_10
    const-string v1, "isSupportNapa"

    .line 4953
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4956
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    if-ne v1, v6, :cond_11

    if-eq p1, v6, :cond_11

    .line 4957
    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;->showMirrorCtrlPanel(Z)V

    .line 4961
    :cond_11
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$3002(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    const-string v0, "isSupportEpbWarning"

    .line 4962
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4963
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->handleEpb(I)V

    :cond_12
    const-string v0, "isSupportSdc"

    .line 4966
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4967
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4968
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onVcuGearChanged(I)V

    :cond_13
    if-ne p1, v8, :cond_14

    const/16 p1, 0x75

    .line 4972
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->playSoundEffect(I)V

    goto :goto_3

    :cond_14
    if-ne p1, v5, :cond_15

    const/16 p1, 0x73

    .line 4974
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->playSoundEffect(I)V

    goto :goto_3

    :cond_15
    if-ne p1, v6, :cond_16

    const/16 p1, 0x74

    .line 4976
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->playSoundEffect(I)V

    :cond_16
    :goto_3
    return-void
.end method

.method public onRawCarSpeedChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 5066
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isHighSpdCloseWinEnabled()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2000(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;ZF)V

    const-string v0, "isSupportEpbWarning"

    .line 5067
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportIBoosterSignal"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5068
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->checkBrakeFluid(F)V

    .line 5070
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-boolean v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mIsLocalIgOn:Z

    if-eqz v0, :cond_1

    .line 5071
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->checkRecoverMirror(F)V

    :cond_1
    return-void
.end method

.method public onRecycleGradeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    return-void
.end method

.method public onSnowModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 5017
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$VcuCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$2800(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuSmartControl;->onSnowModeChange(Z)V

    return-void
.end method
