.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;
.source "SeatAdjustPanel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$changeSeatInterface;


# instance fields
.field private SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected final TAG:Ljava/lang/String;

.field private mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mTrdRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mTrdRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private rlView:Landroid/view/View;

.field private rrView:Landroid/view/View;

.field private seatControlRlScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

.field private seatControlRrScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

.field private seatControlTlScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

.field private seatControlTrScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

.field seatSelectLevel:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

.field private tlView:Landroid/view/View;

.field private trView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;-><init>()V

    const-string v0, "SeatAdjustPanel"

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->TAG:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->SeatSelect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatSelectLevel:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    return-void
.end method

.method private SeatSceneInit(Landroid/view/LayoutInflater;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutInflater"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const v1, 0x7f0d005e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rlView:Landroid/view/View;

    .line 95
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rlView:Landroid/view/View;

    const-string/jumbo v3, "seat_rl_control"

    invoke-direct {v0, v3, v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlRlScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlRlScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rlView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const v1, 0x7f0d005f

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rrView:Landroid/view/View;

    .line 100
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rrView:Landroid/view/View;

    const-string/jumbo v3, "seat_rr_control"

    invoke-direct {v0, v3, v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlRrScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlRrScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const v1, 0x7f0d0063

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->tlView:Landroid/view/View;

    .line 103
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->tlView:Landroid/view/View;

    const-string/jumbo v3, "seat_tl_control"

    invoke-direct {v0, v3, v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlTlScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlTlScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const v1, 0x7f0d0064

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->trView:Landroid/view/View;

    .line 106
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->trView:Landroid/view/View;

    const-string/jumbo v1, "seat_tr_control"

    invoke-direct {p1, v1, v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlTrScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatControlTrScene:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method findViews()V
    .locals 2

    const v0, 0x7f0a02f2

    .line 74
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 75
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f0a02f4

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f0a037e

    .line 77
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f0a037f

    .line 78
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageLevel(I)V

    const v0, 0x7f0a0168

    .line 80
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const-string v0, "isSupportTrdRowSeatControl"

    .line 81
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->initClickListener()V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0059

    return v0
.end method

.method initClickListener()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mTrdRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$N0C0Em4MaCaNYB7c038BmsaL_Wo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onInitView()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->onInitView()V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->findViews()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatSceneInit(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public showRlSeatControl()V
    .locals 2

    const-string v0, "SeatAdjustPanel"

    const-string/jumbo v1, "showRlSeatControl"

    .line 116
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rlView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showRrSeatControl()V
    .locals 2

    const-string v0, "SeatAdjustPanel"

    const-string/jumbo v1, "showRrSeatControl"

    .line 124
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->removeAllViews()V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->rrView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showTlSeatControl()V
    .locals 2

    const-string v0, "SeatAdjustPanel"

    const-string/jumbo v1, "showTlSeatControl"

    .line 132
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->removeAllViews()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->tlView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showTrSeatControl()V
    .locals 2

    const-string v0, "SeatAdjustPanel"

    const-string/jumbo v1, "showTrSeatControl"

    .line 140
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->SeatRootView:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->trView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method upDateSelectImage(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 47
    instance-of v0, p1, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageLevel(I)V

    .line 49
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->seatSelectLevel:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageLevel(I)V

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    goto :goto_0

    :cond_0
    const-string v0, "SeatAdjustPanel"

    const-string/jumbo v1, "upDateSelectImage: not XImageView"

    .line 52
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02f2

    if-ne p1, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->showRlSeatControl()V

    goto :goto_1

    :cond_1
    const v0, 0x7f0a02f4

    if-ne p1, v0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->showRrSeatControl()V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a037e

    if-ne p1, v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->showTlSeatControl()V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a037f

    if-ne p1, v0, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatAdjustPanel;->showTrSeatControl()V

    :cond_4
    :goto_1
    return-void
.end method
