.class public Lcom/xiaopeng/musicradio/home/view/HomeFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/main/view/a;
.implements Lcom/xiaopeng/musicradio/music/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/home/homefragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/main/view/a;",
        "Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/main/view/a;"
    }
.end annotation


# static fields
.field private static final MAX_FIRST_FRAME_TIME:J = 0x2710L

.field private static final TAB_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAB_NAME_MINE:Ljava/lang/String; = "mine"

.field private static final TAB_NAME_MUSIC:Ljava/lang/String; = "music"

.field private static final TAB_NAME_RADIO:Ljava/lang/String; = "radio"

.field private static final TAB_NAME_READING:Ljava/lang/String; = "reading"

.field private static final TAG:Ljava/lang/String; = "HomeFragment"


# instance fields
.field private mDialog:Lcom/xiaopeng/musicradio/widget/f;

.field private final mFirstSelectArray:Landroid/util/SparseBooleanArray;

.field private volatile mHasSetView:Z

.field private mInitTabRun:Ljava/lang/Runnable;

.field private mLastSelect:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

.field private mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

.field private mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mMenuIndex:I

.field private mMenuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

.field private mPageBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/adapter/e;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/c;

.field private mSelect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

.field private mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->TAB_MAP:Ljava/util/Map;

    .line 109
    sget-object v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "music"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "radio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuMap:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mFirstSelectArray:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    .line 353
    new-instance v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$9;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mInitTabRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/bean/common/LeftSelect;)Lcom/xiaopeng/musicradio/bean/common/LeftSelect;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLastSelect:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->hideSelectMenu(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initIdleView()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initTabSet()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method private changeImgAccount(I)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->changeImgAccount(I)V

    return-void
.end method

.method private getIndex(I)I
    .locals 3

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFragment"

    .line 989
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->e()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 992
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 993
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 994
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 996
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->e()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 999
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->c()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1001
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->d()I

    move-result p1

    :cond_3
    :goto_0
    return p1
.end method

.method private handleIntent()V
    .locals 5

    .line 911
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 915
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    if-nez v1, :cond_1

    return-void

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$6;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Landroid/content/Intent;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private hideSelectMenu(I)V
    .locals 8

    .line 558
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->downWithoutAnim()V

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIsVisible(Z)V

    if-ltz p1, :cond_0

    .line 563
    new-instance v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mFirstSelectArray:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-ltz p1, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-ltz p1, :cond_3

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mFirstSelectArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->down()V

    .line 578
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setMenuAnimSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 579
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setMenuBgAnimSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    const-wide/16 v3, 0x12c

    .line 580
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 581
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 582
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 583
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 584
    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;

    invoke-direct {v3, p0, p1, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$14;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;IZ)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$15;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$15;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$2;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;IZ)V

    .line 607
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    sub-long/2addr v4, v6

    .line 600
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initDelayView()V
    .locals 2

    .line 170
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/main/a$d;->vb_main_content_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    instance-of v1, v0, Landroid/view/ViewStub;

    if-nez v1, :cond_1

    return-void

    .line 177
    :cond_1
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 178
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    .line 179
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->select_menu:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 180
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->menu_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 181
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->select_menu_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setMenBg(Lcom/xiaopeng/xui/widget/XFrameLayout;)V

    return-void
.end method

.method private initIdleTimeTask()V
    .locals 1

    .line 194
    new-instance v0, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeFragment$wNu5hjp55iPkZudgu7SXaU8DM6I;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeFragment$wNu5hjp55iPkZudgu7SXaU8DM6I;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    invoke-static {v0}, Lbql;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initIdleView()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initIdleTimeTask()V

    .line 190
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private initTabSet()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mInitTabRun:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/c;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    :cond_0
    return-void
.end method

.method private msgTypeToPosition(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    .line 371
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    return p1

    .line 374
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x4

    return p1
.end method

.method private navigateFrom3rd(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$7;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setClickChange(I)V
    .locals 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTabChange: ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 386
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbdt;->a(Ljava/lang/String;)V

    const-string v0, "SELECT_MENU_INDEX"

    .line 387
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 388
    iput p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    .line 389
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnz;->b(I)V

    .line 390
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->changeImgAccount(I)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    .line 392
    iget-object v0, v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/e;

    .line 393
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbbz;->a(Ljava/lang/String;Z)V

    .line 394
    invoke-static {}, Lbbz;->a()Lbbz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbz;->a(I)V

    .line 395
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initTabSet()V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZ)V

    .line 397
    new-instance p1, Lasj$d;

    invoke-direct {p1}, Lasj$d;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setDelayListener()V
    .locals 0

    return-void
.end method

.method private setIdleListener()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeFragment$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$11;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeFragment$12;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$12;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setMenuAnimSet(Z)Landroid/animation/AnimatorSet;
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 616
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setScaleX(F)V

    .line 617
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setScaleY(F)V

    .line 618
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setAlpha(F)V

    move v2, v0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    move v2, v1

    .line 620
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    const/4 v7, 0x1

    aput v2, v5, v7

    const-string v8, "scaleX"

    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 621
    iget-object v5, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    new-array v8, v4, [F

    aput p1, v8, v6

    aput v2, v8, v7

    const-string v9, "scaleY"

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 622
    iget-object v8, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    new-array v9, v4, [F

    aput p1, v9, v6

    aput v2, v9, v7

    const-string p1, "alpha"

    invoke-static {v8, p1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 623
    new-instance v2, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const v8, 0x3f266666    # 0.65f

    const v9, 0x3eb33333    # 0.35f

    invoke-direct {v2, v8, v1, v9, v0}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x190

    .line 625
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 626
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 627
    invoke-virtual {p1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 628
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    .line 629
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    aput-object p1, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 630
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setPivotX(F)V

    .line 631
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setPivotY(F)V

    return-object v0
.end method

.method private setMenuBgAnimSet(Z)Landroid/animation/AnimatorSet;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setScaleX(F)V

    .line 642
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setScaleY(F)V

    .line 643
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setAlpha(F)V

    move v4, v1

    move v1, v0

    move v0, v4

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const-string v1, "alpha"

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 646
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 647
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v3

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method private showSelectMenu()V
    .locals 3

    .line 540
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->e()Z

    move-result v0

    const-string v1, "Music_Dialog_Select_Source"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->upWithoutAnim()V

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 544
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->up()V

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 550
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setMenuAnimSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 551
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setMenuBgAnimSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 552
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 553
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 554
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startFirstFrameProtectedTask()V
    .locals 4

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$3;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public ChangeAccountType()V
    .locals 8

    .line 442
    iget v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeAccountType: menuIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomeFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->e()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 445
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 446
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 447
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChangeAccountType: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 451
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v4

    invoke-virtual {v4}, Lbdt;->e()I

    move-result v4

    if-ne v0, v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 454
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v6

    invoke-virtual {v6}, Lbdt;->c()I

    move-result v6

    if-ne v0, v6, :cond_2

    move v4, v3

    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    .line 457
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v7

    invoke-virtual {v7}, Lbdt;->d()I

    move-result v7

    if-ne v0, v7, :cond_3

    move v4, v3

    :cond_3
    if-eqz v4, :cond_6

    if-ne v1, v3, :cond_4

    .line 462
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->e()I

    move-result v2

    .line 463
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    goto :goto_1

    :cond_4
    if-ne v1, v5, :cond_5

    .line 466
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v2

    .line 467
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_9

    .line 469
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v2

    .line 470
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    goto :goto_1

    .line 473
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLastSelect:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    if-eqz v0, :cond_8

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 475
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLastSelect:Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 476
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getIndex(I)I

    move-result v0

    .line 477
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    move v2, v0

    goto :goto_1

    .line 482
    :cond_8
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    .line 485
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->updateSelectStatus(I)V

    .line 486
    new-instance v0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$10;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    const-wide/16 v1, 0x14

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    :cond_a
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->createPresenter()Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;
    .locals 1

    .line 154
    new-instance v0, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    const-string v0, "HomeFragment.findView"

    .line 159
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 160
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->music_top:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    .line 161
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initDelayView()V

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->startFirstFrameProtectedTask()V

    return-void
.end method

.method public getBuildViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMusicLabel:Lcom/xiaopeng/musicradio/widget/SelectTopLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 773
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->layout_main:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$initIdleTimeTask$0$HomeFragment()V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->enableAdapter()V

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIdleListener()V

    return-void
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public neteaseCancelOrError(Z)V
    .locals 0

    return-void
.end method

.method public neteaseDownloadProgress(F)V
    .locals 0

    return-void
.end method

.method public neteasePauseOrStart(Z)V
    .locals 0

    return-void
.end method

.method public neteaseUninstalled(Z)V
    .locals 0

    return-void
.end method

.method public neteaseisAppInstalled(Z)V
    .locals 0

    return-void
.end method

.method public onAppFirstFrameComplete()V
    .locals 2

    const-string v0, "HomeFragment"

    const-string v1, "onAppFirstFrameComplete"

    .line 716
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 720
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initDelayView()V

    .line 721
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setDelayListener()V

    .line 722
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setView()V

    return-void
.end method

.method public onAppInstalled(IZ)V
    .locals 1

    .line 703
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 704
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 706
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p2

    invoke-virtual {p2}, Lbdt;->m()I

    move-result p2

    const-string v0, "SELECT_MENU_INDEX"

    invoke-static {v0, p2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 708
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p2

    invoke-virtual {p2}, Lbdt;->m()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    :cond_1
    return-void
.end method

.method public onBuildScene()V
    .locals 4

    .line 788
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->isMainScene()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "HomeFragment.onCreate"

    .line 148
    invoke-static {p1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 978
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 979
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onIdleViewInit()V
    .locals 0

    .line 826
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->initIdleView()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 951
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "HomeFragment"

    const-string v0, "onNewIntent: ======="

    .line 952
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->navigateFrom3rd(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 906
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 907
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->handleIntent()V

    return-void
.end method

.method public selectChange(I)V
    .locals 4

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectChange: mMenuIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  selectIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 405
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbdt;->a(Ljava/lang/String;)V

    .line 407
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    if-ne v0, p1, :cond_1

    return-void

    .line 411
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->k()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->c()V

    .line 414
    :cond_2
    iput p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    const-string v0, "selectChange: "

    .line 415
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->e()V

    .line 417
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->e()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    .line 418
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->changeImgAccount(I)V

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setVisibility(I)V

    .line 421
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lbdu;->a(IZ)V

    goto :goto_0

    .line 423
    :cond_3
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 424
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->changeImgAccount(I)V

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->setVisibility(I)V

    .line 426
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setVisibility(I)V

    .line 427
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lbdu;->a(IZ)V

    goto :goto_0

    .line 428
    :cond_4
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 429
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->changeImgAccount(I)V

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setVisibility(I)V

    .line 432
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lbdu;->a(IZ)V

    goto :goto_0

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setVisibility(I)V

    .line 436
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    :goto_0
    return-void
.end method

.method public selectMenu()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenu:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getVisibility()I

    move-result v0

    const-string v1, "HomeFragment"

    if-nez v0, :cond_0

    const-string v0, "selectMenu: visible is ture"

    .line 530
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 534
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->showSelectMenu()V

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIsVisible(Z)V

    const-string v0, "selectMenu: mSelectMenu visible"

    .line 536
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selectTab(Landroid/net/Uri;)V
    .locals 10

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HomeFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_b

    const-string v0, "tab"

    .line 654
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "program"

    .line 656
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 657
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    goto/16 :goto_2

    :cond_0
    const-string v3, "netradio"

    .line 658
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    goto/16 :goto_2

    :cond_1
    const-string v3, "usb"

    .line 660
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 661
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    goto/16 :goto_2

    :cond_2
    const-string v3, "bt"

    .line 662
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    goto/16 :goto_2

    :cond_3
    const-string v3, "mine"

    .line 664
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "search"

    if-nez v3, :cond_4

    const-string v3, "rank"

    .line 665
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "singer"

    .line 666
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "concentration"

    .line 667
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 668
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 669
    :cond_4
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v3

    invoke-virtual {v3}, Lbdu;->d()I

    move-result v3

    const-string v5, "position"

    .line 670
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " tab = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const-string v7, "collect"

    .line 673
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_5

    const-string v7, "history"

    .line 674
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 675
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 676
    :cond_5
    iget v4, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v7

    invoke-virtual {v7}, Lbdt;->i()I

    move-result v7

    if-ne v4, v7, :cond_6

    .line 677
    iget-object v4, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v5

    invoke-virtual {v5}, Lbdt;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    move v5, v9

    goto :goto_0

    .line 679
    :cond_6
    iget v4, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v7

    invoke-virtual {v7}, Lbdt;->j()I

    move-result v7

    if-ne v4, v7, :cond_7

    .line 680
    iget-object v4, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v5

    invoke-virtual {v5}, Lbdt;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    move v5, v8

    :cond_7
    :goto_0
    if-nez v5, :cond_a

    if-ne v3, v9, :cond_8

    .line 686
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v4

    invoke-virtual {v4}, Lbdt;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    goto :goto_1

    :cond_8
    if-ne v3, v8, :cond_9

    .line 688
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v4

    invoke-virtual {v4}, Lbdt;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    goto :goto_1

    :cond_9
    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    .line 690
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v4

    invoke-virtual {v4}, Lbdt;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    .line 694
    :cond_a
    :goto_1
    new-instance v3, Lcom/xiaopeng/musicradio/event/common/b$b;

    invoke-direct {v3, v5, v0, p1}, Lcom/xiaopeng/musicradio/event/common/b$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectTab: tabType = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public setIndex(I)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 10

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFragment.setView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/utils/c;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->b()Z

    move-result v0

    const-string v1, "SELECT_MENU_INDEX"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    .line 210
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    .line 211
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->changeImgAccount(I)V

    return-void

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/c;

    if-eqz v0, :cond_1

    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mOffscreenPageLimit"

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/c;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/c;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v4

    invoke-virtual {v4}, Lbdt;->n()Ljava/util/List;

    move-result-object v4

    .line 225
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbdt$b;

    .line 226
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "qq"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_qqmusic:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_qq_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 228
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_qq_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/music/fragment/qqmain"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_qqmusic:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_3
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "netease"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 232
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_netease:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_netease_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 233
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_netease_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/music/fragment/neteasemain"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_netease:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 236
    :cond_4
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "kugou"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 237
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_kugou:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_kugoo_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 238
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_kugoo_music:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/music/fragment/kugoomain"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_kugou:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 241
    :cond_5
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "read"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 242
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_himalayas:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_read:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 243
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_read:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/program/fragment/main"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_himalayas:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 246
    :cond_6
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "radio"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 247
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_himalayas:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_radio:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 248
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_radio:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/netradio/fragment/main"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_himalayas:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 251
    :cond_7
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "blue"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 252
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_bluetooth:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_blue:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 253
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_blue:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/music/fragment/btmain"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_bluetooth:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 256
    :cond_8
    iget-object v6, v5, Lbdt$b;->a:Ljava/lang/String;

    const-string v7, "usb"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 257
    new-instance v6, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v7, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_usb:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_usb:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    .line 258
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMap:Ljava/util/LinkedHashMap;

    iget v8, v5, Lbdt$b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v6, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    new-instance v7, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_usb:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/usbview/usb_main_fragment"

    invoke-direct {v7, v9, v8}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_usb:I

    iget v5, v5, Lbdt$b;->b:I

    invoke-direct {v6, p0, v7, v8, v5}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/commonui/adapter/e;II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 263
    :cond_9
    iget-object v4, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 264
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "HomeFragment"

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    .line 265
    iget-object v7, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuMap:Ljava/util/Map;

    iget v8, v5, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setView: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;->c:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;

    .line 270
    iget-object v4, v4, Lcom/xiaopeng/musicradio/home/view/HomeFragment$a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 272
    :cond_b
    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPageBeanList:Ljava/util/List;

    .line 273
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/c;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a(Ljava/util/List;)V

    .line 274
    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/c;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelect:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setData(Ljava/util/ArrayList;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setClickChange(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;)V

    .line 298
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    .line 299
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    move v0, v2

    .line 303
    :cond_c
    iput v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    .line 304
    invoke-static {v0}, Lbqj;->a(I)V

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->updateSelectStatus(I)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setView: menuIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setClickChange(I)V

    .line 308
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mLoadingView:Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setVisibility(I)V

    .line 310
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->c()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 311
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1}, Lbhg;->b()Lbhi;

    move-result-object v1

    invoke-virtual {v1}, Lbhi;->h()Z

    move-result v1

    if-nez v1, :cond_d

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v3

    invoke-virtual {v3}, Lbdt;->m()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    .line 315
    :cond_d
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 316
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1}, Lbhg;->c()Lbhh;

    move-result-object v1

    invoke-virtual {v1}, Lbhh;->h()Z

    move-result v1

    if-nez v1, :cond_e

    .line 317
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v3

    invoke-virtual {v3}, Lbdt;->m()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setIndex(I)V

    .line 321
    :cond_e
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->e()I

    move-result v1

    if-eq v0, v1, :cond_f

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    if-eq v0, v1, :cond_f

    .line 322
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->c()I

    move-result v1

    if-eq v0, v1, :cond_f

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->f()I

    move-result v1

    if-eq v0, v1, :cond_f

    .line 323
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$8;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    :cond_f
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->e()I

    move-result v1

    if-eq v0, v1, :cond_10

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 332
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->c()I

    move-result v1

    if-eq v0, v1, :cond_10

    .line 333
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->k()V

    .line 336
    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mFirstSelectArray:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mMenuIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mHasSetView:Z

    .line 341
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->handleIntent()V

    const-string v0, "HomeFragment.setView.end"

    .line 343
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showAudioDownDialog(I)V
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->dismiss()V

    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    if-nez v0, :cond_2

    .line 862
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    .line 863
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->a(Z)V

    .line 864
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 865
    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->confirm_download_netease_music:I

    .line 866
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->d()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 867
    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->confirm_download_kugou_music:I

    .line 869
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 870
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/f;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 871
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->bt_dialog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$5;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$5;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 879
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 880
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->bt_dialog_ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment$4;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 891
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 892
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 893
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 894
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 896
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method public showDolbyZonePage()V
    .locals 2

    .line 842
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 843
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    .line 844
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    .line 845
    invoke-interface {v0}, Lben;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbgr;->b(Z)V

    .line 847
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbgr;->a(Z)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setNeedExpand(Z)V

    .line 851
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->selectMenu()V

    .line 852
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->showAudioDownDialog(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchAudio(I)V
    .locals 2

    .line 746
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 747
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->selectMenu()V

    .line 751
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->showAudioDownDialog(I)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 754
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->mSelectMenuLayout:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setNeedExpand(Z)V

    .line 758
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->selectMenu()V

    .line 759
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->showAudioDownDialog(I)V

    goto :goto_0

    .line 762
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIndex(I)V

    :goto_0
    return-void
.end method

.method public updatePlayingState(ZI)V
    .locals 0

    return-void
.end method
