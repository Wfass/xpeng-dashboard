.class public Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "SunshadeControlPanel.java"


# static fields
.field private static final DELAY_TIME:J = 0xbb8L


# instance fields
.field private mCloseBtn:Landroid/widget/Button;

.field private mLastDownTime:J

.field private mOpenBtn:Landroid/widget/Button;

.field private final mResetTask:Ljava/lang/Runnable;

.field private mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$26MXqosxXVtAOqeAyAC8kz052YE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$26MXqosxXVtAOqeAyAC8kz052YE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mResetTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0068

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SunShadeControlDialog"

    return-object v0
.end method

.method public synthetic lambda$new$0$SunshadeControlPanel()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->resetSunShade()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$SunshadeControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$2$SunshadeControlPanel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tPos"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setSunShadePos(I)V

    return-void
.end method

.method public synthetic lambda$onInitView$3$SunshadeControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openSunShade()V

    return-void
.end method

.method public synthetic lambda$onInitView$4$SunshadeControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->closeSunShade()V

    return-void
.end method

.method public synthetic lambda$onInitView$5$SunshadeControlPanel(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    .line 64
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

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mLastDownTime:J

    sub-long/2addr v4, v6

    cmp-long p2, v4, v0

    if-ltz p2, :cond_2

    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v3

    .line 67
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mLastDownTime:J

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mResetTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return v2
.end method

.method public synthetic lambda$onInitView$6$SunshadeControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->stopSunShade()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$7$SunshadeControlPanel(Ljava/lang/Integer;)V
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

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$8$SunshadeControlPanel(Ljava/lang/Boolean;)V
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

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mOpenBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 2

    const v0, 0x7f0a00e4

    .line 55
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$0-U-JB1JgAH9grnqNGU93ni4TVU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$0-U-JB1JgAH9grnqNGU93ni4TVU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0106

    .line 56
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setPosition(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mSunShadeCtrlView:Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$m__p9TeSyWdSJVfUlQFvwrAlKZs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$m__p9TeSyWdSJVfUlQFvwrAlKZs;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SunShadeCtrlView;->setTPosChangeListener(Lcom/xiaopeng/carcontrol/interfaces/ISunShadePosChangeListener;)V

    const v0, 0x7f0a0274

    .line 59
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mOpenBtn:Landroid/widget/Button;

    .line 60
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$52F8ymB9v-Yks_3qf07V_nh1HHg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$52F8ymB9v-Yks_3qf07V_nh1HHg;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e6

    .line 61
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mCloseBtn:Landroid/widget/Button;

    .line 62
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$TlrLsPxAog_l3573CV9Hu-8cN_w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$TlrLsPxAog_l3573CV9Hu-8cN_w;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mCloseBtn:Landroid/widget/Button;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$2dxercHcssxgByR3_cA545UsgkI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$2dxercHcssxgByR3_cA545UsgkI;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a028b

    .line 83
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$RfLSXS5oA2qPzjFyokY_Ca8vqH0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$RfLSXS5oA2qPzjFyokY_Ca8vqH0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadePosData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$ff9j6JWn2rIM6-wZzJzWAiIhxR8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$ff9j6JWn2rIM6-wZzJzWAiIhxR8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getSunShadeLoadingData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$zH8tc9FjfH9BQh0IQoHGPzKfD54;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$zH8tc9FjfH9BQh0IQoHGPzKfD54;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
