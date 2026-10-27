.class public Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;
.source "DoorKeyControlPanel.java"


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

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;-><init>()V

    .line 68
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$HwKlOjQR0_zT_Gqn3Suau7KqtRk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$HwKlOjQR0_zT_Gqn3Suau7KqtRk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->observer:Landroidx/lifecycle/Observer;

    return-void
.end method

.method static synthetic lambda$onInitView$0(Landroid/view/View;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "b"
        }
    .end annotation

    .line 43
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

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0048

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f0701c4

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f0701c5

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "DoorKeyControlSysDialog"

    return-object v0
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

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
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

    .line 127
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic lambda$new$2$DoorKeyControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V
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

    .line 72
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$DoorKeyForCustomer:[I

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

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Mute:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onInitView$1$DoorKeyControlPanel(Landroid/widget/CompoundButton;Z)V
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

    .line 45
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorBossKeySw(Z)V

    :cond_1
    return-void
.end method

.method protected onDismiss()V
    .locals 5

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->onDismiss()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    if-eq v1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1100a2

    .line 138
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 139
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 138
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-void
.end method

.method protected onInitView()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->onInitView()V

    const v0, 0x7f0a00a0

    .line 37
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "isSupportBossKey"

    .line 39
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0400

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_1

    const v1, 0x7f110072

    .line 42
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiLabel(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    sget-object v1, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$PAp7e-FelTXzE-BU5PCcx_PA3A8;->INSTANCE:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$PAp7e-FelTXzE-BU5PCcx_PA3A8;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$Vwuujonp0ddUekz_i5hXrUQyu8k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$DoorKeyControlPanel$Vwuujonp0ddUekz_i5hXrUQyu8k;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorBossKeySw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRefresh()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setPosition(IZ)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mBossKeySwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorBossKeySw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->observer:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getDoorKeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/DoorKeyControlPanel;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    return-void
.end method
