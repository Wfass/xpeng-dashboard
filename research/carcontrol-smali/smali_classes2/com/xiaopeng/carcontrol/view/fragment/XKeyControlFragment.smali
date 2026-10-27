.class public Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;
.source "XKeyControlFragment.java"


# instance fields
.field private mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field private mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field private observer:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$XKeyControlFragment$yJt4GOOfC0t76NA0m3ak3ejTIZE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$XKeyControlFragment$yJt4GOOfC0t76NA0m3ak3ejTIZE;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->observer:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method protected getBackgroundId()I
    .locals 1

    const v0, 0x7f080280

    return v0
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0021

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    const v0, 0x7f1100b7

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

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getXkeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 46
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic lambda$new$0$XKeyControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V
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

    .line 88
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$XKeyForCustomer:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->NraView:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->AutoPark:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    goto :goto_0

    .line 90
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I

    move-result v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setSelect(IZZ)V

    :goto_0
    return-void
.end method

.method protected onRefresh()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onRefresh()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getXKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mAdapter:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setPosition(IZ)V

    :cond_0
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onRegisterLiveData()V

    return-void
.end method

.method protected onShowSettingTip()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mPreviousKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    if-eq v1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f1100b1

    .line 78
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 79
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 77
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

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

    .line 29
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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

    .line 68
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getXkeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->mCurrentKey:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    return-void
.end method
