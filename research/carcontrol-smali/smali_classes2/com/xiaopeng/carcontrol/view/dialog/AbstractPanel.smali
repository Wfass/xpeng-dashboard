.class public abstract Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;
.super Ljava/lang/Object;
.source "AbstractPanel.java"

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

.field protected mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mDirectIntent:Landroid/content/Intent;

.field private final mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field protected final mIsVuiEnabled:Z

.field private final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected mNeedPlayTts:Z

.field private mPanel:Landroid/app/Dialog;

.field private mRootView:Landroid/view/View;

.field protected mShouldVuiInitScene:Z


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mShouldVuiInitScene:Z

    .line 76
    new-instance v1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 80
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 81
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mNeedPlayTts:Z

    .line 83
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$JW-epoXnoMiPmmzAmD8zYGGOO0c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$JW-epoXnoMiPmmzAmD8zYGGOO0c;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mDirectIntent:Landroid/content/Intent;

    .line 86
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isVmInit:Z

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isShow:Z

    .line 91
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$1;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mMainHandler:Landroid/os/Handler;

    .line 115
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->shouldDisableVui()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    .line 117
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mShouldVuiInitScene:Z

    .line 118
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$1baoyWlsxRejtm52vYK7yQm5vq0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$1baoyWlsxRejtm52vYK7yQm5vq0;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->needInitVm()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$37M5Y5JUxNs-qGKUR8t4a-ruW-E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$37M5Y5JUxNs-qGKUR8t4a-ruW-E;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    const-wide/16 v3, 0x32

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->initPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->handleShowEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->handleElementDirectEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)Landroid/app/Dialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isShow:Z

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

    .line 405
    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 407
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p1
.end method

.method private handleElementDirectEvent()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mDirectIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 445
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 448
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mDirectIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mRootView:Landroid/view/View;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showElementItemView(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 451
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mDirectIntent:Landroid/content/Intent;

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect isElement"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mDirectIntent:Landroid/content/Intent;

    .line 457
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->supportSecondPageForElementDirect()[Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-interface {v0, v1, v3, p0}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showSecondPageDirect(Landroid/content/Intent;[Ljava/lang/String;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mDirectIntent:Landroid/content/Intent;

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect isSecondPage"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isPanelSupportScroll()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "scroll_to_top"

    .line 466
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onPageDirectShow(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect not Element and SecondPage, just scroll the content to top"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

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

    .line 336
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$3;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

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

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :goto_0
    return-void
.end method

.method private handleShowEvent(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowType"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->setWindowType(I)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onRegisterLiveData()V

    .line 262
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v0, "onRefresh"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onRefresh()V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->show()V

    .line 274
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mShouldVuiInitScene:Z

    if-eqz p1, :cond_2

    .line 275
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->getRootView()Landroid/view/View;

    move-result-object v6

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initScene(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V

    .line 277
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mShouldVuiInitScene:Z

    :cond_2
    return-void
.end method

.method private initPanel()V
    .locals 4

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isVmInit:Z

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onCreatePanel()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v1, "create Panel failed, can not init view"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->handleLifecycleChanged(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x2

    .line 160
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$dgJLb6E7QGbie00D__niYqEFJ5U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$dgJLb6E7QGbie00D__niYqEFJ5U;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method private initPanelListener()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$M0k5rvShRZ0DJcD6rTCBywf-Z5Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$M0k5rvShRZ0DJcD6rTCBywf-Z5Y;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$T3hNTnngL3LhIytasIGtBvE6w08;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$T3hNTnngL3LhIytasIGtBvE6w08;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$wZmnQ6wsAjRfR0rPyeB4DLVJpZc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$wZmnQ6wsAjRfR0rPyeB4DLVJpZc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnAttachStateChangeListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method private setWindowType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowType"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setSystemDialog(I)V

    :cond_0
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

    .line 388
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_2

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", value="

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

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

    .line 394
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 396
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 398
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

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

    .line 400
    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 390
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

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

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

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

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
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

.method protected abstract getLayoutId()I
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isPanelSupportScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShow()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isShow:Z

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

    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isVuiAction(Landroid/view/View;Z)Z

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

    .line 431
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

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

.method public synthetic lambda$initPanel$4$AbstractPanel()V
    .locals 3

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->initPanelListener()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onCreateView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mRootView:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic lambda$initPanelListener$5$AbstractPanel(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "keyCode",
            "event"
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$initPanelListener$6$AbstractPanel(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v0, "onShow"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isShow:Z

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onShow()V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public synthetic lambda$initPanelListener$7$AbstractPanel(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const-string v0, "onDismiss"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onDismiss()V

    return-void
.end method

.method public synthetic lambda$new$0$AbstractPanel(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
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

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateScene(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public synthetic lambda$new$2$AbstractPanel()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$5tYbrTWflEx2YgvVms6camz8xcw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$5tYbrTWflEx2YgvVms6camz8xcw;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic lambda$new$3$AbstractPanel()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isVmInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onInitViewModel()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$1$AbstractPanel(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
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
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "cancelPendingInputEvents"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$show$8$AbstractPanel(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "playTts",
            "windowType"
        }
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->onInterceptShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mNeedPlayTts:Z

    .line 232
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    .line 233
    iput v0, p1, Landroid/os/Message;->what:I

    .line 234
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 235
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception p1

    .line 223
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

.method protected abstract onCreatePanel()Landroid/app/Dialog;
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

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->needInitVm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->isVmInit:Z

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

    .line 365
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->close_btn:I

    if-eq p2, v0, :cond_0

    .line 367
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

.method protected onViewAttach()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

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

    .line 358
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 359
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

    .line 352
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method protected shouldDisableVui()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final show(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowType"
        }
    .end annotation

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->show(IZ)V

    return-void
.end method

.method public final show(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowType",
            "playTts"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mPanel:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$AbstractPanel$I1OggzGvl8eRyYPzTqFzpUmIOfE;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;ZI)V

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

    .line 413
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 414
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mContext:Landroid/content/Context;

    .line 415
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mContext:Landroid/content/Context;

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

    .line 421
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->mIsVuiEnabled:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
