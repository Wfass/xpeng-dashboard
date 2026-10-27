.class public Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "WelcomeModeFragment.java"


# instance fields
.field private mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

.field private mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

.field private mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWelcomeSoundSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private welcomeSoundValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private execBootSoundPreview(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldPlayPreview"
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "com.xiaopeng.intent.action.bootsound"

    .line 293
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "com.xiaopeng.intent.action.bootsound.stop"

    .line 295
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execBootSoundPreview failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private initBootEffect(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mWelcomeSoundSw:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 239
    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 243
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    goto :goto_1

    .line 245
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->updateBootEffectTab(I)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a0138

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const-string v1, "isSupportWelcomeMode"

    .line 74
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f0a03f8

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    const-string v1, "isSupportControlSteer"

    .line 76
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f11043a

    .line 77
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->setTextSub(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f110449

    .line 79
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->setTextSub(Ljava/lang/String;)V

    .line 81
    :goto_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWelcomeModeEnabled()Z

    move-result v1

    .line 83
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrvSeatWelcomeMode Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 85
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$jwUgOYOlxPdkfvUG2z_1bNfZIlc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$jwUgOYOlxPdkfvUG2z_1bNfZIlc;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getWelcomeModeData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;

    invoke-direct {v5, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a029f

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const-string v1, "isSupportPsnWelcomeMode"

    .line 101
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    .line 103
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeEnabled()Z

    move-result v1

    .line 105
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PsnWelcomeMode Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 107
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$50v-zRp-M00oTwXLMmjXvrPD5t8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$50v-zRp-M00oTwXLMmjXvrPD5t8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatWelcomeMode()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;

    invoke-direct {v5, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_2

    .line 119
    :cond_2
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a02aa

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const-string v1, "isSupportRearSeatWelcomeMode"

    .line 123
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    .line 125
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatWelcomeEnabled()Z

    move-result v1

    .line 127
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RearWelcomeMode Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 129
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$Wp-kolnxi1h7K5EEb1VEDEemwUo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$Wp-kolnxi1h7K5EEb1VEDEemwUo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRearSeatWelcomeMode()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;

    invoke-direct {v5, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_3

    .line 136
    :cond_3
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0a007e

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const-string v1, "isSupportAsWelcomeMode"

    .line 140
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    .line 142
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isAirSuspensionWelcomeEnable()Z

    move-result v1

    .line 144
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AsWelcomeMode Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 146
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$8bMYjYAY0RZ8g06IQw9cwsLbsTI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$8bMYjYAY0RZ8g06IQw9cwsLbsTI;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsWelcomeMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;

    invoke-direct {v5, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_4

    .line 153
    :cond_4
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    :goto_4
    const v0, 0x7f0a00cd

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const-string v1, "isSupportCarpetLightWelcomeMode"

    .line 158
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getCarpetLightWelcomeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 162
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$9bBjIoGxl3jmX2lzx3JwYgvPJw4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$9bBjIoGxl3jmX2lzx3JwYgvPJw4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getCarpetLightWelcomeSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;

    invoke-direct {v5, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_5

    .line 169
    :cond_5
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    :goto_5
    const v0, 0x7f0a01da

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const-string v1, "isSupportPollingLightWelcomeMode"

    .line 174
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 175
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    .line 176
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getPollingLightWelcomeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 178
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$ZSpVOnWKYMCb0r5n3JPQURRswNM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$ZSpVOnWKYMCb0r5n3JPQURRswNM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getPollingLightWelcomeSwData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;

    invoke-direct {v5, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$aeIiqtRaGva9_dxY-D21QFFdegA;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p0, v1, v5}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_6

    .line 185
    :cond_6
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XListItem;->setVisibility(I)V

    :goto_6
    const v0, 0x7f0a01ca

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0382

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XGroupHeader;

    const-string v5, "isSupportBootSoundEffect"

    .line 191
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 192
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setVisibility(I)V

    .line 193
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0a03b7

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    .line 196
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mWelcomeSoundSw:Lcom/xiaopeng/xui/widget/XSwitch;

    const v0, 0x7f0a02fa

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->welcomeSoundValue:I

    .line 200
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->initBootEffect(I)V

    .line 201
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->welcomeSoundValue:I

    if-nez p1, :cond_7

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootEffectBeforeSw()I

    move-result p1

    .line 203
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->updateBootEffectTab(I)V

    .line 205
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mWelcomeSoundSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$Vs9JX5R3H6Hq18Qgzwrz3fH7wgM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$Vs9JX5R3H6Hq18Qgzwrz3fH7wgM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getAvasBootEffectData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$BjQ4dYz-nBpd6z_GyH_pcYjzBMg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WelcomeModeFragment$BjQ4dYz-nBpd6z_GyH_pcYjzBMg;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_7

    .line 232
    :cond_8
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XGroupHeader;->setVisibility(I)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public static synthetic lambda$BjQ4dYz-nBpd6z_GyH_pcYjzBMg(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->initBootEffect(I)V

    return-void
.end method

.method private updateBootEffectTab(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    .line 257
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    .line 259
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0045

    return v0
.end method

.method protected initViewModels()V
    .locals 1

    .line 52
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 53
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 54
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 55
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    .line 56
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    return-void
.end method

.method public synthetic lambda$initView$0$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
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

    .line 86
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isExhibitionModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 89
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f110434

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setWelcomeMode(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initView$1$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
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

    .line 108
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isExhibitionModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f110434

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setPsnWelcomeMode(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initView$2$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0
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

    .line 130
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setRearSeatWelcomeMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$3$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0
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

    .line 147
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAirSuspensionWelcome(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$4$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0
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

    .line 163
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setCarpetLightWelcomeMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$5$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0
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

    .line 179
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mLampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->setPollingLightWelcomeMode(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$6$WelcomeModeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0
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

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mBootEffectTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootEffectBeforeSw()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->welcomeSoundValue:I

    const/4 p2, 0x1

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setBootSoundEffectValue(IZ)V

    .line 210
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->welcomeSoundValue:I

    if-lez p1, :cond_1

    .line 211
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->updateBootEffectTab(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 214
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setBootSoundEffectValue(I)V

    :cond_1
    :goto_0
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

    .line 61
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setBootSoundEffectValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    add-int/2addr p1, v0

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setBootSoundEffectValue(IZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 269
    invoke-virtual {p0, v0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setBootSoundEffectValue(IZ)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setBootSoundEffectValue(IZ)V

    :goto_0
    return-void
.end method

.method public setBootSoundEffectValue(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "audioEffect"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBootSoundEffectValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setBootSoundEffect(I)V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 286
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->execBootSoundPreview(Z)V

    :cond_1
    return-void
.end method
