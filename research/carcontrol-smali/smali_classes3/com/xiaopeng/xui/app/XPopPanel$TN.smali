.class Lcom/xiaopeng/xui/app/XPopPanel$TN;
.super Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;
.source "XPopPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPopPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;
    }
.end annotation


# static fields
.field private static final HIDE:I = 0x1

.field private static final SHOW:I = 0x2


# instance fields
.field private listener:Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

.field private mAutoHeight:Z

.field private mAutoHide:Z

.field private mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

.field private mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mBackgroundListener:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

.field private final mBg:I

.field private final mClickable:Z

.field private final mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private final mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

.field private mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

.field private mItemView:Landroid/view/View;

.field private mNotAttachNeedHide:Z

.field private mPaddings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelLayout:Landroid/widget/FrameLayout;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPosition:I

.field private mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

.field private mScreenId:I

.field private mToggleEnable:Z

.field private mToggleHeight:I

.field private mToggleWidth:I

.field private mTouchRegion:Landroid/graphics/Region;

.field private final mType:I

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZIIIZLandroid/view/View;ZZIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIIZIIIZ",
            "Landroid/view/View;",
            "ZZII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 379
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;-><init>()V

    const/4 v2, 0x0

    .line 374
    iput-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    .line 378
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mTouchRegion:Landroid/graphics/Region;

    move v2, p8

    .line 380
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mType:I

    move v2, p7

    .line 381
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDuration:I

    .line 382
    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    move v2, p2

    .line 383
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    move v2, p3

    .line 384
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    move v2, p4

    .line 385
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    move v2, p5

    .line 386
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    move v2, p6

    .line 387
    iput-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleEnable:Z

    move v2, p9

    .line 388
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBg:I

    move v2, p10

    .line 389
    iput-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mClickable:Z

    move-object v2, p11

    .line 390
    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    move/from16 v2, p12

    .line 391
    iput-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHeight:Z

    move/from16 v2, p13

    .line 392
    iput-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHide:Z

    move/from16 v2, p15

    .line 393
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    move-object/from16 v2, p16

    .line 394
    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPaddings:Ljava/util/List;

    move/from16 v2, p14

    .line 395
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    .line 396
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->getPoppanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    .line 397
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "window"

    .line 398
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    const/16 v3, 0x33

    .line 399
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x3

    .line 400
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0xa8

    .line 401
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 406
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    .line 420
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    .line 421
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundListener:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 472
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->initWindowParamsAndBackground()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mType:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->listener:Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->configTouch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Landroid/graphics/Region;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mTouchRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->handleHide(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/app/XPopPanel$TN;Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->setListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->holdPanel()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->handleShow()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    return-object p0
.end method

.method private configTouch()V
    .locals 2

    .line 511
    new-instance v0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ReflectionUtils;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;)V

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->getListener()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/ReflectionUtils;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->setTouchRegion(Landroid/graphics/Region;)V

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getWindowBound()Landroid/graphics/Rect;
    .locals 3

    .line 501
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "physical"

    .line 502
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 503
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private handleHide(I)V
    .locals 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHide: code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPopPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->cancelAnimation()V

    .line 587
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "handleHide: mWM.removeView"

    .line 588
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 591
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "handleHide: mBackgroundLayout is not attached to window"

    .line 592
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    .line 595
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->notifyHide(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)Z

    return-void
.end method

.method private handleShow()V
    .locals 4

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1700(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;I)Landroid/graphics/Point;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 562
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1800(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 570
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    const-string v0, "XPopPanel"

    const-string v1, "handleShow : mWM.addView"

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHide:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private holdPanel()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private initWindowParamsAndBackground()V
    .locals 3

    .line 476
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    .line 479
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    .line 482
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleEnable:Z

    if-eqz v0, :cond_3

    .line 483
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    .line 486
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getWindowType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 492
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getWindowBound()Landroid/graphics/Rect;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 494
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 495
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 496
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->setBackgroundLayout(Landroid/view/View;)V

    return-void
.end method

.method private setBackgroundLayout(Landroid/view/View;)V
    .locals 13

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    .line 531
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 535
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 537
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBg:I

    iget-boolean v7, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mClickable:Z

    iget v8, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mType:I

    iget-object v9, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    iget-object v10, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPaddings:Ljava/util/List;

    iget-object v11, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v12, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;-><init>(Landroid/content/Context;IZILcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;Ljava/util/List;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    .line 538
    iget v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iget v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    iget v7, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    iget v8, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    iget-boolean v9, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleEnable:Z

    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1600(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IIIIZ)V

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundListener:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addListener(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;)V

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setPivotX(F)V

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setPivotY(F)V

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setClipToOutline(Z)V

    :cond_2
    if-eqz p1, :cond_4

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v0, "XPopPanel"

    const-string v1, "remove child"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 552
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_poppanel_default_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addView(Landroid/view/View;)V

    .line 555
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->listener:Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWindowState()Z
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public moveToPosition(IZ)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1900(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IZ)V

    :cond_0
    return-void
.end method

.method public onHidePopPanel()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->setCode(I)V

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowPopPanel()V
    .locals 2

    const-string v0, "XPopPanel"

    const-string v1, "onShowPopPanel"

    .line 656
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reHidePanel()V
    .locals 4

    .line 603
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public removeItemView()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 642
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public resetItemView(Landroid/view/View;)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->removeItemView()V

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz v0, :cond_0

    .line 633
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    .line 634
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    return-void
.end method
