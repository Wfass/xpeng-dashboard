.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;
.super Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;
.source "SeatControlRlScene.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatControlRlScene"


# instance fields
.field private btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

.field private btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

.field private btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

.field private controlContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private final mLeftEasyActiveTask:Ljava/lang/Runnable;

.field private final mLeftRestActiveTask:Ljava/lang/Runnable;

.field private final mLeftZeroActiveTask:Ljava/lang/Runnable;

.field private mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

.field private mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

.field private posOne:Lcom/xiaopeng/xui/widget/XButton;

.field private posThree:Lcom/xiaopeng/xui/widget/XButton;

.field private posTwo:Lcom/xiaopeng/xui/widget/XButton;

.field private rlSeatNameOne:Ljava/lang/String;

.field private rlSeatNameThree:Ljava/lang/String;

.field private rlSeatNameTwo:Ljava/lang/String;


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

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$SkbySwL-YSP0yJno-B2IRG1ZASw;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$SkbySwL-YSP0yJno-B2IRG1ZASw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftZeroActiveTask:Ljava/lang/Runnable;

    .line 75
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$mX2CLGw-bTdc5vDWl30Vr06AkPM;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$mX2CLGw-bTdc5vDWl30Vr06AkPM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftEasyActiveTask:Ljava/lang/Runnable;

    .line 93
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$Qkc9_OI_dEu0HQhKlnU6L_GZuCc;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$Qkc9_OI_dEu0HQhKlnU6L_GZuCc;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftRestActiveTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->stopEasy()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->stopZero()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftRestActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private secRowZeroFuncInit()V
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->isSupportSecRowZeroGravity:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$rvW1hoco6_jnSCsLzxFCq7ncA6I;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$rvW1hoco6_jnSCsLzxFCq7ncA6I;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$FuDHLopwScQ271aZjpQJR173vz8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$FuDHLopwScQ271aZjpQJR173vz8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method private stopEasy()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    return-void
.end method

.method private stopReset()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowLeftSeatMoving()V

    return-void
.end method

.method private stopZero()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(I)V

    return-void
.end method


# virtual methods
.method declared-synchronized handleSecRowLTRestKey(I)V
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

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 268
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLTRestKey    \u6b63\u5728\u8fdb\u884c\u4e00\u952e\u6062\u590d"

    .line 289
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z

    goto/16 :goto_0

    .line 298
    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftRestActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 304
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowLeftSeatMoving()V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result p1

    .line 274
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 276
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 281
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v1, 0x7f110328

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string p1, "SeatControlRlScene"

    const-string/jumbo v1, "seat_reset_ready"

    .line 282
    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftRestActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized handleSecRowLeftEzOrZeroGStatusChange(I)V
    .locals 5
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 259
    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    .line 260
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z

    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange     MSM_FUNCTION_STOP    \u6b63\u5728\u9000\u51fa\u96f6\u91cd\u529b\u6216\u65b9\u4fbf\u8fdb\u51fa\u72b6\u6001"

    .line 261
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange     MSM_EASYENTRY_ENTERED    \u6b63\u5728\u8fdb\u5165\u65b9\u4fbf\u8fdb\u51fa\u72b6\u6001"

    .line 255
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    goto/16 :goto_2

    :cond_2
    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange    MSM_EASYENTRY_PENDING     \u5373\u5c06\u8fdb\u5165\u65b9\u4fbf\u8fdb\u51fa\u72b6\u6001"

    .line 251
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    goto/16 :goto_2

    .line 245
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11035a

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 246
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange    MSM_ZEROGRAV_ENTERED     \u6b63\u5728\u8fdb\u5165\u96f6\u91cd\u529b\u72b6\u6001  mIsNotZeroActive = false"

    .line 247
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z

    goto/16 :goto_2

    :cond_4
    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange    MSM_ZEROGRAV_PENDING     \u5373\u5c06\u8fdb\u5165\u96f6\u91cd\u529b\u72b6\u6001  mIsNotZeroActive = false;"

    .line 241
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z

    goto/16 :goto_2

    :cond_5
    const-string p1, "SeatControlRlScene"

    const-string v3, "handleSecRowLeftEzOrZeroGStatusChange    MSM_FUNCTION_INACTIVE    \uff0c mIsNotZeroActive = true"

    .line 212
    invoke-static {p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result p1

    .line 215
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 216
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 218
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    .line 219
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 221
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 224
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    .line 225
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_7
    :goto_0
    if-ne p1, v1, :cond_8

    .line 229
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11035d

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange: seat_zero_ready"

    .line 230
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-ne p1, v0, :cond_9

    .line 232
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange: seat_easy_ready"

    .line 233
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    if-nez p1, :cond_a

    const-string p1, "SeatControlRlScene"

    const-string v0, "handleSecRowLeftEzOrZeroGStatusChange: error"

    .line 235
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_a
    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    .line 238
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected initViews()V
    .locals 3

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->initViews()V

    const v0, 0x7f0a00bf

    .line 117
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00c0

    .line 118
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00c1

    .line 119
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00c5

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00aa

    .line 121
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00b6

    .line 122
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a02ee

    .line 123
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->controlContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 124
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->isSupportSecRowZeroGravity:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "SeatControlRlScene"

    const-string v2, "isSupportSecRowZeroGravity = false"

    .line 125
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->controlContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->secRowZeroFuncInit()V

    .line 129
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->isSupportSecRowMemory:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->rlSeatNameOne:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->rlSeatNameOne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->rlSeatNameTwo:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->rlSeatNameTwo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->rlSeatNameThree:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->rlSeatNameThree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$LDKObwy3zlQRYjBxkOv5f_lHDVo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$LDKObwy3zlQRYjBxkOv5f_lHDVo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$HLeS7N6ILQ2fX9livC3kJG955M8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$HLeS7N6ILQ2fX9livC3kJG955M8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$JfuiP8RODV4BMhtuF9yleuaqJHE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$JfuiP8RODV4BMhtuF9yleuaqJHE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$70B76Dr__f1YTRHRvJNqMKHA3oY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$70B76Dr__f1YTRHRvJNqMKHA3oY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$x88eimG-HLgUl_3asnTvzIqyRqc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$x88eimG-HLgUl_3asnTvzIqyRqc;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$xIlSCFk6fJ6VTN8wdVss9TETIzI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRlScene$xIlSCFk6fJ6VTN8wdVss9TETIzI;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initViews$3$SeatControlRlScene(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$initViews$4$SeatControlRlScene(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    return-void
.end method

.method public synthetic lambda$initViews$5$SeatControlRlScene(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z

    return v1
.end method

.method public synthetic lambda$initViews$6$SeatControlRlScene(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    return-void
.end method

.method public synthetic lambda$initViews$7$SeatControlRlScene(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$initViews$8$SeatControlRlScene(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRLSelectSeatPos(IZ)Z

    return-void
.end method

.method public synthetic lambda$new$0$SeatControlRlScene()V
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mZeroActiveTask  mLeftIsNotZeroActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlRlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 71
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11035d

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: zero already"

    .line 72
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$1$SeatControlRlScene()V
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeftEasyActiveTask  mLeftIsNotEasyActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlRlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: easy already"

    .line 89
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$2$SeatControlRlScene()V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeftRestyActiveTask  mLeftIsNotRestActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlRlScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotRestActive:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnOriginRestoreLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLTFuctionStatus()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "reset already"

    .line 106
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$secRowZeroFuncInit$10$SeatControlRlScene(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    const-wide/16 v0, 0x1f4

    const/4 p1, 0x0

    .line 346
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v2

    const-string v3, "SeatControlRlScene"

    if-eqz v2, :cond_0

    const-string p1, "mSecRowZeroClickListener: fast click"

    .line 347
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 351
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: mSecRowEasyClickListener     isSelected = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->stopZero()V

    .line 355
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->stopReset()V

    .line 356
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    .line 360
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 366
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    .line 368
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotEasyActive:Z

    .line 370
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnEasyLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$secRowZeroFuncInit$9$SeatControlRlScene(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    const-wide/16 v0, 0x1f4

    const/4 p1, 0x0

    .line 314
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v2

    const-string v3, "SeatControlRlScene"

    if-eqz v2, :cond_0

    const-string p1, "mSecRowZeroClickListener: fast click"

    .line 315
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mServiceViewManager:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-virtual {v2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->getGearLevel()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->fromVcuGearLevel(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v2

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v2, v4, :cond_1

    .line 320
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11035c

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 321
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 324
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: mSecRowZeroClickListener      isSelected = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->stopEasy()V

    .line 328
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->stopReset()V

    .line 329
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(I)V

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(I)V

    .line 341
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mLeftIsNotZeroActive:Z

    .line 343
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->btnZeroLeft:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 420
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->onRegisterLiveData()V

    const-string v0, "isSupportSecRowZeroGravity"

    .line 421
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$gnb8-yq1ozTwqIDvBy2oKfTosAM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$gnb8-yq1ozTwqIDvBy2oKfTosAM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatMoveStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$IHOBslAGh8rKjJOM0pk65sYo6U4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$IHOBslAGh8rKjJOM0pk65sYo6U4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected setPositiveButtonClickListener(Ljava/lang/String;I)V
    .locals 2
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

    .line 401
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setPositiveButtonClickListener(Ljava/lang/String;I)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_3

    .line 412
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRLSeatName(Ljava/lang/String;I)V

    goto :goto_3

    .line 408
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_3

    move-object v1, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRLSeatName(Ljava/lang/String;I)V

    goto :goto_3

    .line 404
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_5

    move-object v0, p1

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRlScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRLSeatName(Ljava/lang/String;I)V

    :goto_3
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

    const-string p1, "SeatControlRLDialog"

    .line 54
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setRenameDialogSceneId(Ljava/lang/String;)V

    return-void
.end method
