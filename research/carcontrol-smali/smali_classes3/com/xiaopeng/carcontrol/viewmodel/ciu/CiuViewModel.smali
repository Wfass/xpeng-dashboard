.class public Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;
.super Ljava/lang/Object;
.source "CiuViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/ciu/ICiuViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CiuViewModel"


# instance fields
.field private mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

.field private final mCiuStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDistractSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDmsSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFatigueSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuStateData:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_ciu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    .line 34
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/-$$Lambda$CiuViewModel$p5GrztoIHivOrdYprOMU8yldWoU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/-$$Lambda$CiuViewModel$p5GrztoIHivOrdYprOMU8yldWoU;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setFaceIdSwEnable(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "onlyRefreshUi"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceIdSwEnable with: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setFaceIdSw(Z)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDmsSw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDmsSw(Z)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setFatigueSw(Z)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDistractSw(Z)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v0, v0, v2, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setMultiDms(ZZZZ)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const-string p2, "controlFaceIdSwitch"

    .line 113
    invoke-static {v1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p2, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->controlFaceIdSwitch(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCiuStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDistractionSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDmsSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getFaceIdSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getFatigueSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isCiuExist()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->getCiuState()Z

    move-result v0

    return v0
.end method

.method public isDistractSwEnabled()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDistractSw()Z

    move-result v0

    return v0
.end method

.method public isDmsSwEnabled()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDmsSw()Z

    move-result v0

    return v0
.end method

.method public isFaceIdSwEnabled()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getFaceIdSw()Z

    move-result v0

    return v0
.end method

.method public isFatigueSwEnabled()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getFatigueSw()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$CiuViewModel()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDmsSw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDmsSw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getFaceIdSw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getFatigueSw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDistractSw()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method public onCiuStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isExisted"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDistractSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDmsSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFaceIdSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFatigueSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDistractSwEnable(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDistractSwEnable with: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDistractSw(Z)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDmsSw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDmsSw(Z)V

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setFaceIdSw(Z)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setFatigueSw(Z)V

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v0, v2, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setMultiDms(ZZZZ)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "controlDistractSwitch"

    .line 167
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->controlDistractSwitch(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDmsSwEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDmsSwEnable with: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuViewModel"

    const/4 v2, 0x0

    .line 75
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 65
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDmsSw(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getFaceIdSw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getFatigueSw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDistractSw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFaceIdSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDistractSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->setSettingAutoBrightnessdEnable(Z)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlDmsSwitch "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->controlDmsSwitch(Z)V

    :cond_1
    return-void
.end method

.method public setFaceIdSwEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceIdSwEnable with: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->setFaceIdSwEnable(ZZ)V

    return-void
.end method

.method public setFatigueSwEnable(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFatigueSwEnable with: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuViewModel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setFatigueSw(Z)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mFatigueSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->getDmsSw()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setMultiDms"

    .line 131
    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDmsSw(Z)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mDmsSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setFaceIdSw(Z)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setDistractSw(Z)V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {p1, v0, v2, v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->setMultiDms(ZZZZ)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "controlFatigueSwitch"

    .line 140
    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuViewModel;->mCiuController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;->controlFatigueSwitch(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
