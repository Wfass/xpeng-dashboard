.class public Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "SunShadeControlFragment.java"


# static fields
.field private static final DELAY_TIME:J = 0xbb8L


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mCloseBtn:Landroid/widget/Button;

.field private mLastDownTime:J

.field protected final mMainHandler:Landroid/os/Handler;

.field private mOpenBtn:Landroid/widget/Button;

.field private final mResetTask:Ljava/lang/Runnable;

.field private mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    const-string v0, "SunShadeControlFragment"

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$MK6e2q3LC0YG4AD8yumfl2XvDGw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$MK6e2q3LC0YG4AD8yumfl2XvDGw;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mResetTask:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0044

    return v0
.end method

.method protected initViewModels()V
    .locals 2

    .line 95
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    return-void
.end method

.method public synthetic lambda$new$0$SunShadeControlFragment()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->resetSunShade()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$SunShadeControlFragment(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tPos"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSunShadePos(I)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$SunShadeControlFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$3$SunShadeControlFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openSunShade()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$4$SunShadeControlFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->closeSunShade()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$5$SunShadeControlFragment(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mLastDownTime:J

    sub-long/2addr v4, v6

    cmp-long p2, v4, v0

    if-ltz p2, :cond_2

    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v3

    .line 68
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mLastDownTime:J

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return v2
.end method

.method public synthetic lambda$onViewCreated$6$SunShadeControlFragment(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "loading"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mOpenBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$7$SunShadeControlFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->stopSunShade()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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

    .line 44
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0106

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePos()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;->setPosition(I)V

    .line 53
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$Ms6kt-Nj3AVTi7s-bGohIL_idTk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$Ms6kt-Nj3AVTi7s-bGohIL_idTk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-interface {p2, v0}, Lcom/xiaopeng/carcontrol/interfaces/ISunShadeView;->setTPosChangeListener(Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;)V

    .line 54
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePosData()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$BBP2gK5ycCjc3RF0WZ0kNZ7q8gM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$BBP2gK5ycCjc3RF0WZ0kNZ7q8gM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const p2, 0x7f0a0274

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mOpenBtn:Landroid/widget/Button;

    .line 61
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$ie6hzA-0e6VzCRpkRDbD1C73xSc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$ie6hzA-0e6VzCRpkRDbD1C73xSc;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00e6

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mCloseBtn:Landroid/widget/Button;

    .line 63
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$dIwDcssALmXp5zFD5POZ6MMxjWA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$dIwDcssALmXp5zFD5POZ6MMxjWA;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mCloseBtn:Landroid/widget/Button;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$Rp-686zWDbs8ZOhorUBoICEWC78;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$Rp-686zWDbs8ZOhorUBoICEWC78;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadeLoadingData()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$lxsh4g1rffwb4DRbQca9cKj3OAM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$lxsh4g1rffwb4DRbQca9cKj3OAM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const p2, 0x7f0a028b

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$qv5pAWjH84XnHbS-PNkRHzgiDsg;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SunShadeControlFragment$qv5pAWjH84XnHbS-PNkRHzgiDsg;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SunShadeControlFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
