.class public Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;
.super Lcom/xiaopeng/xui/app/XActivity;
.source "LluDanceActivityNew.java"


# static fields
.field public static final LLU_DANCE_ORDER_PLAY_ACTION:Ljava/lang/String; = "llu_dance_order_play_action"

.field private static final TAG:Ljava/lang/String; = "LluDanceActivityNew"

.field private static final WINDOW_POSITION_OPEN:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDanceFragmentPagerAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;

.field private mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

.field private mDanceViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

.field private mIgEventObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

.field private mUserDefaultStreamVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mIgEventObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)Lcom/xiaopeng/xui/widget/XViewPager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->exitDanceActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)Lcom/xiaopeng/xui/widget/XTabsBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

    return-object p0
.end method

.method private buildAdapterDataList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v1, Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;

    const-string v2, "llu_fragment"

    invoke-direct {v1, v2}, Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private exitDanceActivity()V
    .locals 2

    .line 236
    invoke-static {p0}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->alarmUpForDance(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "existing intent not null, move task to back"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 239
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/utils/XActivityUtils;->moveTaskToBack(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 241
    :cond_0
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "existing intent null, finish activity"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->finish()V

    :goto_0
    return-void
.end method

.method private filterIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "id"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->setIntentRscId(Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dance activity open from dropdown menu dance id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "order_play_dance_item_res_id"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getOrderedPlayItemIdData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Karl log open time optimize dance activity new ordered dance id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private restoreStreamVolume()V
    .locals 5

    .line 209
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "restoreStreamVolume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause current stream volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x19

    if-ne v1, v3, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause user not switch volume in dance playing, reset volume to user default stored before , default = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mUserDefaultStreamVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mUserDefaultStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private restoreWindowStateToast()V
    .locals 8

    .line 183
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "restoreWindowStateToast"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluAutoWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->isAutoWindowExecuted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->resetAutoWindowFlag()V

    .line 186
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 188
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getWindowsPos()[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 189
    sget-object v5, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "window position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 199
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_exit_dance_fragment_restore_window_toast:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    .line 201
    :cond_2
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not switch on auto window, ignore restore window state . auto window = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluAutoWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     auto window executed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->isAutoWindowExecuted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$LluDanceActivityNew(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "igOffEvent"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v0, "dance main fragment received ig off event, removeAlarmRequestWithSwitchReset"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->exitDanceActivity()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->exitDanceActivity()V

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

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/XActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget-object p1, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget p1, Lcom/xiaopeng/lludancemanager/R$layout;->activity_llu_dance_new:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->setContentView(I)V

    .line 56
    sget p1, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_activity_view_pager:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XViewPager;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    .line 57
    sget p1, Lcom/xiaopeng/lludancemanager/R$id;->llu_dance_activity_viewpager_tab_layout:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTabsBar;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

    const-string p1, "isSupportAiLlu"

    .line 58
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTabsBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 60
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTabsBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

    new-instance v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$1;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->setOnTabsClickListener(Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/lludancemanager/viewmodel/ILluDanceViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    .line 98
    new-instance p1, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceActivityNew$jBVKxUfh1MPIxzN5yPTF6KpzZdc;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDanceActivityNew$jBVKxUfh1MPIxzN5yPTF6KpzZdc;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mIgEventObserver:Landroidx/lifecycle/Observer;

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getIgEvent()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mIgEventObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string p1, "audio"

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mAudioManager:Landroid/media/AudioManager;

    .line 106
    new-instance p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceFragmentPagerAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->buildAdapterDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->setAdapterDataList(Ljava/util/ArrayList;)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceFragmentPagerAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceFragmentPagerAdapter:Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mTabsBar:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->feedInTabData(Lcom/xiaopeng/xui/widget/XTabsBar;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    new-instance v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$2;-><init>(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->filterIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 226
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XActivity;->onDestroy()V

    .line 227
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 149
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/XActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 150
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "order_play_dance_item_res_id"

    .line 154
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->getOrderedPlayItemIdData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log open time optimize dance activity new ordered dance id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    .line 158
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mDanceViewModel:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->setIntentRscId(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dance activity open from dropdown menu dance id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XActivity;->onPause()V

    .line 175
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->restoreStreamVolume()V

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->restoreWindowStateToast()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 166
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XActivity;->onResume()V

    .line 167
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mUserDefaultStreamVolume:I

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume get current stream volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->mUserDefaultStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XActivity;->onStop()V

    .line 221
    sget-object v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 259
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
