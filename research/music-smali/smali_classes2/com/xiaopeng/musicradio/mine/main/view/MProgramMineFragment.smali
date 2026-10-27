.class public Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MProgramMineFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/mine/program_mine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/mine/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MProgramMineFragment"


# instance fields
.field protected mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

.field protected mAdapter:Lcom/xiaopeng/musicradio/widget/e;

.field protected mCurrentIndex:I

.field protected mIndex:I

.field protected mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field protected mPleaseLoginLayout:Landroid/widget/RelativeLayout;

.field private mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

.field protected mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field protected mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field protected mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

.field private final reportExposureRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mCurrentIndex:I

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    .line 89
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mIndex:I

    .line 576
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/view/-$$Lambda$MProgramMineFragment$k4d4Oo2XWToXzUU-jyhtRGbjhnA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/main/view/-$$Lambda$MProgramMineFragment$k4d4Oo2XWToXzUU-jyhtRGbjhnA;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->reportExposureRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->showXmlyLogoutDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->reportPageSelected(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/b;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;Lcom/xiaopeng/musicradio/mine/main/sync/b;)Lcom/xiaopeng/musicradio/mine/main/sync/b;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

    return-object p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private login(Landroid/view/View;)V
    .locals 1

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Laqn;->a(Landroid/content/Context;)V

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    invoke-static {}, Latu;->i()V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    invoke-static {}, Latu;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method private reportPageSelected(I)V
    .locals 2

    .line 572
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->reportExposureRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->b(Ljava/lang/Runnable;)V

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->reportExposureRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lbql;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setPleaseLogin()V
    .locals 0

    return-void
.end method

.method private showXmlyLogoutDialog()V
    .locals 4

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->a(Z)V

    .line 280
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 281
    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 283
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_xmly_logout:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->user_logout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$10;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$10;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->user_logout:I

    .line 296
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 297
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method private updateScene()V
    .locals 6

    .line 394
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected BuildFragmentScene()V
    .locals 5

    .line 487
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;
    .locals 1

    .line 317
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->music_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->account_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 104
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->please_login_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    .line 106
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->vipsale_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->initView()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_xmly_mine:I

    return v0
.end method

.method protected getMenuIndex()I
    .locals 1

    .line 541
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->f()I

    move-result v0

    return v0
.end method

.method protected getPageNameInner()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Program_Mine"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/mine/program_mine"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 436
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageNameInner()Ljava/lang/String;
    .locals 2

    .line 566
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mCurrentIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Music_Program_SubPage_Mine_History"

    return-object v0

    :cond_0
    const-string v0, "Music_Program_SubPage_Mine_Subscribe"

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 537
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->an(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 446
    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 447
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$c;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x11

    .line 449
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 450
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 451
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 452
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    return-object v0
.end method

.method protected initView()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->reviewOnScreenChange()V

    .line 119
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getMenuIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lawv;->a(IZ)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setSceneId(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_program_collect_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->mine_program_history_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->inflaterTab(Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->program_collect_mine_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/xiaopeng/musicradio/mine/a$d;->program_history_mine_layout:I

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    instance-of v4, v0, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;

    if-eqz v4, :cond_0

    .line 134
    move-object v4, v0

    check-cast v4, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;->setPosition(I)V

    .line 136
    :cond_0
    instance-of v4, v1, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    if-eqz v4, :cond_1

    .line 137
    move-object v4, v1

    check-cast v4, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setPosition(I)V

    .line 139
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v5, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 144
    iput v3, v5, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 145
    iput-object v0, v5, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 146
    new-instance v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;-><init>()V

    .line 147
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    .line 148
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 149
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/musicradio/widget/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/e;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 153
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setViewPageState(I)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->BuildFragmentScene()V

    return-void
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$new$0$MProgramMineFragment()V
    .locals 3

    const-string v0, "MProgramMineFragment"

    const-string v1, "startReprotCurrentPageExposeure : "

    .line 577
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getPageNameInner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSubPageNameInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBuildScene()V
    .locals 0

    return-void
.end method

.method public onKugouAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onKugouAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMusicDataLoad(I)V
    .locals 0

    return-void
.end method

.method public onNeteaaseAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNeteaseAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "MProgramMineFragment"

    const-string v1, "onResume: ========="

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 431
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getMenuIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lawv;->a(IZ)V

    return-void
.end method

.method public onProgramDataLoad(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 370
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mIndex:I

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setViewPageState(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 373
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mIndex:I

    if-ne p1, v0, :cond_1

    .line 374
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setViewPageState(I)V

    :cond_1
    return-void
.end method

.method public onQqAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRadioDataLoad(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 380
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mIndex:I

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setViewPageState(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 383
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mIndex:I

    if-ne p1, v0, :cond_1

    .line 384
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setViewPageState(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 399
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 400
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getMenuIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lawv;->a(IZ)V

    .line 401
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$u;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 402
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setVisibility(I)V

    .line 408
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setPleaseLogin()V

    .line 410
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->updateScene()V

    return-void
.end method

.method public onSyncEnd()V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->hideSyncLoading()V

    return-void
.end method

.method public onSyncLoading()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->showSyncLoading()V

    return-void
.end method

.method public onSyncStart()V
    .locals 0

    .line 512
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->showAsyncDialog()V

    return-void
.end method

.method public onSyncState(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/sync/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/b;->a(Ljava/util/List;)V

    .line 507
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/b;->b()V

    return-void
.end method

.method public onXmlyAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setVisibility(I)V

    .line 365
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->updateScene()V

    return-void
.end method

.method public onXmlyAuthChanged(Z)V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setVisibility(I)V

    if-nez p1, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->setPleaseLogin()V

    .line 357
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->updateScene()V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 2

    .line 560
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->reviewOnScreenChange()V

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setVisibility(I)V

    return-void
.end method

.method public selectTab(I)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mPleaseLoginLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setLogoutListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$4;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$5;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$6;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setBuyClick(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$7;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/XmlyInfoLayout;->setSyncClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    return-void
.end method

.method protected setViewPageState(I)V
    .locals 5

    .line 457
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mIndex:I

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MProgramMineFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 459
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 460
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    if-ne v0, p1, :cond_1

    .line 463
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;

    if-eqz v3, :cond_0

    .line 464
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;

    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;->setRecyclerState(Lbya;)V

    .line 465
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 467
    :cond_0
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    if-eqz v3, :cond_3

    .line 468
    check-cast v2, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    sget-object v3, Lbya;->NORMAL:Lbya;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setRecyclerState(Lbya;)V

    .line 469
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    goto :goto_1

    .line 472
    :cond_1
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;

    if-eqz v3, :cond_2

    .line 473
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;

    sget-object v4, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/mine/program/ProgramCollectLayout;->setRecyclerState(Lbya;)V

    .line 475
    :cond_2
    instance-of v3, v2, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    if-eqz v3, :cond_3

    .line 476
    check-cast v2, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;

    sget-object v3, Lbya;->DISABLED:Lbya;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/mine/program/ProgramHistoryLayout;->setRecyclerState(Lbya;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_4
    invoke-static {p1}, Latu;->a(I)V

    .line 482
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->BuildFragmentScene()V

    const-string p1, "updateView: tab update viewpager update"

    .line 483
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showAsyncDialog()V
    .locals 4

    .line 248
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->a(Z)V

    .line 250
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 251
    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 252
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 253
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_xmly_sync_message:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$9;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment$8;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_xmly_sync:I

    .line 270
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 271
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method protected showBuyDialog()V
    .locals 3

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "Music_Program_Mine"

    const-string v2, "Music_Program_SubPage_Mine_Buy"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Latu;->j()V

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "Music_NetRadio_Mine"

    const-string v2, "Music_NetRadio_SubPage_Mine_Buy"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Latu;->n()V

    .line 311
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/MProgramMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    return-void
.end method

.method public updateData()V
    .locals 0

    return-void
.end method
