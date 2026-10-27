.class public Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;
.super Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;
.source "LluDanceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LLU_DANCE_PLAY_MODE_STATISTIC_CODE_DIRECTLY:Ljava/lang/String; = "1"

.field private static final LLU_DANCE_PLAY_MODE_STATISTIC_CODE_ORDER:Ljava/lang/String; = "2"

.field private static final LLU_SHOW_SCROLL_BAR_LIMIT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "LluDanceMainFragment"

.field private static final TAG_DANCE_PLAY_FRAGMENT:Ljava/lang/String; = "tag_dance_play_fragment"


# instance fields
.field private mCurrentIndex:I

.field private mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

.field private mDanceBreakObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDanceStopFromFrameworkObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultSelectedPosition:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIgEventObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

.field private mLluDanceAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

.field private mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

.field private mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

.field private mLluDanceStateLayout:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

.field private mLluDanceViewDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mOrderInfoTimeLeft:Lcom/xiaopeng/xui/widget/XTextView;

.field private mOrderInfoTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mOrderedDanceId:Ljava/lang/String;

.field private mOrderedDanceItemIdObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderedTime:J

.field private mRequestDanceDataLoading:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

.field private mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

.field private mTimeLeftCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedDanceItemIdObserver:Landroidx/lifecycle/Observer;

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mIgEventObserver:Landroidx/lifecycle/Observer;

    .line 75
    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDefaultSelectedPosition:Landroidx/lifecycle/Observer;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentIndex:I

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->doActionByType(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoTimeLeft:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)Lcom/xiaopeng/xui/widget/XRelativeLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    return-object p0
.end method

.method private cancelTimeLeftCountDown()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mTimeLeftCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private doActionByType(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "danceViewData"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 426
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    .line 449
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "default case:"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->checkLightDanceAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 436
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "doAction start play llu video"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->startPlayLluVideo()V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->resumeDownload(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    const-string/jumbo p1, "yjk"

    const-string v0, "doAction ---> \u5f00\u59cb\u7ee7\u7eed\u4e0b\u8f7d"

    .line 442
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->pauseDownLoad(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 446
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "pauseDownload..."

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->startDownload(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->llu_download:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private executeOperationForSelectedItem()V
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getSelectedDanceViewData()Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->doActionByType(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    return-void
.end method

.method private exitPlayFragment()V
    .locals 2

    .line 375
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "exit play fragment "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private findDanceItemById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 352
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 357
    :cond_1
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "dance view data list is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelectedDanceViewData()Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;
    .locals 14

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v2, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_activity_dance_item_more_title:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    sget v3, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_activity_dance_item_more_author:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-string v4, ""

    const-string v5, "-1000"

    const-string v6, ""

    const-string v12, ""

    const-string v13, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 380
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-direct {v0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    .line 381
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    .line 382
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_data_list_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 383
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_activity_request_dance_data_loading_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mRequestDanceDataLoading:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 384
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_video_play_action_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceStateLayout:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

    .line 385
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 386
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 387
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_time_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoTimeLeft:Lcom/xiaopeng/xui/widget/XTextView;

    .line 388
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    .line 389
    sget v1, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_delete:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XButton;

    .line 390
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshOrderInfoContainer()V
    .locals 11

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->alarmUpForDance(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "order_play_dance_item_time"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 286
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "order_play_dance_item_res_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    iget-object v7, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v7}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_0

    iget-wide v7, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedTime:J

    cmp-long v1, v4, v7

    if-nez v1, :cond_0

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedDanceId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 289
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->vuiSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    new-array v9, v2, [Landroid/view/View;

    iget-object v10, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object v10, v9, v3

    invoke-virtual {v1, v7, v8, v9}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    .line 290
    invoke-direct {p0, v6}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->findDanceItemById(Ljava/lang/String;)Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v1

    .line 291
    iput-wide v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedTime:J

    .line 292
    iput-object v6, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedDanceId:Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "order_play_dance_item_title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    sget-object v1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v4, "danceItemById is null!"

    invoke-static {v1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xc

    if-le v1, v4, :cond_2

    .line 301
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 302
    sget-object v4, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v5, "title length > 12 "

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_2
    sget-object v4, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      title length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v4, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_order_info_title:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedTime:J

    invoke-static {v6, v7}, Lcom/xiaopeng/lludancemanager/LluDanceOrderTimeHelper;->getDateFormatForTimeInMills(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 307
    iget-object v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoTimeLeft:Lcom/xiaopeng/xui/widget/XTextView;

    sget v5, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_order_info_time_left:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/xiaopeng/lludancemanager/LluDanceOrderTimeHelper;->getDateFormatForTimeInMills(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->startTimeLeftCountDown(J)V

    goto :goto_1

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 312
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->vuiSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v2, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    .line 313
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->cancelTimeLeftCountDown()V

    goto :goto_1

    .line 316
    :cond_4
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "refresh order info , but still no dance list data"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private removeAlarmRequest()V
    .locals 6

    .line 500
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->cancelAlarmForDance(Landroid/content/Context;)V

    .line 501
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->cancelTimeLeftCountDown()V

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 503
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->vuiSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method private showLluDialogConfirm()V
    .locals 3

    .line 460
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getSelectedDanceViewData()Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_double_confirm_dialog_positive:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$sYwio4QUsOPDYXDRXyFGzUjr3ho;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$sYwio4QUsOPDYXDRXyFGzUjr3ho;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_double_confirm_dialog_negative:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$Jzc9JG12uT4-l4fps5Q3LVwPNLY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$Jzc9JG12uT4-l4fps5Q3LVwPNLY;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->show()V

    return-void
.end method

.method private startPlayFragment(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "danceViewData",
            "orderPlay"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->dismiss()V

    .line 366
    :cond_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start play fragment for dance view data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->setPlayingDanceViewData(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 368
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->setOrderPlay(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_activity_fragment_container:I

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    const-string v1, "tag_dance_play_fragment"

    invoke-virtual {p1, p2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 371
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getOrderedPlayItemIdData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private startPlayLluVideo()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->showLluDialogConfirm()V

    return-void
.end method

.method private startTimeLeftCountDown(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeLeft"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->cancelTimeLeftCountDown()V

    .line 329
    new-instance v6, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;JJ)V

    iput-object v6, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mTimeLeftCountDownTimer:Landroid/os/CountDownTimer;

    .line 344
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start time left count down : time left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      format time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/xiaopeng/lludancemanager/LluDanceOrderTimeHelper;->getTimeLeftFormat(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mTimeLeftCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private unRegisterLiveDataObserver()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getOrderedPlayItemIdData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedDanceItemIdObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getIgEvent()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mIgEventObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getDefaultSelectedOption()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDefaultSelectedPosition:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceBreak()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceBreakObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceStopFromFrameworkObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateBtnState(Ljava/lang/Integer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "progress"
        }
    .end annotation

    .line 520
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_data_list_recycler_view:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 524
    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceStateLayout:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->setVuiFatherElementId(Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceStateLayout:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->updateData(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 527
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set btn state state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "    progress = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    .line 175
    sget v0, Lcom/xiaopeng/lludancemanager/R$layout;->llu_dance_fragment:I

    return v0
.end method

.method protected initViewModel()V
    .locals 2

    .line 147
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLiveDataList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$fQH_O2psWh_1dPWfc6UM2UfAORM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$fQH_O2psWh_1dPWfc6UM2UfAORM;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getOrderedPlayItemIdData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedDanceItemIdObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getIgEvent()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mIgEventObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getDefaultSelectedOption()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDefaultSelectedPosition:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceBreak()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceBreakObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getLluDanceStartPlayData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceStopFromFrameworkObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getScenarioStateData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$mrgeNYSSH-kEY4Tidjex6p-tARs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$mrgeNYSSH-kEY4Tidjex6p-tARs;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected initViewModelObserver()V
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$86XBZQQaqfwUpiVwrfC2GsLwaBI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$86XBZQQaqfwUpiVwrfC2GsLwaBI;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderedDanceItemIdObserver:Landroidx/lifecycle/Observer;

    .line 107
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$sQo7Undz4YXfu1cDY1jVljSJ_qE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$sQo7Undz4YXfu1cDY1jVljSJ_qE;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mIgEventObserver:Landroidx/lifecycle/Observer;

    .line 114
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$sEd7-WBkeXggyxLSSOlRM-bUMg0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$sEd7-WBkeXggyxLSSOlRM-bUMg0;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDefaultSelectedPosition:Landroidx/lifecycle/Observer;

    .line 130
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$3sHHexMHP71X1EEDnvKXk2wA1kw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$3sHHexMHP71X1EEDnvKXk2wA1kw;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceBreakObserver:Landroidx/lifecycle/Observer;

    .line 136
    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$1dDShFsMfwDIAp_EgiioGiTZ964;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$1dDShFsMfwDIAp_EgiioGiTZ964;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceStopFromFrameworkObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public synthetic lambda$initViewModel$6$LluDanceMainFragment(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->refreshOrderInfoContainer()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mRequestDanceDataLoading:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->setList(Ljava/util/List;)V

    .line 155
    iget p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentIndex:I

    if-le p1, v0, :cond_1

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadedPercentage()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->updateBtnState(Ljava/lang/Integer;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initViewModel$7$LluDanceMainFragment(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "enter meditation , break llu."

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDancePlayFragment:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->stopDanceByMeditationMode()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initViewModelObserver$1$LluDanceMainFragment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "orderedItemId"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 94
    invoke-static {}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->checkLightDanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Karl log open time optimize ordered dance item id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 97
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->refreshOrderInfoContainer()V

    .line 99
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "Karl log open time optimize call start dance play fragment"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoTitle:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$NUMHJWQyOCyd0TLqw-jDBWWuF1A;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$NUMHJWQyOCyd0TLqw-jDBWWuF1A;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$initViewModelObserver$2$LluDanceMainFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "igOffEvent"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 109
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "dance main fragment received ig off event, removeAlarmRequestWithSwitchReset"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->refreshOrderInfoContainer()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initViewModelObserver$3$LluDanceMainFragment(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    sget-object v1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultSelectedPosition position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p1, "There is not llu data."

    .line 118
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_1

    const/4 p1, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentIndex:I

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->selected(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 127
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadedPercentage()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->updateBtnState(Ljava/lang/Integer;I)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public synthetic lambda$initViewModelObserver$4$LluDanceMainFragment(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "danceBreak"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "dance break "

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->exitPlayFragment()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initViewModelObserver$5$LluDanceMainFragment(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "play"
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "dance stop play "

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->exitPlayFragment()V

    goto :goto_0

    .line 141
    :cond_0
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "dance start play "

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$0$LluDanceMainFragment(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->startPlayFragment(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Z)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$8$LluDanceMainFragment(ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "position",
            "data"
        }
    .end annotation

    .line 190
    iput p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentIndex:I

    .line 191
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 192
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLLuDanceCurrentSelectRscId(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mCurrentSelectData:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadedPercentage()D

    move-result-wide v0

    double-to-int p2, v0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->updateBtnState(Ljava/lang/Integer;I)V

    return-void
.end method

.method public synthetic lambda$showLluDialogConfirm$10$LluDanceMainFragment(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 495
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showLluDialogConfirm$9$LluDanceMainFragment(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 8
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

    .line 462
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLluConfirmDialog is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->isOrderPlaySwitchCheck()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    const/4 p2, 0x1

    .line 463
    invoke-static {v0, v1, p2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "click llu dialog confirm button too quick!"

    .line 464
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 467
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->checkLightDanceAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->isScenarioModeRunning(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->isOrderPlaySwitchCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->getOrderedPlayTime()J

    move-result-wide v5

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ordered time for confirm dialog = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    system time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "     orderedPlayTime > System.currentTimeMillis() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v5, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-lez p1, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getEffectName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->setAlarmForDance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->refreshOrderInfoContainer()V

    goto :goto_1

    .line 477
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->refreshOrderedTime()V

    .line 478
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_double_confirm_dialog_order_play_time_overdue:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    :cond_3
    const-string p2, "order time switch off"

    .line 482
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeAlarmRequest()V

    .line 485
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->startPlayFragment(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Z)V

    .line 488
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluConfirmDialog:Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceSettingDialog;->isOrderPlaySwitchCheck()Z

    move-result p1

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mSelectForPlayDate:Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {p2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->llu_play:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;)V

    goto :goto_2

    .line 492
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "llu play action, is in Meditation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->isScenarioModeRunning(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_item_download_progress:I

    if-ne v0, v1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getSelectedDanceViewData()Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->pauseDownLoad(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_video_play_action_container:I

    if-ne v0, v1, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->executeOperationForSelectedItem()V

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_settings:I

    if-ne v0, v1, :cond_2

    .line 402
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "setting for order info"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->showLluDialogConfirm()V

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_main_fragment_order_info_delete:I

    if-ne p1, v0, :cond_3

    .line 405
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "delete order event"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->removeAlarmRequest()V

    :cond_3
    :goto_0
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

    .line 88
    invoke-super {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onDestroyView()V

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->unRegisterLiveDataObserver()V

    .line 269
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 247
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onPause()V

    .line 248
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->cancelTimeLeftCountDown()V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mOrderInfoContainer:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 256
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->exitPlayFragment()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onResume()V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getAllData()V

    .line 240
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceViewDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->chooseSelectPositionNew(Ljava/util/List;)V

    .line 242
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->refreshOrderInfoContainer()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 261
    invoke-super {p0}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onStop()V

    .line 262
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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

    .line 180
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "on onViewCreated"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->initViews(Landroid/view/View;)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->supportVui()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->initVuiScene()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    new-instance v1, Lcom/xiaopeng/lludancemanager/adapter/ItemDecoration;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/xiaopeng/lludancemanager/adapter/ItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    const-string v2, "LluMain"

    const/4 v3, 0x1

    .line 187
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/xiaopeng/xui/widget/XRecyclerView;->initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;ZZ)V

    .line 189
    new-instance v0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

    new-instance v1, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$q0xAJwjSlpM8TO2VWzo3hyu8egw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceMainFragment$q0xAJwjSlpM8TO2VWzo3hyu8egw;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;-><init>(Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceDataListRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceStateLayout:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

    new-instance v1, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$1;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->setListener(Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout$OnClickListener;)V

    .line 222
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/view/LluBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
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

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->mLluDanceStateLayout:Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lludancemanager/widget/LluDanceStateLayout;->onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    return-void
.end method

.method protected supportVui()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected vuiSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "LluMain"

    return-object v0
.end method
