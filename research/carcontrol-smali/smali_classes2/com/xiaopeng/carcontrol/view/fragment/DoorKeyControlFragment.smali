.class public Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;
.source "DoorKeyControlFragment.java"


# instance fields
.field private mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field private mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field private observer:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$XayRJt47GhSWlqbxflFiCQOs-bc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$XayRJt47GhSWlqbxflFiCQOs-bc;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->observer:Landroidx/lifecycle/Observer;

    return-void
.end method

.method static synthetic lambda$onViewCreated$0(Landroid/view/View;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "b"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getBackgroundId()I
    .locals 1

    const v0, 0x7f08027f

    return v0
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0048

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    const v0, 0x7f1100ac

    return v0
.end method

.method protected getTitleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getDoorKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 73
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic lambda$new$2$DoorKeyControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$DoorKeyForCustomer:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Mute:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$DoorKeyControlFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorBossKeySw(Z)V

    :cond_1
    return-void
.end method

.method protected onRefresh()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onRefresh()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setPosition(IZ)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorBossKeySw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onRegisterLiveData()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->observer:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onShowSettingTip()V
    .locals 5

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onShowSettingTip()V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    if-eq v1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1100a2

    .line 106
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 107
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 106
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    const v1, 0x7f110071

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00a0

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "isSupportBossKey"

    .line 40
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a0400

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz p1, :cond_1

    const p2, 0x7f110072

    .line 43
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiLabel(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    sget-object p2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$gYu-PinM-dnZ-gcO6MO-0Y84FWs;->INSTANCE:Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$gYu-PinM-dnZ-gcO6MO-0Y84FWs;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$4VTmE0PoWCuk6Dbvx6ZT0vl1KAo;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$4VTmE0PoWCuk6Dbvx6ZT0vl1KAo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorBossKeySw()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    :cond_1
    :goto_0
    return-void
.end method

.method protected setCustomKey(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getDoorKeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    return-void
.end method
