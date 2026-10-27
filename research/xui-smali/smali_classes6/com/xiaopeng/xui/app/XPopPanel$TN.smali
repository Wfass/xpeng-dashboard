.class Lcom/xiaopeng/xui/app/XPopPanel$TN;
.super Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;
.source "XPopPanel.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

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
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultWidth"    # I
    .param p3, "defaultHeight"    # I
    .param p4, "toggleWidth"    # I
    .param p5, "toggleHeight"    # I
    .param p6, "toggleEnable"    # Z
    .param p7, "duration"    # I
    .param p8, "type"    # I
    .param p9, "bg"    # I
    .param p10, "clickable"    # Z
    .param p11, "itemView"    # Landroid/view/View;
    .param p12, "autoHeight"    # Z
    .param p13, "autoHide"    # Z
    .param p14, "screenId"    # I
    .param p15, "position"    # I
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

    .line 375
    .local p16, "paddings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;-><init>()V

    .line 370
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    .line 374
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mTouchRegion:Landroid/graphics/Region;

    .line 376
    move/from16 v2, p8

    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mType:I

    .line 377
    move/from16 v3, p7

    iput v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDuration:I

    .line 378
    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    .line 379
    move/from16 v4, p2

    iput v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    .line 380
    move/from16 v5, p3

    iput v5, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    .line 381
    move/from16 v6, p4

    iput v6, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    .line 382
    move/from16 v7, p5

    iput v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    .line 383
    move/from16 v8, p6

    iput-boolean v8, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleEnable:Z

    .line 384
    move/from16 v9, p9

    iput v9, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBg:I

    .line 385
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mClickable:Z

    .line 386
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    .line 387
    move/from16 v12, p12

    iput-boolean v12, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHeight:Z

    .line 388
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHide:Z

    .line 389
    move/from16 v14, p15

    iput v14, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    .line 390
    move-object/from16 v15, p16

    iput-object v15, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPaddings:Ljava/util/List;

    .line 391
    move/from16 v2, p14

    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    .line 392
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->getPoppanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    .line 393
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 394
    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    .line 395
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 396
    iget-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 397
    iget-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xa8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 400
    iget-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 402
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    .line 416
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    .line 417
    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN$2;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    iput-object v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundListener:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->initWindowParamsAndBackground()V

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->listener:Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->configTouch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mTouchRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/app/XPopPanel$TN;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .param p1, "x1"    # I

    .line 343
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->handleHide(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/app/XPopPanel$TN;Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .param p1, "x1"    # Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    .line 343
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->setListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->holdPanel()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->handleShow()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    return-object v0
.end method

.method private configTouch()V
    .locals 2

    .line 506
    new-instance v0, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    invoke-direct {v0}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ReflectionUtils;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;)V

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->getListener()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/ReflectionUtils;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mInvocationHandler:Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->setTouchRegion(Landroid/graphics/Region;)V

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 521
    return-void
.end method

.method private getWindowBound()Landroid/graphics/Rect;
    .locals 4

    .line 496
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "physical"

    .line 497
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 498
    .local v0, "builder":Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private handleHide(I)V
    .locals 3
    .param p1, "code"    # I

    .line 576
    const-string v0, "XPopPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHide: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->cancelAnimation()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    const-string v0, "XPopPanel"

    const-string v2, "handleHide: mWM.removeView"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 587
    const-string v0, "XPopPanel"

    const-string v2, "handleHide: mBackgroundLayout is not attached to window"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    .line 590
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->notifyHide(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)Z

    .line 591
    return-void
.end method

.method private handleShow()V
    .locals 5

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1700(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;I)Landroid/graphics/Point;

    move-result-object v0

    .line 556
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 557
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 558
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1800(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 560
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 563
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mNotAttachNeedHide:Z

    .line 567
    const-string v1, "XPopPanel"

    const-string v2, "handleShow : mWM.addView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHide:Z

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 573
    .end local v0    # "point":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method private holdPanel()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    return-void
.end method

.method private initWindowParamsAndBackground()V
    .locals 3

    .line 471
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    .line 474
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    .line 477
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleEnable:Z

    if-eqz v0, :cond_3

    .line 478
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    .line 481
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getWindowType()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mScreenId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 487
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->getWindowBound()Landroid/graphics/Rect;

    move-result-object v0

    .line 488
    .local v0, "windowBound":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 489
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 490
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 491
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 492
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->setBackgroundLayout(Landroid/view/View;)V

    .line 493
    return-void
.end method

.method private setBackgroundLayout(Landroid/view/View;)V
    .locals 21
    .param p1, "itemView"    # Landroid/view/View;

    move-object/from16 v0, p0

    .line 524
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 525
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    .line 526
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 528
    :cond_0
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-nez v2, :cond_2

    .line 529
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_1

    .line 530
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iget v5, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 532
    :cond_1
    new-instance v2, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBg:I

    iget-boolean v9, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mClickable:Z

    iget v10, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mType:I

    iget-object v11, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mRecord:Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    iget-object v12, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPaddings:Ljava/util/List;

    iget-object v13, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;-><init>(Landroid/content/Context;IZILcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;Ljava/util/List;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    .line 533
    iget-object v15, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultWidth:I

    iget v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDefaultHeight:I

    iget v5, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleWidth:I

    iget v6, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleHeight:I

    iget-boolean v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mToggleEnable:Z

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-static/range {v15 .. v20}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1600(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IIIIZ)V

    .line 534
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundListener:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addListener(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;)V

    .line 535
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setPivotX(F)V

    .line 536
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setPivotY(F)V

    .line 537
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setClipToOutline(Z)V

    .line 539
    :cond_2
    if-eqz v1, :cond_4

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 542
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 543
    const-string v3, "XPopPanel"

    const-string v4, "remove child"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 547
    :cond_4
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_poppanel_default_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 548
    .end local p1    # "itemView":Landroid/view/View;
    .local v1, "itemView":Landroid/view/View;
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addView(Landroid/view/View;)V

    .line 550
    :goto_0
    iget-object v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    return-void
.end method

.method private setListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    .line 502
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->listener:Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;

    .line 503
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWindowState()Z
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 613
    :cond_1
    return v1
.end method

.method public moveToPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "needToggle"    # Z

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$1900(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IZ)V

    .line 607
    :cond_0
    return-void
.end method

.method public onHidePopPanel()V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;->setCode(I)V

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHideRunnable:Lcom/xiaopeng/xui/app/XPopPanel$TN$HideRunnable;

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public onShowPopPanel()V
    .locals 2

    .line 651
    const-string v0, "XPopPanel"

    const-string v1, "onShowPopPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 653
    return-void
.end method

.method public reHidePanel()V
    .locals 4

    .line 598
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 601
    :cond_0
    return-void
.end method

.method public removeItemView()V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 637
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 639
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    .line 641
    :cond_1
    return-void
.end method

.method public resetItemView(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 626
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->removeItemView()V

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    if-eqz v0, :cond_0

    .line 628
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mBackgroundLayout:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->addView(Landroid/view/View;)V

    .line 631
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 622
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN;->mPosition:I

    .line 623
    return-void
.end method
