.class public Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;
.super Ljava/lang/Object;
.source "SfsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/sfs/ISfsViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SfsViewModel"


# instance fields
.field private final mSfsActivatedChannel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

.field private final mSfsSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSfsTypeInChannel1:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;",
            ">;"
        }
    .end annotation
.end field

.field private final mSfsTypeInChannel2:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;",
            ">;"
        }
    .end annotation
.end field

.field private final mSfsTypeInChannel3:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsSwData:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsTypeInChannel1:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsTypeInChannel2:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsTypeInChannel3:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsActivatedChannel:Landroidx/lifecycle/MutableLiveData;

    .line 30
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_sfs"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    .line 32
    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public getActivatedChannel()Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;->getActivatedChannel()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;->fromHvacSfsChannel(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;

    move-result-object v0

    return-object v0
.end method

.method public getSfsSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTypesInChannel()[Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;->getTypesInChannel()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    const/4 v3, 0x0

    .line 76
    aget v4, v0, v3

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;->fromHvacSfsType(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 77
    aget v4, v0, v3

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;->fromHvacSfsType(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    move-result-object v4

    aput-object v4, v1, v3

    .line 78
    aget v0, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;->fromHvacSfsType(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    .line 71
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid result for sfs types in channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SfsViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSwEnabled()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;->isSwEnabled()Z

    move-result v0

    return v0
.end method

.method public onSfsChannelChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsActivatedChannel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;->fromHvacSfsChannel(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSfsSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSfsTypeChanged([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typesInChannel"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 42
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsTypeInChannel1:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;->fromHvacSfsType(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsTypeInChannel2:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;->fromHvacSfsType(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsTypeInChannel3:Landroidx/lifecycle/MutableLiveData;

    aget p1, p1, v1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;->fromHvacSfsType(I)Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid result for sfs types in channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SfsViewModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActiveChannel(Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sfsChannel"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsChannel;->toSfsCmd()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;->setActiveChannel(I)V

    return-void
.end method

.method public setSwEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/sfs/SfsViewModel;->mSfsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ISfsController;->setSwEnable(Z)V

    return-void
.end method
