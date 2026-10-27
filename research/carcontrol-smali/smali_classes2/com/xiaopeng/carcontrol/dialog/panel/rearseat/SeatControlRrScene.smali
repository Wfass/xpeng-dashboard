.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;
.super Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;
.source "SeatControlRrScene.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatControlRrScene"


# instance fields
.field private btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

.field private btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

.field private btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

.field private controlContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private final mRightEasyActiveTask:Ljava/lang/Runnable;

.field private final mRightRestActiveTask:Ljava/lang/Runnable;

.field private final mRightZeroActiveTask:Ljava/lang/Runnable;

.field private mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

.field private mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

.field private memoryPosContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

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

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;-><init>(Ljava/lang/String;Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

    .line 44
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$hvFxaWGtzxVN77zEcVoP1QHYb4A;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$hvFxaWGtzxVN77zEcVoP1QHYb4A;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightZeroActiveTask:Ljava/lang/Runnable;

    .line 62
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$1l6muCeX6h0Agb61tqYGwo3lFUU;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$1l6muCeX6h0Agb61tqYGwo3lFUU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightEasyActiveTask:Ljava/lang/Runnable;

    .line 80
    new-instance p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$5ts5-hQeNl5eLgD-N6eJ5wVtGr0;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$5ts5-hQeNl5eLgD-N6eJ5wVtGr0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightRestActiveTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->stopZero()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->stopEasy()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightRestActiveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private secRowZeroFuncInit()V
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->isSupportSecRowZeroGravity:Z

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$IvT1QG0mXchKawBMp_b6YQqjCPE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$IvT1QG0mXchKawBMp_b6YQqjCPE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$ArVWPQrlTFBoG01yVU2vmVj90Mw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$ArVWPQrlTFBoG01yVU2vmVj90Mw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method private stopEasy()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatEZ(I)V

    return-void
.end method

.method private stopReset()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowLeftSeatMoving()V

    return-void
.end method

.method private stopZero()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowLtSeatZeroGrav(I)V

    return-void
.end method


# virtual methods
.method declared-synchronized handleSecRowRTRestKey(I)V
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

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 256
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRTRestKey    \u6b63\u5728\u8fdb\u884c\u4e00\u952e\u6062\u590d"

    .line 277
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z

    goto/16 :goto_0

    .line 286
    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightRestActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 289
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 292
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopSecRowRightSeatMoving()V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result p1

    .line 262
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 264
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 269
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v1, 0x7f110328

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string p1, "SeatControlRrScene"

    const-string/jumbo v1, "seat_reset_ready"

    .line 270
    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightRestActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
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

.method declared-synchronized handleSecRowRightEzOrZeroGStatusChange(I)V
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

    .line 247
    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    .line 248
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z

    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange     MSM_FUNCTION_STOP    \u6b63\u5728\u9000\u51fa\u96f6\u91cd\u529b\u6216\u65b9\u4fbf\u8fdb\u51fa\u72b6\u6001"

    .line 249
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange     MSM_EASYENTRY_ENTERED    \u6b63\u5728\u8fdb\u5165\u65b9\u4fbf\u8fdb\u51fa\u72b6\u6001"

    .line 243
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    goto/16 :goto_2

    :cond_2
    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange    MSM_EASYENTRY_PENDING     \u5373\u5c06\u8fdb\u5165\u65b9\u4fbf\u8fdb\u51fa\u72b6\u6001"

    .line 239
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    goto/16 :goto_2

    .line 233
    :cond_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11035a

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 234
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange    MSM_ZEROGRAV_ENTERED     \u6b63\u5728\u8fdb\u5165\u96f6\u91cd\u529b\u72b6\u6001  mIsNotZeroActive = false"

    .line 235
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z

    goto/16 :goto_2

    :cond_4
    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange    MSM_ZEROGRAV_PENDING     \u5373\u5c06\u8fdb\u5165\u96f6\u91cd\u529b\u72b6\u6001  mIsNotZeroActive = false;"

    .line 229
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z

    goto/16 :goto_2

    :cond_5
    const-string p1, "SeatControlRrScene"

    const-string v3, "handleSecRowRightEzOrZeroGStatusChange    MSM_FUNCTION_INACTIVE    \uff0c mIsNotZeroActive = true"

    .line 200
    invoke-static {p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result p1

    .line 203
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 204
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 206
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    .line 207
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 209
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 212
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    .line 213
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_7
    :goto_0
    if-ne p1, v1, :cond_8

    .line 217
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11035d

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: seat_zero_ready"

    .line 218
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-ne p1, v0, :cond_9

    .line 220
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1102f3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: seat_easy_ready"

    .line 221
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    if-nez p1, :cond_a

    const-string p1, "SeatControlRrScene"

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: error"

    .line 223
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_a
    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    .line 226
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
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

    .line 103
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->initViews()V

    const v0, 0x7f0a02da

    .line 104
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->memoryPosContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const v0, 0x7f0a00bf

    .line 105
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00c0

    .line 106
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00c1

    .line 107
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00c6

    .line 108
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00ab

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a00b7

    .line 110
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a02ef

    .line 111
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->controlContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->isSupportSecRowZeroGravity:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "SeatControlRrScene"

    const-string v2, "isSupportSecRowZeroGravity = false"

    .line 113
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->controlContainer:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->secRowZeroFuncInit()V

    .line 117
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->isSupportSecRowMemory:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->rlSeatNameOne:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->rlSeatNameOne:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->rlSeatNameTwo:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->rlSeatNameTwo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->rlSeatNameThree:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->rlSeatNameThree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$Sar3aPTHskuj4cQxDN7S2rFckJo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$Sar3aPTHskuj4cQxDN7S2rFckJo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$vSCg3bF0w87Po1eLg0EFzbd_jno;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$vSCg3bF0w87Po1eLg0EFzbd_jno;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$R19C7zyfcD1jhUqYkAZm4eVdu2w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$R19C7zyfcD1jhUqYkAZm4eVdu2w;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$p3yLT30kj87OWU9EQAZEVeua2Og;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$p3yLT30kj87OWU9EQAZEVeua2Og;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$v1WMxafHmipvkCQWDlQI_uComyM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$v1WMxafHmipvkCQWDlQI_uComyM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$Tbooevk1-6dyRVyVhXEQeOk5wPg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatControlRrScene$Tbooevk1-6dyRVyVhXEQeOk5wPg;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSecRowZeroClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSecRowEasyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initViews$3$SeatControlRrScene(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$initViews$4$SeatControlRrScene(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z

    return-void
.end method

.method public synthetic lambda$initViews$5$SeatControlRrScene(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z

    return v1
.end method

.method public synthetic lambda$initViews$6$SeatControlRrScene(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z

    return-void
.end method

.method public synthetic lambda$initViews$7$SeatControlRrScene(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$initViews$8$SeatControlRrScene(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreRRSelectSeatPos(IZ)Z

    return-void
.end method

.method public synthetic lambda$new$0$SeatControlRrScene()V
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRightZeroActiveTask  mRightIsNotZeroActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlRrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 58
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11035d

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: zero already"

    .line 59
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$1$SeatControlRrScene()V
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRightEasyActiveTask  mRightIsNotEasyActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlRrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "handleSecRowRightEzOrZeroGStatusChange: easy already"

    .line 76
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$2$SeatControlRrScene()V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRightRestActiveTask  mRightIsNotRestActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatControlRrScene"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotRestActive:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnOriginRestoreRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRTFuctionStatus()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "reset already"

    .line 93
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$secRowZeroFuncInit$10$SeatControlRrScene(Landroid/view/View;)V
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

    .line 334
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v2

    const-string v3, "SeatControlRrScene"

    if-eqz v2, :cond_0

    const-string p1, "mSecRowZeroClickListener: fast click"

    .line 335
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 344
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: mSecRowEasyClickListener     isSelected = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 347
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->stopZero()V

    .line 348
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->stopReset()V

    .line 349
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 352
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatEZ(I)V

    .line 353
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 359
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightEasyActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatEZ(I)V

    .line 361
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotEasyActive:Z

    .line 363
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnEasyRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$secRowZeroFuncInit$9$SeatControlRrScene(Landroid/view/View;)V
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

    .line 302
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v2

    const-string v3, "SeatControlRrScene"

    if-eqz v2, :cond_0

    const-string p1, "mSecRowZeroClickListener: fast click"

    .line 303
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f1103cb

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mServiceViewManager:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    invoke-virtual {v2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->getGearLevel()I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->fromVcuGearLevel(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v2

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v2, v4, :cond_1

    .line 308
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11035c

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 309
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 312
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: mSecRowZeroClickListener      isSelected = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->stopEasy()V

    .line 316
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->stopReset()V

    .line 317
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 320
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(I)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightZeroActiveTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setSecRowRtSeatZeroGrav(I)V

    .line 329
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mRightIsNotZeroActive:Z

    .line 331
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->btnZeroRight:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 413
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->onRegisterLiveData()V

    const-string v0, "isSupportSecRowZeroGravity"

    .line 414
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtEzOrZeroGStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$6XyL3_ADu-EYPOhEw6BtgeITvqQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$6XyL3_ADu-EYPOhEw6BtgeITvqQ;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatMoveStatusData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4LOSxVNQinLDWpc7L1_YqAGrWWA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4LOSxVNQinLDWpc7L1_YqAGrWWA;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 394
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setPositiveButtonClickListener(Ljava/lang/String;I)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_3

    .line 405
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posThree:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRRSeatName(Ljava/lang/String;I)V

    goto :goto_3

    .line 401
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posTwo:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_3

    move-object v1, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRRSeatName(Ljava/lang/String;I)V

    goto :goto_3

    .line 397
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->posOne:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz p1, :cond_5

    move-object v0, p1

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlRrScene;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->saveRRSeatName(Ljava/lang/String;I)V

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

    const-string p1, "SeatControlRRDialog"

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setRenameDialogSceneId(Ljava/lang/String;)V

    return-void
.end method
