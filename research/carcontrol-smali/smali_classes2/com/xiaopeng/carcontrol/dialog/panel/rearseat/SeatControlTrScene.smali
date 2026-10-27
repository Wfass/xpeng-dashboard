.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;
.super Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;
.source "SeatControlTrScene.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatControlTrScene"


# instance fields
.field private jumpText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

.field private mFoldTxClickListener:Landroid/view/View$OnClickListener;

.field private final mRightFoldActiveTask:Ljava/lang/Runnable;

.field private final mRightUnFoldActiveTask:Ljava/lang/Runnable;

.field private final mStowActiveTask:Ljava/lang/Runnable;

.field private mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

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

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 49
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$71yG8x4CRFWaodt7_Y-FncqDvn0;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$71yG8x4CRFWaodt7_Y-FncqDvn0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightFoldActiveTask:Ljava/lang/Runnable;

    .line 67
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$d5f3cwbQVbgegKja61kSODiPEK4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$d5f3cwbQVbgegKja61kSODiPEK4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightUnFoldActiveTask:Ljava/lang/Runnable;

    .line 85
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$JTt0aglkeQBPQKuu4sOEB2PHMk4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$JTt0aglkeQBPQKuu4sOEB2PHMk4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowActiveTask:Ljava/lang/Runnable;

    .line 104
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$q4hisTgyCT3SeUSOc26qskb801w;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$q4hisTgyCT3SeUSOc26qskb801w;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    .line 466
    sget-object p1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatLTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->showFoldDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->disableTrdRowRightButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightFoldActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightUnFoldActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->showStowDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private disableTrdRowRightButton(Z)V
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

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    .line 439
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private enableTrdRowRightButton()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

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

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTrdRowStowInPause   seatTrdRowStatus   Right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    return-void
.end method

.method private initBtnStatus()V
    .locals 2

    const v0, 0x7f0a00ad

    .line 411
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v0, 0x7f0a00c4

    .line 412
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    .line 413
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->isSupportTrdRowSeatControl:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->isSupportTrdRowFold:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->isSupportTrdRowStow:Z

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initDialogClickListener()V
    .locals 1

    .line 364
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$r-i-ZazOpvHAxTXnIfNxMLM-xFw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$r-i-ZazOpvHAxTXnIfNxMLM-xFw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 385
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$H4hqhOO14yFdPmckmlf-rEU6T3E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$H4hqhOO14yFdPmckmlf-rEU6T3E;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 405
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$kAqnlN30NeWWdd3fFaN8gaBA3IE;->INSTANCE:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$kAqnlN30NeWWdd3fFaN8gaBA3IE;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-void
.end method

.method public static synthetic lambda$6SJqbrFso2yFhIWJWMAjcoFNRAw(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handleTrdRowStowInPause(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;)V

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

    .line 406
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method private setTrdListener()V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->isSupportTrdRowFold:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->isSupportTrdRowStow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->initDialogClickListener()V

    .line 232
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$2;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$3;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

    .line 295
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$5;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 309
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$6;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowTxClickListener:Landroid/view/View$OnClickListener;

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowFoldClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getOpenButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getCloseButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnFoldTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getOpenButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getCloseButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowTxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showFoldDialog()V
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f11034e

    .line 333
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f110349

    .line 335
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f110346

    .line 337
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120368

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0x7d8

    .line 339
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    const v3, 0x7f110061

    .line 340
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowFoldDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    const v4, 0x7f11005e

    .line 341
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    .line 342
    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 343
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->context:Landroid/content/Context;

    const-string v3, "SeatControlTlFoldDialog"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showStowDialog()V
    .locals 6

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f11034f

    .line 349
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f11034c

    .line 351
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f110346

    .line 353
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120368

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    const/16 v3, 0x7d8

    .line 355
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    const v3, 0x7f110061

    .line 356
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogPosListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    const v4, 0x7f11005e

    .line 357
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mTrdRowStowDialogCancelListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    .line 358
    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 359
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->context:Landroid/content/Context;

    const-string v3, "SeatControlTlStowDialog"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeStatus()V
    .locals 5

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setPause()I

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 487
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene$7;->$SwitchMap$com$xiaopeng$carcontrol$view$dialog$rearpanel$SeatTrdRowStatus:[I

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->var:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_1

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 511
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    goto :goto_2

    .line 496
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setPause()I

    .line 498
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->disableTrdRowRightButton(Z)V

    goto :goto_2

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 492
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->disableTrdRowRightButton(Z)V

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

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStowSuccessProcess  result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTrScene"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    goto :goto_0

    .line 523
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    :goto_0
    return-void
.end method

.method declared-synchronized handleTrdRowRightFoldStatusChange(I)V
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

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowFoldStatusChange     MSMT_TILT_STOP     "

    .line 172
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    .line 174
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotUnFoldActive:Z

    goto :goto_0

    :cond_1
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowFoldStatusChange     MSMT_UNFOLD_ACTIVATED    "

    .line 168
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotUnFoldActive:Z

    goto :goto_0

    :cond_2
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowFoldStatusChange    MSMT_UNFOLD_PENDING     "

    .line 164
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotUnFoldActive:Z

    goto :goto_0

    :cond_3
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowFoldStatusChange    MSMT_FOLD_ACTIVATED     "

    .line 160
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    goto :goto_0

    :cond_4
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowFoldStatusChange    MSMT_FOLD_PENDING     "

    .line 156
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    goto :goto_0

    .line 137
    :cond_5
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    .line 138
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    const-string p1, "SeatControlTrScene"

    const-string v2, "handleTrdRowFoldStatusChange    MSM_FOLD_INACTIVE    "

    .line 139
    invoke-static {p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightUnFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowRightFoldStatusChange: fold "

    .line 146
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowRightFoldStatusChange: unfold"

    .line 152
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
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
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowStowStatusChange     MSMT_STOWFUN_STOP     "

    .line 220
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    .line 222
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotUnStowActive:Z

    goto/16 :goto_0

    :cond_1
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowStowStatusChange     MSMT_UNSTOW_ACTIVATED     "

    .line 216
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotUnStowActive:Z

    goto :goto_0

    :cond_2
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowStowStatusChange    MSMT_UNSTOW_PENDING      "

    .line 212
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotUnStowActive:Z

    goto :goto_0

    :cond_3
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowStowStatusChange    MSMT_STOW_ACTIVATED      "

    .line 208
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    goto :goto_0

    :cond_4
    const-string p1, "SeatControlTrScene"

    const-string v0, "handleTrdRowStowStatusChange    MSMT_STOW_PENDING      "

    .line 204
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    goto :goto_0

    .line 182
    :cond_5
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    .line 183
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotUnStowActive:Z

    const-string p1, "SeatControlTrScene"

    const-string v3, "handleTrdRowStowStatusChange    MSM_STOWFUN_INACTIVE"

    .line 184
    invoke-static {p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v2, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    .line 190
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 197
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
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

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->initViews()V

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->initBtnStatus()V

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setTrdListener()V

    return-void
.end method

.method public synthetic lambda$initDialogClickListener$4$SeatControlTrScene(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 365
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    .line 366
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    .line 367
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->disableTrdRowRightButton(Z)V

    .line 368
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 369
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 370
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result p2

    const-wide/16 v0, 0x1f4

    const-string v2, "SeatControlTrScene"

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const-string p1, "initDialogClickListener: unfold"

    .line 372
    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    .line 374
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightUnFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightUnFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p2, "initDialogClickListener: fold"

    .line 378
    invoke-static {v2, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    .line 380
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightFoldActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$initDialogClickListener$5$SeatControlTrScene(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 386
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    .line 387
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotUnStowActive:Z

    const/4 p2, 0x0

    .line 388
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->disableTrdRowRightButton(Z)V

    .line 389
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 390
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 391
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result p2

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 393
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 394
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mUnStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 398
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 399
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowInPause:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$0$SeatControlTrScene()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRightFoldActiveTask  mRightIsNotFoldActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotFoldActive:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$1$SeatControlTrScene()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRightUnFoldActiveTask  mRightIsNotUnFoldActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotUnFoldActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mRightIsNotUnFoldActive:Z

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowRtSeatFol(I)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRightSeatTiltState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mFoldRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 81
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$2$SeatControlTrScene()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStowActiveTask  mIsNotStowActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v1, 0x7f110352

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v1, 0x7f110351

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiLabel(Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$3$SeatControlTrScene()V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStowActiveTask  mIsNotStowActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotStowActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlTrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mIsNotUnStowActive:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setTrdRowSeatStow(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mStowRightBtn:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVuiStateIndex(I)V

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->enableTrdRowRightButton()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;->SeatRTStowNotActive:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/SeatTrdRowStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 453
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->onRegisterLiveData()V

    const-string v0, "isSupportTrdRowFold"

    .line 455
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtFoldStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$C1sw5uMJwZi06TfYUAiuf-vRDGk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$C1sw5uMJwZi06TfYUAiuf-vRDGk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportTrdRowStow"

    .line 459
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$bvQVMjXU_P1IAX6Gg1_jnwwSp68;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$bvQVMjXU_P1IAX6Gg1_jnwwSp68;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowInPause()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$6SJqbrFso2yFhIWJWMAjcoFNRAw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlTrScene$6SJqbrFso2yFhIWJWMAjcoFNRAw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$nYyOdoURFLbFdePJqfOwJLWtWxA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$nYyOdoURFLbFdePJqfOwJLWtWxA;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTrScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method
