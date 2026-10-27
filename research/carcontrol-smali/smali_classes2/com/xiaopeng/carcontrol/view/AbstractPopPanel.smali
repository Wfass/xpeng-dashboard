.class public abstract Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;
.super Ljava/lang/Object;
.source "AbstractPopPanel.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;


# static fields
.field private static final ELEMENT_DIRECT_EVENT:I = 0x5

.field private static final INIT_PANEL_EVENT:I = 0x2

.field private static final INIT_VIEW_EVENT:I = 0x3

.field protected static final SCROLL_TO_TOP:Ljava/lang/String; = "scroll_to_top"

.field private static final SHOW_EVENT:I = 0x4


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private isShow:Z

.field private isVmInit:Z

.field protected mContext:Landroid/content/Context;

.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mDirectIntent:Landroid/content/Intent;

.field private final mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field protected final mIsVuiEnabled:Z

.field private final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected mNeedPlayTts:Z

.field protected mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

.field private mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

.field private mRootView:Landroid/view/View;

.field private mRootViewHigh:I

.field private mRootViewWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 78
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 79
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mNeedPlayTts:Z

    .line 81
    new-instance v0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$vsL3l1M8pL6WsLSXGudj4r_G0Mg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$vsL3l1M8pL6WsLSXGudj4r_G0Mg;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mDirectIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isVmInit:Z

    .line 85
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isShow:Z

    .line 92
    new-instance v2, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$1;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mMainHandler:Landroid/os/Handler;

    .line 116
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->shouldDisableVui()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    .line 118
    new-instance v0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$pYNw5Q6xVBuG-G2iL18hwHDqJsk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$pYNw5Q6xVBuG-G2iL18hwHDqJsk;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->needInitVm()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$PIbY1vcCK14d--CyG0cDguzYp7c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$PIbY1vcCK14d--CyG0cDguzYp7c;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    const-wide/16 v2, 0x32

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->initPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->handleShowEvent(II)V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method private dp(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    int-to-float p1, p1

    .line 243
    invoke-static {}, Lcom/xiaopeng/xvs/xid/utils/ResourceUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 444
    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 446
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p1
.end method

.method private handleElementDirectEvent()V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mDirectIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 484
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mDirectIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showElementItemView(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 490
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mDirectIntent:Landroid/content/Intent;

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect isElement"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mDirectIntent:Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->supportSecondPageForElementDirect()[Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-interface {v0, v1, v3, p0}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showSecondPageDirect(Landroid/content/Intent;[Ljava/lang/String;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mDirectIntent:Landroid/content/Intent;

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect isSecondPage"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isPanelSupportScroll()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "scroll_to_top"

    .line 505
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onPageDirectShow(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect not Element and SecondPage, just scroll the content to top"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect mDirectData is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$3;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :goto_0
    return-void
.end method

.method private handleShowEvent(II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowType",
            "mRegionId"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isEqulPreStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    if-nez v0, :cond_3

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel;->setOnStateListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->removeItemView()V

    .line 259
    :cond_1
    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    .line 260
    new-instance v0, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 261
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setContext(Landroid/content/Context;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setRegionId(Ljava/lang/String;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    move-result-object v0

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setDurationLength(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setType(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setClickable(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getAutoHide()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setAutoHide(Z)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getAutoHide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getDurationLength()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setDurationLength(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootViewWidth:I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootViewHigh:I

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRootView  Width\uff1aHigh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootViewWidth:I

    invoke-direct {p0, v4}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootViewHigh:I

    invoke-direct {p0, v4}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "   mRegionId = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootViewWidth:I

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setWidth(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootViewHigh:I

    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setHeight(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setItemView(Landroid/view/View;)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->pop_panel_bg:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->setBackground(I)Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;->create()Lcom/xiaopeng/xui/app/XPopPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    .line 280
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->initPanelListener()V

    .line 281
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 287
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz p1, :cond_3

    .line 288
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getRootView()Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    const/4 v10, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v10}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initScene(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "popPanel show success !isEqulPreStatus() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isEqulPreStatus()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "   (mPanel == null):"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XPopPanel;->show()V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onRegisterLiveData()V

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onRefresh()V

    return-void
.end method

.method private initPanel()V
    .locals 4

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isVmInit:Z

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onCreatePanelBuilder()Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanelBuilder:Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const-string v1, "create PanelBuilder failed, can not init view"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x2

    .line 160
    new-instance v1, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$B43iMjvPhxM2r40Iy8CsJsUwMR4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$B43iMjvPhxM2r40Iy8CsJsUwMR4;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method private initPanelListener()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel$2;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel;->setOnStateListener(Lcom/xiaopeng/xui/app/XPopPanel$PopPanelInterface;)V

    return-void
.end method


# virtual methods
.method protected addVuiProp(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "prop",
            "value"
        }
    .end annotation

    .line 427
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_2

    .line 428
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", value="

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVuiProps prop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 435
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVuiProps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " failed :"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 439
    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 429
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVuiProps failed with prop="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->cancel()V

    :cond_0
    return-void
.end method

.method protected final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getAutoHide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBuildViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDurationLength()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isEqulPreStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isPanelSupportScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShow()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isShow:Z

    return v0
.end method

.method public isVuiAction(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public isVuiAction(Landroid/view/View;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "reset"
        }
    .end annotation

    .line 470
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public keepPanelShow()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mPanel:Lcom/xiaopeng/xui/app/XPopPanel;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->handleUserEvent()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initPanel$4$AbstractPopPanel()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onCreateView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic lambda$new$0$AbstractPopPanel(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "type"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateScene(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public synthetic lambda$new$2$AbstractPopPanel()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$AWjGqTmtGK2T2TfOY9NHzFOb0sY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$AWjGqTmtGK2T2TfOY9NHzFOb0sY;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic lambda$new$3$AbstractPopPanel()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isVmInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onInitViewModel()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$1$AbstractPopPanel(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "source",
            "event"
        }
    .end annotation

    .line 119
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "cancelPendingInputEvents"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$show$5$AbstractPopPanel(ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "playTts",
            "windowType",
            "mRegionId"
        }
    .end annotation

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->onInterceptShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mNeedPlayTts:Z

    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    .line 221
    iput v0, p1, Landroid/os/Message;->what:I

    .line 222
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 223
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 224
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method protected abstract needInitVm()Z
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "iVuiElementBuilder"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract onCreatePanelBuilder()Lcom/xiaopeng/xui/app/XPopPanel$XPopPanelBuilder;
.end method

.method protected abstract onCreateView()Landroid/view/View;
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method protected abstract onInitView()V
.end method

.method protected onInitViewModel()V
    .locals 0

    return-void
.end method

.method protected onInterceptShow()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->needInitVm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->isVmInit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    .line 404
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->close_btn:I

    if-eq p2, v0, :cond_0

    .line 406
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onKey(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onPageDirectShow(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    return-void
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 0

    return-void
.end method

.method protected onShow()V
    .locals 0

    return-void
.end method

.method protected onShowTimeUpdate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    return-void
.end method

.method protected onViewAttach()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    .line 397
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 398
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected final setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 391
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected shouldDisableVui()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final show(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowType",
            "mRegionId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->show(IZI)V

    return-void
.end method

.method public final show(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowType",
            "playTts",
            "mRegionId"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;-><init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;ZII)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected supportSecondPageForElementDirect()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected vuiFeedback(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "view"
        }
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 453
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mContext:Landroid/content/Context;

    .line 454
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_0
    return-void
.end method

.method protected vuiFeedbackClick(ILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "view"
        }
    .end annotation

    .line 460
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
