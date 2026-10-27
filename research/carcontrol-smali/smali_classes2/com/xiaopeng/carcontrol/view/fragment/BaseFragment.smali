.class public abstract Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/fragment/ILoadingFragment;
.implements Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;


# static fields
.field private static final DIALOG_TITLE_DIRTY:Ljava/lang/String; = "\n"

.field protected static final LOADING_DURATION_ANIM:J = 0x1f4L


# instance fields
.field private mConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field protected mContext:Landroid/content/Context;

.field private final mElementDirectRunnable:Ljava/lang/Runnable;

.field protected mFadeInAnim:Landroid/view/animation/AlphaAnimation;

.field private final mHideLoadingRunnable:Ljava/lang/Runnable;

.field private final mInitCdl:Ljava/util/concurrent/CountDownLatch;

.field private mIsNeedFreshUiNext:Z

.field private volatile mIsVuiSceneCreated:Z

.field protected volatile mPreloadLayout:Landroid/view/View;

.field private final mShowLoadingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsNeedFreshUiNext:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    .line 73
    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$AjjZalAl78NQJmg1Z9njlhuMVSM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$AjjZalAl78NQJmg1Z9njlhuMVSM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mShowLoadingRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$UYPauduDYQX7Y1SpLk2hHTVJDG0;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$UYPauduDYQX7Y1SpLk2hHTVJDG0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mHideLoadingRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 78
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsVuiSceneCreated:Z

    .line 607
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$zRj6ZWNVvgmZc51koqcIGFEqt1E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$zRj6ZWNVvgmZc51koqcIGFEqt1E;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mElementDirectRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->needPreLoadLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    .line 82
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$9UIoIDL5PtCocK1r6PzTcQIutyY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$9UIoIDL5PtCocK1r6PzTcQIutyY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static getPositiveBtnText(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positiveBtnText",
            "delayTimeInSecond"
        }
    .end annotation

    .line 320
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%1s(%2ds)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleStr(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleId"
        }
    .end annotation

    .line 312
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "\n"

    .line 314
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
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

    .line 650
    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 652
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$showCustomConfirmDialog$4(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "timer",
            "dialog"
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic lambda$showCustomConfirmDialog$5(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "timer",
            "dialog"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method static synthetic lambda$showDialog$3(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "onDismissListener",
            "dialog"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method private preLoadLayout()Landroid/view/View;
    .locals 4

    .line 494
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "preLoadLayout activity is null"

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getPreLoadLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected static updateXSegment(Lcom/xiaopeng/xui/widget/XSegmented;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabLayout",
            "index"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSegmented;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(IZ)V

    :cond_0
    return-void
.end method

.method protected static updateXTabLayout(Lcom/xiaopeng/xui/widget/XTabLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tabLayout",
            "index"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XTabLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->selectTab(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final addScene(Lcom/xiaopeng/carcontrol/view/scene/AbstractScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

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

    .line 658
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", value="

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

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

    .line 663
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 665
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 667
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

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

    .line 669
    :goto_0
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    return-void

    .line 659
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

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

    return-void
.end method

.method protected dismissDialog()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    :cond_0
    return-void
.end method

.method public dispatchElementDirect()V
    .locals 1

    .line 585
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$8ht1jWNl1rkRwfmn60b-I8oAz80;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$8ht1jWNl1rkRwfmn60b-I8oAz80;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final findViewById(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "viewId",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->findViewById(Landroid/view/View;ILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final findViewById(Landroid/view/View;ILandroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "viewId",
            "listener",
            "show"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Landroid/view/View$OnClickListener;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 123
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_1

    .line 125
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getListItemIdx(Landroid/content/Intent;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method protected getLoadingDurationAnim()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected getPreLoadLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getResourcesById()Landroid/content/res/Resources;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getStringById(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 703
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final varargs getStringById(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resId",
            "formatArgs"
        }
    .end annotation

    .line 707
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object p1

    return-object p1
.end method

.method protected getViewModelSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object p1

    return-object p1
.end method

.method protected handleElementDirect()V
    .locals 9

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "handleElementDirect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->dismissDialog()V

    .line 614
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 615
    invoke-static {}, Lcom/xiaopeng/carcontrol/direct/ElementDirectManager;->getElementDirect()Lcom/xiaopeng/carcontrol/direct/IElementDirect;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isListFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 621
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getListItemIdx(Landroid/content/Intent;)I

    move-result v5

    move-object v1, v7

    move-object v2, v0

    move-object v6, p0

    .line 620
    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showElementItemViewForList(Landroid/content/Intent;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;ILcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v1

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-interface {v7, v0, v1, v2, p0}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showElementItemView(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v1

    :goto_0
    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "element direct isElement true"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isListFragment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->supportSecondPageForElementDirect()[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 635
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getListItemIdx(Landroid/content/Intent;)I

    move-result v5

    move-object v1, v7

    move-object v2, v0

    move-object v6, p0

    .line 634
    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showSecondPageDirectForList(Landroid/content/Intent;[Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;ILcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v0

    goto :goto_1

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->supportSecondPageForElementDirect()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1, p0}, Lcom/xiaopeng/carcontrol/direct/IElementDirect;->showSecondPageDirect(Landroid/content/Intent;[Ljava/lang/String;Lcom/xiaopeng/carcontrol/direct/OnPageDirectShowListener;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "element direct isSecondPage true"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public hideLoading()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/IActivityControl;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mHideLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected initAnimations()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLoadingDurationAnim()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method protected initViewModels()V
    .locals 0

    return-void
.end method

.method protected initViews()V
    .locals 0

    return-void
.end method

.method protected final isFragmentLegal()Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isGuiInited()Z
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isListFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final isNeedFreshUI()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsNeedFreshUiNext:Z

    return v0
.end method

.method public synthetic lambda$dispatchElementDirect$12$BaseFragment()V
    .locals 3

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 591
    :goto_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$6ZjMwICYuQEt55cibqFbpGALY40;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$6ZjMwICYuQEt55cibqFbpGALY40;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic lambda$new$0$BaseFragment()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/xiaopeng/carcontrol/view/fragment/IActivityControl;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/fragment/IActivityControl;->showLoading()V

    return-void
.end method

.method public synthetic lambda$new$1$BaseFragment()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/xiaopeng/carcontrol/view/fragment/IActivityControl;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/fragment/IActivityControl;->hideLoading()V

    return-void
.end method

.method public synthetic lambda$new$13$BaseFragment()V
    .locals 0

    .line 607
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->handleElementDirect()V

    return-void
.end method

.method public synthetic lambda$new$2$BaseFragment()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->initViewModels()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic lambda$null$10$BaseFragment()V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->needPreLoadLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mPreloadLayout:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showLayout(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsVuiSceneCreated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsDialog:Z

    if-nez v0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->initVuiScene()V

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsVuiSceneCreated:Z

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->resumeViews()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$null$6$BaseFragment()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mPreloadLayout:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showLayout(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->initViews()V

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onGuiInitEnd()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViews failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$8$BaseFragment()V
    .locals 3

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->initViews()V

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onGuiInitEnd()V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViews failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onAttach$7$BaseFragment()V
    .locals 1

    .line 369
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->preLoadLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mPreloadLayout:Landroid/view/View;

    .line 370
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$57zBceaVt8GE60IlNOEjaKohbL8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$57zBceaVt8GE60IlNOEjaKohbL8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onResume$11$BaseFragment()V
    .locals 3

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 423
    :goto_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$UQdJsiGfYaODAuGOUYsRdrH0AP4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$UQdJsiGfYaODAuGOUYsRdrH0AP4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mElementDirectRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$9$BaseFragment()V
    .locals 1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 396
    :goto_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$5EyCi7yJKaxUT2lOnP7XGj1YjmY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$5EyCi7yJKaxUT2lOnP7XGj1YjmY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public needLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needPreLoadLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 364
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onAttach(Landroid/content/Context;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, " onAttach"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    .line 367
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->needPreLoadLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    new-instance p1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$O361Y_La_ErN2a7k9wS06aF2cXk;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$O361Y_La_ErN2a7k9wS06aF2cXk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 353
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, " onCreate"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 457
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onDestroyView()V

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, " onDestroyView"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method protected onGuiInitEnd()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onGuiInitEnd"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 478
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onHiddenChanged(Z)V

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onHiddenChanged hidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isNeedFreshUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isNeedFreshUI()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->isNeedFreshUI()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->refreshUi()V

    :cond_0
    return-void
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

.method public onPause()V
    .locals 2

    .line 441
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onPause()V

    const/4 v0, 0x1

    .line 442
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mElementDirectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 416
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onResume()V

    .line 417
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$G9UKqgz41YJEQlgGnZ0hC1bSeTg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$G9UKqgz41YJEQlgGnZ0hC1bSeTg;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 410
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onStart()V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, " onStart"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 447
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onStop()V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, " onStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mInitCdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 385
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 386
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    const-string p2, " onViewCreated"

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->needPreLoadLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mPreloadLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showLayout(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    .line 390
    :cond_0
    new-instance p1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$uyJdE9OBLGBZSzEB1_BfWSEhiUY;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$uyJdE9OBLGBZSzEB1_BfWSEhiUY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected refreshUi()V
    .locals 0

    return-void
.end method

.method public removeObservers(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    .line 490
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method protected removeVuiProps(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "prop"
        }
    .end annotation

    .line 673
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeVuiProps failed with prop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 677
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getVuiPropsJson(Lcom/xiaopeng/xui/vui/VuiView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 678
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 679
    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected resumeViews()V
    .locals 0

    return-void
.end method

.method protected final setFreshUINext(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fresh"
        }
    .end annotation

    .line 341
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mIsNeedFreshUiNext:Z

    return-void
.end method

.method public setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
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

    .line 486
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected showCustomConfirmDialog(ILjava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;IIIIILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleResId",
            "negativeBtnText",
            "negativeListener",
            "positiveBtnText",
            "positiveListener",
            "confirmPic1ResId",
            "confirmText1ResId",
            "confirmPic2ResId",
            "confirmText2ResId",
            "delayTimeInSecond",
            "sceneId"
        }
    .end annotation

    move-object v12, p0

    .line 228
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getTitleStr(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p7

    .line 231
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getStringById(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getStringById(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 228
    invoke-virtual/range {v0 .. v11}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showCustomConfirmDialog(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected showCustomConfirmDialog(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "negativeBtnText",
            "negativeListener",
            "positiveBtnText",
            "positiveListener",
            "confirmPic1ResId",
            "confirmText1",
            "confirmPic2ResId",
            "confirmText2",
            "delayTimeInSecond",
            "sceneId"
        }
    .end annotation

    move-object v7, p4

    move/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 241
    new-instance v3, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView_Large:I

    invoke-direct {v3, v4, v5}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    move-object v4, p1

    .line 242
    invoke-virtual {v3, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    .line 243
    invoke-virtual {v3, p2, p3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    .line 244
    invoke-static {p4, v2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getPositiveBtnText(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v5, p5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v3

    const/4 v4, 0x0

    .line 245
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v9

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$layout;->layout_xpilot_info_dialog_view:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 249
    sget v5, Lcom/xiaopeng/carcontrolmodule/R$id;->help_pic_1:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    :goto_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->help_text_1:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v5, p7

    .line 261
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->help_pic_2:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 266
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 268
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    :goto_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->help_text_2:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 275
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v1, p9

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_3
    invoke-virtual {v9, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    const/16 v0, 0x800

    .line 280
    invoke-virtual {v9, v0}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 281
    invoke-virtual {v9}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->x_dialog_button1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    .line 282
    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 284
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    aput-object v0, v5, v4

    invoke-virtual {v1, v3, v5}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->setVuiLabelUnSupportText(Landroid/content/Context;[Landroid/view/View;)V

    .line 286
    new-instance v10, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;

    int-to-long v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v10

    move-object v1, p0

    move-object v6, v9

    move-object v7, p4

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;JJLcom/xiaopeng/xui/app/XDialog;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v9}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$PsPUlik9YhAIiVJk_Bl_sRAU97s;

    invoke-direct {v1, v10}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$PsPUlik9YhAIiVJk_Bl_sRAU97s;-><init>(Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 300
    invoke-virtual {v9}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$SOxm4IDmTT0YdASoQvDtlYLH98g;

    invoke-direct {v1, v10}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$SOxm4IDmTT0YdASoQvDtlYLH98g;-><init>(Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 301
    invoke-virtual {v9}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 302
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p11

    invoke-virtual {v0, v9, v1, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v9}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/Window;->setElevation(F)V

    :cond_4
    return-void
.end method

.method protected showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "messageId",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 166
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;I)V

    return-void
.end method

.method protected showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "messageId",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "onDismissListener"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 182
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;I)V

    return-void
.end method

.method protected showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "messageId",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "onDismissListener",
            "sceneId",
            "style"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->dismissDialog()V

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    if-lez p9, :cond_0

    .line 192
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p9}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p9

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$style;->x_dialog_style:I

    invoke-direct {v0, p9, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 196
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getTitleStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 197
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 198
    invoke-virtual {p1, p3, p4}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 199
    invoke-virtual {p1, p5, p6}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    const/16 p1, 0x800

    .line 200
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 201
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p7, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$id;->x_dialog_button1:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XButton;

    .line 207
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 208
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$lSBPucLxL1sk4r7TmeZhQwrTFgs;

    invoke-direct {p2, p7}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$lSBPucLxL1sk4r7TmeZhQwrTFgs;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 214
    :cond_2
    :goto_1
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 215
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p8}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 218
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    :cond_4
    return-void
.end method

.method protected showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "messageId",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "sceneId"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    .line 176
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;I)V

    return-void
.end method

.method protected showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "titleId",
            "messageId",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "sceneId",
            "style"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 171
    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showDialog(IILjava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;I)V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "sceneId"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p4, p5}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 157
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 158
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p6}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_1
    return-void
.end method

.method protected showLayout(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    .line 545
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->showLayout(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method protected showLayout(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "hasAnim"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLayout: parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view.getParent()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 551
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 554
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->initAnimations()V

    .line 557
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/xiaopeng/carcontrol/view/fragment/IActivityControl;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->mShowLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
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

    if-eqz p2, :cond_0

    .line 684
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    .line 685
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 686
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->getContext()Landroid/content/Context;

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

    .line 691
    instance-of v0, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected vuiFeedbackClickForXpilot(ILandroid/view/View;)V
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

    .line 697
    instance-of v0, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
