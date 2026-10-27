.class public Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "WindowControlFragment.java"


# instance fields
.field private closeBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private closeLoading:Lcom/xiaopeng/xui/widget/XLoading;

.field private mIsLeft:Z

.field private mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

.field private openBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private openLoading:Lcom/xiaopeng/xui/widget/XLoading;

.field private sideTab:Lcom/xiaopeng/xui/widget/XSegmented;

.field private ventBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private ventLoading:Lcom/xiaopeng/xui/widget/XLoading;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->updateCurrentWinBtn(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->isWindowLockInactive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0a03b9

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    const v0, 0x7f0a02f8

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->sideTab:Lcom/xiaopeng/xui/widget/XSegmented;

    .line 47
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setWinControlListener(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getDrvWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$epJCJHVrHExm4SMjXWTo5cfXawg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$epJCJHVrHExm4SMjXWTo5cfXawg;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getFrWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$nLV4V0WeO1qovZHvjubUm65fUjU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$nLV4V0WeO1qovZHvjubUm65fUjU;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRlWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$P40dmZsN0Gjj3LElrE9wjZh2OEo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$P40dmZsN0Gjj3LElrE9wjZh2OEo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRrWinPosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$RqdfE376lXMaDeOr28Fx9K9-_kQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$RqdfE376lXMaDeOr28Fx9K9-_kQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const v0, 0x7f0a0277

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a0273

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const v0, 0x7f0a03a4

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a03a3

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const v0, 0x7f0a00e9

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00e5

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$i-_Fe7qSNV7X6W---XNMAzX0Vos;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$i-_Fe7qSNV7X6W---XNMAzX0Vos;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$pLmBIrr5rrBd3HzISPX4r0cbxvQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$pLmBIrr5rrBd3HzISPX4r0cbxvQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$bP9vJmOWUt9dpzd6-KDjAWsFv4Q;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$bP9vJmOWUt9dpzd6-KDjAWsFv4Q;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->updateCurrentWinBtn(Z)V

    return-void
.end method

.method private isWindowLockInactive()Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v1, 0x7f11044a

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateBtnGroup(Lcom/xiaopeng/xui/widget/XLoading;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "loading",
            "btn1",
            "btn2",
            "btn3"
        }
    .end annotation

    .line 170
    new-instance v6, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$kbo3fZSZGaH2OkA8yXcMArqIi3A;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$WindowControlFragment$kbo3fZSZGaH2OkA8yXcMArqIi3A;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;Lcom/xiaopeng/xui/widget/XLoading;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V

    const/4 p1, 0x1

    const-wide/16 p2, 0x7d0

    invoke-static {p1, v6, p2, p3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method private updateCurrentWinBtn(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    const/4 v1, 0x2

    if-eq v0, p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 185
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setControlSide(I)V

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->updateWinPosition()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateWinPosition()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    if-eqz v1, :cond_1

    .line 193
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 194
    aget v2, v0, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setLeftFrontWinPos(I)V

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    const/4 v2, 0x2

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setLeftRearWinPos(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 197
    aget v2, v0, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setRightFrontWinPos(I)V

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    const/4 v2, 0x3

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setRightRearWinPos(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0046

    return v0
.end method

.method protected initViewModels()V
    .locals 1

    .line 35
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    return-void
.end method

.method public synthetic lambda$initView$0$WindowControlFragment(Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setLeftFrontWinPos(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$1$WindowControlFragment(Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setRightFrontWinPos(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$2$WindowControlFragment(Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setLeftRearWinPos(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$3$WindowControlFragment(Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mIsLeft:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinCtrlView:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView;->setRightRearWinPos(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$4$WindowControlFragment(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->isWindowLockInactive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowOpen()V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openLoading:Lcom/xiaopeng/xui/widget/XLoading;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->updateBtnGroup(Lcom/xiaopeng/xui/widget/XLoading;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$5$WindowControlFragment(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->isWindowLockInactive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowVent()V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventLoading:Lcom/xiaopeng/xui/widget/XLoading;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->updateBtnGroup(Lcom/xiaopeng/xui/widget/XLoading;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$6$WindowControlFragment(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->isWindowLockInactive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlWindowClose()V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeLoading:Lcom/xiaopeng/xui/widget/XLoading;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->closeBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->openBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->ventBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->updateBtnGroup(Lcom/xiaopeng/xui/widget/XLoading;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateBtnGroup$7$WindowControlFragment(Lcom/xiaopeng/xui/widget/XLoading;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;Lcom/xiaopeng/xui/widget/XButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "loading",
            "btn1",
            "btn2",
            "btn3"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 172
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    const/4 p1, 0x1

    .line 174
    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 175
    invoke-virtual {p4, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    :cond_0
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

    .line 40
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->initView(Landroid/view/View;)V

    return-void
.end method
