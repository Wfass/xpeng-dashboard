.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;
.super Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;
.source "SeatBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$changeSeatInterface;
    }
.end annotation


# static fields
.field protected static final CLICK_SAFE_TIME:J = 0x1f4L

.field protected static final SEAT_POSITION_ONE:I = 0x0

.field protected static final SEAT_POSITION_THREE:I = 0x2

.field protected static final SEAT_POSITION_TWO:I = 0x1

.field protected static final SELECT_TRDROW_LEFT_SEAT:I = 0x9

.field protected static final SELECT_TRDROW_RIGHT_SEAT:I = 0xa


# instance fields
.field protected RENAME_DIALOG_SCENE_ID:Ljava/lang/String;

.field protected final TAG:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private dialog:Lcom/xiaopeng/xui/app/XDialog;

.field private final gearObserver:Landroidx/lifecycle/Observer;

.field protected final handler:Landroid/os/Handler;

.field protected isGearP:Z

.field protected volatile isLtAlreadyFolded:Z

.field protected volatile isRtAlreadyFolded:Z

.field protected isSupportRearSeatCtrl:Z

.field protected isSupportSecRowMemory:Z

.field protected isSupportSecRowZeroGravity:Z

.field protected isSupportTrdRowFold:Z

.field protected isSupportTrdRowMidHeadRest:Z

.field protected isSupportTrdRowSeatControl:Z

.field protected isSupportTrdRowStow:Z

.field private mBtnRenameCancel:Lcom/xiaopeng/xui/widget/XButton;

.field private mBtnRenameOk:Lcom/xiaopeng/xui/widget/XButton;

.field protected mIsNotStowActive:Z

.field protected mIsNotUnStowActive:Z

.field protected mLeftIsNotEasyActive:Z

.field protected mLeftIsNotFoldActive:Z

.field protected mLeftIsNotRestActive:Z

.field protected mLeftIsNotUnFoldActive:Z

.field protected mLeftIsNotZeroActive:Z

.field private mNewName:Ljava/lang/String;

.field protected mRightIsNotEasyActive:Z

.field protected mRightIsNotFoldActive:Z

.field protected mRightIsNotRestActive:Z

.field protected mRightIsNotUnFoldActive:Z

.field protected mRightIsNotZeroActive:Z

.field private mSeatRenameDialogView:Landroid/view/View;

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field protected mServiceViewManager:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

.field protected mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private owner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneId",
            "parent",
            "owner"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    const-string p1, "SeatBaseScene"

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->TAG:Ljava/lang/String;

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->handler:Landroid/os/Handler;

    .line 50
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatBaseScene$v3p5fq02UE_krKEIFS75h05-C4Q;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatBaseScene$v3p5fq02UE_krKEIFS75h05-C4Q;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->gearObserver:Landroidx/lifecycle/Observer;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isGearP:Z

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mLeftIsNotZeroActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mRightIsNotZeroActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mLeftIsNotEasyActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mRightIsNotEasyActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mLeftIsNotRestActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mRightIsNotRestActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mLeftIsNotFoldActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mRightIsNotFoldActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mLeftIsNotUnFoldActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mRightIsNotUnFoldActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mIsNotStowActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mIsNotUnStowActive:Z

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->RENAME_DIALOG_SCENE_ID:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->owner:Landroidx/lifecycle/LifecycleOwner;

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mNewName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mNewName:Ljava/lang/String;

    return-object p1
.end method

.method private initCfcSupport()V
    .locals 1

    const-string v0, "isSupportRearSeatCtrl"

    .line 106
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportRearSeatCtrl:Z

    const-string v0, "isSupportSecRowMemory"

    .line 107
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportSecRowMemory:Z

    const-string v0, "isSupportSecRowZeroGravity"

    .line 108
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportSecRowZeroGravity:Z

    const-string v0, "isSupportTrdRowSeatControl"

    .line 109
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportTrdRowSeatControl:Z

    const-string v0, "isSupportTrdRowMidHeadRest"

    .line 110
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportTrdRowMidHeadRest:Z

    const-string v0, "isSupportTrdRowFold"

    .line 111
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportTrdRowFold:Z

    const-string v0, "isSupportTrdRowStow"

    .line 112
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isSupportTrdRowStow:Z

    return-void
.end method

.method public static synthetic lambda$v3p5fq02UE_krKEIFS75h05-C4Q(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->onGearLevelChanged(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V

    return-void
.end method

.method private onGearLevelChanged(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->isGearP:Z

    return-void
.end method


# virtual methods
.method protected changePosName(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hintName"
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mSeatRenameDialogView:Landroid/view/View;

    const v0, 0x7f0a0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XEditText;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mSeatRenameDialogView:Landroid/view/View;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mBtnRenameOk:Lcom/xiaopeng/xui/widget/XButton;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mSeatRenameDialogView:Landroid/view/View;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mBtnRenameCancel:Lcom/xiaopeng/xui/widget/XButton;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCloseVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    const v1, 0x7f110068

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mSeatRenameDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XDialog;

    .line 135
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XEditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mBtnRenameCancel:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mBtnRenameOk:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 166
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->RENAME_DIALOG_SCENE_ID:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected getCarSpeed()F
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    return v0
.end method

.method protected initViewModels()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 91
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 92
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mServiceViewManager:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    return-void
.end method

.method protected initViews()V
    .locals 3

    const-string v0, "SeatBaseScene"

    const-string v1, "initViews"

    .line 75
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->initCfcSupport()V

    .line 77
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->context:Landroid/content/Context;

    const v2, 0x7f120362

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x7d8

    .line 78
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mSeatRenameDialogView:Landroid/view/View;

    return-void
.end method

.method protected onCreate()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;->onCreate()V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->onRegisterLiveData()V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->gearObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->owner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected setPositiveButtonClickListener(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newName",
            "PosId"
        }
    .end annotation

    return-void
.end method

.method protected setRenameDialogSceneId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renameDialogSceneId"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->RENAME_DIALOG_SCENE_ID:Ljava/lang/String;

    return-void
.end method
