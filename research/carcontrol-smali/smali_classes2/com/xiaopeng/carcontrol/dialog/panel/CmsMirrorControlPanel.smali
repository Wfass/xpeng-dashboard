.class public Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "CmsMirrorControlPanel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/IPanelDirectDispatch;


# instance fields
.field private cmsViewAngle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

.field private mDangerObjRecList:Lcom/xiaopeng/xui/widget/XListTwo;

.field mDangerObjectRecSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

.field private mHighSpeedViewAssistList:Lcom/xiaopeng/xui/widget/XListTwo;

.field mHighSpeedViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mResetButton:Lcom/xiaopeng/xui/widget/XButton;

.field private mReverseViewAssistList:Lcom/xiaopeng/xui/widget/XListTwo;

.field mReverseViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mTurnViewAssistList:Lcom/xiaopeng/xui/widget/XListTwo;

.field mTurnViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mViewRangeSegmented:Lcom/xiaopeng/xui/widget/XSegmented;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    return-object p0
.end method


# virtual methods
.method public dispatchDirectData(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDirectIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDirectIntent:Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0037

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f070059

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f07005a

    return v0
.end method

.method public synthetic lambda$onInitView$0$CmsMirrorControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$CmsMirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsObjectRecognizeSw(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$2$CmsMirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsReverseAssistSw(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$3$CmsMirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsTurnAssistSw(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$4$CmsMirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsHighSpdAssistSw(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$5$CmsMirrorControlPanel(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsViewRecovery(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$10$CmsMirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isChecked"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mReverseViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$11$CmsMirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isChecked"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mTurnViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$12$CmsMirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isChecked"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mHighSpeedViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$13$CmsMirrorControlPanel(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mViewRangeSegmented:Lcom/xiaopeng/xui/widget/XSegmented;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->fromBcmViewAngle(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 216
    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$6$CmsMirrorControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_0

    .line 173
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110024

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$7$CmsMirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isActive"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110025

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$8$CmsMirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isReversingCar"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$9$CmsMirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isChecked"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDangerObjectRecSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDismiss()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onDismiss()V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->exitScene()V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDistractionSwitch(Z)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->cancelAllControlMirror()V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v1, "key_mirror"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method

.method protected onInitView()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "onInitView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const v0, 0x7f0a00e4

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    .line 110
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$GG56nRuqmYbi7NVV3YqynK_4JjM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$GG56nRuqmYbi7NVV3YqynK_4JjM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "generalAct"

    const-string v3, "System.Close"

    .line 114
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 116
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    const v0, 0x7f0a00eb

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListTwo;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDangerObjRecList:Lcom/xiaopeng/xui/widget/XListTwo;

    const v1, 0x7f0a0400

    .line 121
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDangerObjectRecSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    .line 122
    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$x4TSSeIMXLhpnMadrLy6sMmFRT8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$x4TSSeIMXLhpnMadrLy6sMmFRT8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00ee

    .line 124
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListTwo;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mReverseViewAssistList:Lcom/xiaopeng/xui/widget/XListTwo;

    .line 125
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mReverseViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    .line 126
    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$YNfYrbFgFE5-v9Vfub-OXoywAl4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$YNfYrbFgFE5-v9Vfub-OXoywAl4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00ef

    .line 128
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListTwo;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mTurnViewAssistList:Lcom/xiaopeng/xui/widget/XListTwo;

    .line 129
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mTurnViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    .line 130
    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$h65pYnjFQLcfh3TyIoiUHXfG8f8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$h65pYnjFQLcfh3TyIoiUHXfG8f8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00ec

    .line 132
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListTwo;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mHighSpeedViewAssistList:Lcom/xiaopeng/xui/widget/XListTwo;

    .line 133
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mHighSpeedViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    .line 134
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$EkcsGi1jVG-5X3ppInuo_qJggHA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$EkcsGi1jVG-5X3ppInuo_qJggHA;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00f0

    .line 142
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mViewRangeSegmented:Lcom/xiaopeng/xui/widget/XSegmented;

    .line 143
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    const v0, 0x7f0a00ed

    .line 159
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mResetButton:Lcom/xiaopeng/xui/widget/XButton;

    .line 160
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$iWczXCJyJCiNiezqVSOnoE9h-DM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$iWczXCJyJCiNiezqVSOnoE9h-DM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 79
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 80
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method protected onInterceptShow()Z
    .locals 5

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onInterceptShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept accState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 89
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110024

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v3

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept CruiseState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f110025

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v3

    :cond_1
    return v1
.end method

.method protected onKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "ev"
        }
    .end annotation

    .line 254
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->dismiss()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onRefresh()V
    .locals 3

    .line 232
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onRefresh()V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mDangerObjectRecSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsObjectRecognizeSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mReverseViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsReverseAssistSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mTurnViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsTurnAssistSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mHighSpeedViewSw:Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsHighSpdAssistSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/CustomXSwitch;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mViewRangeSegmented:Lcom/xiaopeng/xui/widget/XSegmented;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 239
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsViewAngle()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->fromBcmViewAngle(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 238
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onRegisterLiveData()V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccForMirrorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$b2f6WQAy2R0GWZq_UjaDw23rvLE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$b2f6WQAy2R0GWZq_UjaDw23rvLE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCruiseData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$CNJwTZUIc0eMPIw6c-_9AYsbas8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$CNJwTZUIc0eMPIw6c-_9AYsbas8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getScuOperationTipsData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$yEnhWoB4nNwJpNulYVLwvVKp0q0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$yEnhWoB4nNwJpNulYVLwvVKp0q0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsObjectRecognizeSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$T74KzEzE9VeWVfVZ5gkz17P96cI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$T74KzEzE9VeWVfVZ5gkz17P96cI;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsReverseSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$CJHhHYQh-NjkOqD6kZzh6NtztNo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$CJHhHYQh-NjkOqD6kZzh6NtztNo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsTurnSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$8GMb3Q98yzrj3YeIO_WEa9oFtJ8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$8GMb3Q98yzrj3YeIO_WEa9oFtJ8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsHighSpdSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$kNCWH_JQRyaZYpYJI2jPCeaJGps;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$kNCWH_JQRyaZYpYJI2jPCeaJGps;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getCmsViewAngleData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$5_kV-qhFflPuHmWI5OSsGA4H-y8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$CmsMirrorControlPanel$5_kV-qhFflPuHmWI5OSsGA4H-y8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v1, "key_mirror"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method protected onShow()V
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onShow()V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->enterScene()V

    return-void
.end method
