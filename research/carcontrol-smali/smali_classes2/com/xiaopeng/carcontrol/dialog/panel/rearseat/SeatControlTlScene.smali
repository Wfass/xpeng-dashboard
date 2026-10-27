.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;
.super Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;
.source "SeatControlTlScene.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatControlTlScene"


# instance fields
.field private mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

.field private mFoldTxClickListener:Landroid/view/View$OnClickListener;

.field private final mLeftFoldActiveTask:Ljava/lang/Runnable;

.field private final mLeftUnFoldActiveTask:Ljava/lang/Runnable;

.field private final mStowActiveTask:Ljava/lang/Runnable;

.field private mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

.field private mStowTxClickListener:Landroid/view/View$OnClickListener;

.field private mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

.field private mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

.field private mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

.field private final mUnStowActiveTask:Ljava/lang/Runnable;

.field private mUnStowTxClickListener:Landroid/view/View$OnClickListener;

.field public var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
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

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 51
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$MCPn4qsKXJ4s9p4pdnEQkputBpY;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$MCPn4qsKXJ4s9p4pdnEQkputBpY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftFoldActiveTask:Ljava/lang/Runnable;

    .line 71
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$wz5TbJQhhH2gLCP78p9m8N9R2b4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$wz5TbJQhhH2gLCP78p9m8N9R2b4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftUnFoldActiveTask:Ljava/lang/Runnable;

    .line 91
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$eBxNfJ2JDEmp9LkOuwlorafwKjY;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$eBxNfJ2JDEmp9LkOuwlorafwKjY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowActiveTask:Ljava/lang/Runnable;

    .line 110
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$dOzw5i_fX-vIkik0Neykvziip8M;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$dOzw5i_fX-vIkik0Neykvziip8M;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    .line 471
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->showFoldDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->disableTrdRowLeftButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftFoldActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftUnFoldActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->showStowDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private disableTrdRowLeftButton(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFoldClick"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    .line 445
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private enableTrdRowLeftButton()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    return-void
.end method

.method private handleTrdRowStowInPause(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatTrdRowStatus"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTrdRowStowInPause   seatTrdRowStatus   Left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-void
.end method

.method private initBtnStatus()V
    .locals 2

    const v0, 0x7f0a00ac

    .line 414
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v0, 0x7f0a00c3

    .line 415
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    .line 416
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->isSupportTrdRowSeatControl:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->isSupportTrdRowFold:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->isSupportTrdRowStow:Z

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initDialogClickListener()V
    .locals 1

    .line 366
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$YTQfYKM3k4xJ9n8Vt4_IPX_J3Rw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$YTQfYKM3k4xJ9n8Vt4_IPX_J3Rw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 387
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$cT-IH1WwM0yoFgMiBYFmgwdIpm0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$cT-IH1WwM0yoFgMiBYFmgwdIpm0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 407
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$yQgeL-ATsboXVk7b2iee9LqIOMw;->INSTANCE:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$yQgeL-ATsboXVk7b2iee9LqIOMw;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-void
.end method

.method public static synthetic lambda$4d-Cf3o3_l_sTCQ1NW_QcDPTdxk(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handleTrdRowStowInPause(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;)V

    return-void
.end method

.method static synthetic lambda$initDialogClickListener$6(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method private setTrdListener()V
    .locals 2

    .line 232
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->isSupportTrdRowFold:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->isSupportTrdRowStow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->initDialogClickListener()V

    .line 236
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$2;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 265
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$3;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

    .line 297
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$5;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 311
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$6;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getOpenButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getCloseButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getOpenButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getCloseButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showFoldDialog()V
    .locals 6

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f11034e

    .line 335
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f110349

    .line 337
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f110346

    .line 339
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v2, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120368

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0x7d8

    .line 341
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    const v3, 0x7f110061

    .line 342
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    const v4, 0x7f11005e

    .line 343
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    .line 344
    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 345
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->context:Landroid/content/Context;

    const-string v3, "SeatControlTlFoldDialog"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showStowDialog()V
    .locals 6

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f11034f

    .line 351
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f11034c

    .line 353
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f110346

    .line 355
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v2, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120368

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0x7d8

    .line 357
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    const v3, 0x7f110061

    .line 358
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    const v4, 0x7f11005e

    .line 359
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 361
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->context:Landroid/content/Context;

    const-string v3, "SeatControlTlStowDialog"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeStatus()V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setPause()I

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 492
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene$7;->$SwitchMap$com$xiaopeng$carcontrol$view$dialog$rearpanel$SeatTrdRowStatus:[I

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTrdRowStowInPause    mStowBtn.setOpen();   Left:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_1

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v1, 0x7f110351

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiLabel(Ljava/lang/String;)V

    .line 517
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    goto :goto_2

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setPause()I

    .line 503
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->disableTrdRowLeftButton(Z)V

    goto :goto_2

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 497
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->disableTrdRowLeftButton(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method handleStowSuccessProcess(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStowSuccessProcess  result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    goto :goto_0

    .line 529
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    :goto_0
    return-void
.end method

.method declared-synchronized handleTrdRowLeftFoldStatusChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowFoldStatusChange     MSMT_TILT_STOP     "

    .line 176
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    .line 178
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    goto :goto_0

    :cond_1
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowFoldStatusChange     MSMT_UNFOLD_ACTIVATED    "

    .line 172
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    goto :goto_0

    :cond_2
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowFoldStatusChange    MSMT_UNFOLD_PENDING     "

    .line 168
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    goto :goto_0

    :cond_3
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowFoldStatusChange    MSMT_FOLD_ACTIVATED     "

    .line 164
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    goto :goto_0

    :cond_4
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowFoldStatusChange    MSMT_FOLD_PENDING     "

    .line 160
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    goto :goto_0

    .line 143
    :cond_5
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    .line 144
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    const-string p1, "SeatControlTlScene"

    const-string v2, "handleTrdRowFoldStatusChange    MSM_FOLD_INACTIVE    "

    .line 145
    invoke-static {p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowLeftFoldStatusChange: fold "

    .line 151
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowLeftFoldStatusChange: unfold"

    .line 156
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized handleTrdRowStowStatusChange(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowStowStatusChange     MSMT_STOWFUN_STOP     "

    .line 224
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    .line 226
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotUnStowActive:Z

    goto/16 :goto_0

    :cond_1
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowStowStatusChange     MSMT_UNSTOW_ACTIVATED     "

    .line 220
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotUnStowActive:Z

    goto :goto_0

    :cond_2
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowStowStatusChange    MSMT_UNSTOW_PENDING     "

    .line 216
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotUnStowActive:Z

    goto :goto_0

    :cond_3
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowStowStatusChange    MSMT_STOW_ACTIVATED     "

    .line 212
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    goto :goto_0

    :cond_4
    const-string p1, "SeatControlTlScene"

    const-string v0, "handleTrdRowStowStatusChange    MSMT_STOW_PENDING     "

    .line 208
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    goto :goto_0

    .line 186
    :cond_5
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    .line 187
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotUnStowActive:Z

    const-string p1, "SeatControlTlScene"

    const-string v3, "handleTrdRowStowStatusChange    MSM_STOWFUN_INACTIVE   "

    .line 188
    invoke-static {p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v2, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 201
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected initViews()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->initViews()V

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->initBtnStatus()V

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setTrdListener()V

    return-void
.end method

.method public synthetic lambda$initDialogClickListener$4$SeatControlTlScene(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    const/4 p1, 0x1

    .line 367
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    .line 368
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    .line 369
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->disableTrdRowLeftButton(Z)V

    .line 370
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 371
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 372
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result p2

    const-wide/16 v0, 0x1f4

    const-string v2, "SeatControlTlScene"

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const-string p1, "initDialogClickListener: unfold"

    .line 374
    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    .line 376
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftUnFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftUnFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p2, "initDialogClickListener: fold"

    .line 380
    invoke-static {v2, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$initDialogClickListener$5$SeatControlTlScene(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    const/4 p1, 0x1

    .line 388
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    .line 389
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotUnStowActive:Z

    const/4 p2, 0x0

    .line 390
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->disableTrdRowLeftButton(Z)V

    .line 391
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 392
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 393
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result p2

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 395
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 400
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 401
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$0$SeatControlTlScene()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeftFoldActiveTask  mLeftIsNotFoldActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotFoldActive:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 65
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$SeatControlTlScene()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeftUnFoldActiveTask  mLeftIsNotUnFoldActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mLeftIsNotUnFoldActive:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowLtSeatFol(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLeftSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mFoldBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 85
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$2$SeatControlTlScene()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStowActiveTask  mIsNotStowActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v1, 0x7f110351

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiLabel(Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$3$SeatControlTlScene()V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStowActiveTask  mIsNotStowActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotStowActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mIsNotUnStowActive:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mStowBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->enableTrdRowLeftButton()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 457
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->onRegisterLiveData()V

    const-string v0, "isSupportTrdRowFold"

    .line 459
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$do_tDODJzOIYhnyTIgm-px3gQVI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$do_tDODJzOIYhnyTIgm-px3gQVI;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportTrdRowStow"

    .line 463
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$_ed3Uth_sOQjz3teanuCD9GHZms;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$_ed3Uth_sOQjz3teanuCD9GHZms;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$4d-Cf3o3_l_sTCQ1NW_QcDPTdxk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTlScene$4d-Cf3o3_l_sTCQ1NW_QcDPTdxk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$LJZrBEgjvDJs8alQZCpFixbtilU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$LJZrBEgjvDJs8alQZCpFixbtilU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method
