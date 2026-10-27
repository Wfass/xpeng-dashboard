.class public Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "SelectMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectMenuLayout"


# instance fields
.field private clickView:Lcom/xiaopeng/xui/widget/XButton;

.field private collapsedHeight:I

.field private contentView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private initialContentEightHeight:I

.field private initialContentHeight:I

.field private initialHeight:I

.field private initialY:F

.field private isDown:Z

.field private isDragging:Z

.field private isExpanded:Z

.field protected mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

.field private mBgImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mBlurImg:Lcom/xiaopeng/xui/widget/XImageView;

.field protected mClickChange:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Lcom/xiaopeng/musicradio/widget/f;

.field private mEightScale:F

.field private mHeight:I

.field private mItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/h;

.field protected mItemHeight:I

.field protected mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mLeftTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field protected mMargin:I

.field private mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mMenuLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mNeedExpand:Z

.field private mRecycleViewHeight:I

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field protected mSpacing:I

.field protected mSpanCount:I

.field protected mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mVisibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 75
    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpanCount:I

    .line 76
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v1, 0x43220000    # 162.0f

    invoke-static {v0, v1}, Lapf;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mItemHeight:I

    .line 77
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lapf;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpacing:I

    .line 79
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lapf;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMargin:I

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isDragging:Z

    .line 88
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isDown:Z

    .line 100
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    .line 104
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const v0, 0x3f666666    # 0.9f

    .line 106
    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mEightScale:F

    const/4 v0, 0x2

    .line 111
    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mVisibleCount:I

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 p2, 0x3

    .line 75
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpanCount:I

    .line 76
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v0, 0x43220000    # 162.0f

    invoke-static {p2, v0}, Lapf;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mItemHeight:I

    .line 77
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p2, v0}, Lapf;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpacing:I

    .line 79
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p2, v0}, Lapf;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMargin:I

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    .line 87
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isDragging:Z

    .line 88
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isDown:Z

    .line 100
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    .line 104
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const p2, 0x3f666666    # 0.9f

    .line 106
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mEightScale:F

    const/4 p2, 0x2

    .line 111
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mVisibleCount:I

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 p2, 0x3

    .line 75
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpanCount:I

    .line 76
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 p3, 0x43220000    # 162.0f

    invoke-static {p2, p3}, Lapf;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mItemHeight:I

    .line 77
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p2, p3}, Lapf;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpacing:I

    .line 79
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 p3, 0x41c00000    # 24.0f

    invoke-static {p2, p3}, Lapf;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMargin:I

    const/4 p2, 0x0

    .line 83
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    .line 87
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isDragging:Z

    .line 88
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isDown:Z

    .line 100
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    .line 104
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const p2, 0x3f666666    # 0.9f

    .line 106
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mEightScale:F

    const/4 p2, 0x2

    .line 111
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mVisibleCount:I

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->logout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->showTipDialog(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->showHideItem(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickItem(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initContentHeight()V

    return-void
.end method

.method static synthetic access$402(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->toggleView()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->contentView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->updateClickView(I)V

    return-void
.end method

.method private animateCollapse()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    .line 482
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->showHideItem(Z)V

    .line 483
    new-instance v0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$11;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private animateExpand()V
    .locals 5

    .line 527
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setItemInvisible()V

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    const/4 v0, 0x2

    .line 529
    new-array v0, v0, [I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->contentView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getHeight()I

    move-result v2

    aput v2, v0, v1

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    .line 531
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$2;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 541
    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$3;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 565
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 566
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    return-void
.end method

.method private clickItem(II)V
    .locals 2

    const-string v0, "SelectMenuLayout"

    const-string v1, "clickItem: "

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p2, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/selectmenu/a;->b(I)V

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-ltz p2, :cond_2

    .line 281
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    :cond_2
    if-eqz v0, :cond_3

    .line 285
    iget-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mClickChange:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;

    invoke-interface {p2, v0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;->a(Lcom/xiaopeng/musicradio/bean/common/LeftSelect;Lcom/xiaopeng/musicradio/bean/common/LeftSelect;)V

    :cond_3
    return-void
.end method

.method private initClickDragStyle()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "SelectMenuLayout"

    const-string v1, "initClickDragStyle: "

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickView:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$10;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initContentHeight()V
    .locals 5

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initContentHeight: collapsedHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " initialContentHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectMenuLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    if-lez v3, :cond_1

    .line 333
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    if-eqz v1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setExpandedView()V

    .line 335
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setContentHeight(II)V

    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 344
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getMeasuredHeight()I

    move-result v2

    .line 345
    iput v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mHeight:I

    .line 346
    iput v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mRecycleViewHeight:I

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initContentHeight:  =  mHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mRecycleViewHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mRecycleViewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 350
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setContentHeight(II)V

    goto :goto_1

    .line 352
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->requestContentHeight()V

    goto :goto_1

    .line 355
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->requestContentHeight()V

    :goto_1
    return-void
.end method

.method private logout(I)V
    .locals 2

    .line 236
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 237
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Lben;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$5;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-interface {v0, v1}, Lben;->a(Lbeo;)V

    .line 252
    :cond_0
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 253
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->e()Lbej;

    move-result-object p1

    .line 254
    invoke-interface {p1}, Lben;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$6;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-interface {p1, v0}, Lben;->a(Lbeo;)V

    :cond_1
    return-void
.end method

.method private notifyVisibleItem()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mVisibleCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 607
    :goto_0
    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mVisibleCount:I

    if-ge v0, v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestContentHeight()V
    .locals 3

    const-string v0, "SelectMenuLayout"

    const-string v1, "requestContentHeight:"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$7;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setContentHeight(II)V
    .locals 4

    .line 360
    iput p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    .line 361
    iput p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const-string p2, "SELECT_MENU_STAT"

    const/4 v0, 0x0

    .line 364
    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 365
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 366
    iget v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 367
    invoke-static {p2, v3}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 368
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    .line 369
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    .line 370
    sget p2, Lcom/xiaopeng/musicradio/main/a$f;->menu_up:I

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->updateClickView(I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 373
    iget p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 374
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    .line 375
    sget p2, Lcom/xiaopeng/musicradio/main/a$f;->menu_more:I

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->updateClickView(I)V

    goto :goto_0

    .line 377
    :cond_1
    iget p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 378
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    .line 379
    sget p2, Lcom/xiaopeng/musicradio/main/a$f;->menu_up:I

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->updateClickView(I)V

    .line 382
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setContentHeight:  collapsedHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " initialContentHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isCollapse = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SelectMenuLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setExpandedView()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 325
    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 326
    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "SELECT_MENU_STAT"

    const/4 v1, 0x1

    .line 327
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private setItemInvisible()V
    .locals 4

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->k()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->k()Ljava/util/HashMap;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 596
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    .line 598
    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setVisibility(I)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->notifyVisibleItem()V

    return-void
.end method

.method private showHideItem(Z)V
    .locals 6

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->k()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->k()Ljava/util/HashMap;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 573
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    if-eqz v2, :cond_0

    .line 575
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setTextSize()V

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    .line 578
    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setVisibility(I)V

    .line 579
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    .line 581
    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setVisibility(I)V

    .line 582
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    const-wide/16 v3, 0xc8

    .line 584
    invoke-virtual {v5, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 585
    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->notifyVisibleItem()V

    return-void
.end method

.method private showTipDialog(I)V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->dismiss()V

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    if-nez v0, :cond_2

    .line 414
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->a(Z)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 417
    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->confirm_download_netease_music:I

    .line 419
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->d()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 420
    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->confirm_download_kugou_music:I

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/f;->setNegativeButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->bt_dialog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$9;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$9;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonInterceptDismiss(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->bt_dialog_ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$8;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;I)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 446
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitleBarVisibility(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 447
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mDialog:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method private toggleView()V
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->isExpanded:Z

    const-string v1, "SELECT_MENU_STAT"

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->animateCollapse()V

    const/4 v0, 0x1

    .line 473
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->animateExpand()V

    const/4 v0, 0x0

    .line 476
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private updateClickView(I)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickView:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickView:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickView:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createAdapter()V
    .locals 2

    .line 183
    new-instance v0, Lcom/xiaopeng/musicradio/selectmenu/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    return-void
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public enableAdapter()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method protected findView()V
    .locals 1

    .line 156
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->select_menu_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 157
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->select_menu_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->contentView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 158
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->click_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickView:Lcom/xiaopeng/xui/widget/XButton;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 150
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->layout_select_menu:I

    return v0
.end method

.method public getSelectPosition()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->g()I

    move-result v0

    return v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 4

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContentViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 139
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->addView(Landroid/view/View;)V

    .line 143
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectMenuLayout Layout.inflate.cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SelectMenuLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 624
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "SelectMenuLayout"

    const-string v1, "onConfigurationChanged: "

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 628
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->reviewOnScreenChange()V

    .line 630
    :cond_0
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 631
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/selectmenu/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 636
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mHeight:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mRecycleViewHeight:I

    if-lez v1, :cond_0

    .line 637
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setContentHeight(II)V

    :cond_0
    return-void
.end method

.method public setClickChange(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mClickChange:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->a(Ljava/util/List;)V

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/selectmenu/a;->j()V

    .line 315
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initClickDragStyle()V

    .line 316
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initContentHeight()V

    .line 317
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->collapsedHeight:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->initialContentHeight:I

    if-lez p1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->setExpandedView()V

    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndex: == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " last = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/selectmenu/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectMenuLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->g()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->clickItem(II)V

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 643
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$4;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/a;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method public setMenBg(Lcom/xiaopeng/xui/widget/XFrameLayout;)V
    .locals 1

    .line 614
    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 615
    iget-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mMenBg:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setNeedExpand(Z)V
    .locals 0

    .line 619
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mNeedExpand:Z

    return-void
.end method

.method protected setView()V
    .locals 10

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->createAdapter()V

    .line 164
    new-instance v0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpanCount:I

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$1;-><init>(Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 171
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpanCount:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpacing:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mSpacing:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 173
    iget-object v4, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object v1, Lbyb;->LEVEL4:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public updateSelectStatus(I)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout;->mAdapter:Lcom/xiaopeng/musicradio/selectmenu/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/selectmenu/a;->b(I)V

    return-void
.end method
