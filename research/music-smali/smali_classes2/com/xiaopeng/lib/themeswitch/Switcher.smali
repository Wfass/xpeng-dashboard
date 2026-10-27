.class public Lcom/xiaopeng/lib/themeswitch/Switcher;
.super Ljava/lang/Object;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;,
        Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;
    }
.end annotation


# static fields
.field private static final SUFFIX_ADAPTER_PAGE:Ljava/lang/String; = "-_Adapter_-"

.field private static final TAG:Ljava/lang/String; = "ThemeSwitcher"

.field private static final VIEW_ATTR_ALPHA:Ljava/lang/String; = "alpha"

.field private static final VIEW_ATTR_BACKGROUND:Ljava/lang/String; = "background"

.field private static final VIEW_ATTR_BUTTON:Ljava/lang/String; = "button"

.field private static final VIEW_ATTR_DIVIDER:Ljava/lang/String; = "divider"

.field private static final VIEW_ATTR_DRAWABLE_BOTTOM:Ljava/lang/String; = "drawableBottom"

.field private static final VIEW_ATTR_DRAWABLE_LEFT:Ljava/lang/String; = "drawableLeft"

.field private static final VIEW_ATTR_DRAWABLE_RIGHT:Ljava/lang/String; = "drawableRight"

.field private static final VIEW_ATTR_DRAWABLE_TOP:Ljava/lang/String; = "drawableTop"

.field private static final VIEW_ATTR_PROGRESS_DRAWABLE:Ljava/lang/String; = "progressDrawable"

.field private static final VIEW_ATTR_SRC:Ljava/lang/String; = "src"

.field private static final VIEW_ATTR_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final VIEW_ATTR_TEXT_COLOR_HINT:Ljava/lang/String; = "textColorHint"

.field private static final VIEW_ATTR_THUMB:Ljava/lang/String; = "thumb"

.field private static final VIEW_ATTR_VALUE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final VIEW_ATTR_VALUE_SPLIT:Ljava/lang/String; = "/"

.field private static final VIEW_FLAG:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountOfDrawablesInPageView:I

.field private mCountOfPageViewLoadedFinish:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mIsSwitching:Z

.field private mKeepSwitching2Day:Z

.field private mKeepSwitching2Night:Z

.field private mNightUpdateMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnSwitchFinishListener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;

.field private mOtherRunnablesForNightUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPageThemeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPageViewCount:I

.field private mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResourceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaopeng/lib/themeswitch/Switcher;->VIEW_FLAG:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageThemeMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mThemeResourceSet:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOtherRunnablesForNightUpdate:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfPageViewLoadedFinish:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/themeswitch/Switcher;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageViewCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/lib/themeswitch/Switcher;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageViewCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfPageViewLoadedFinish:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLandroid/view/View;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switchViewAttr(ZLandroid/view/View;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->updateNightThemeAsync(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->checkAndResetTargetPageRunnableInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOtherRunnablesForNightUpdate:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->addRunnableToList(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/lib/themeswitch/Switcher;ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/themeswitch/Switcher;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mKeepSwitching2Night:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLandroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switchViewAttr(ZLandroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/themeswitch/Switcher;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->onSwitchFinish()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/themeswitch/Switcher;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mKeepSwitching2Day:Z

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->doSwitch2Day(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->parseThemeConfigure(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/HashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageThemeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private addRunnableToList(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 416
    monitor-enter p1

    .line 417
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private checkAndResetTargetPageRunnableInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    return-object v0
.end method

.method private doSwitch2Day(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "background"

    .line 889
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_d

    .line 891
    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "src"

    .line 894
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    check-cast p1, Landroid/widget/ImageView;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "textColorHint"

    .line 897
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    check-cast p1, Landroid/widget/TextView;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "textColor"

    .line 900
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "drawable"

    .line 902
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 903
    check-cast p1, Landroid/widget/TextView;

    check-cast p3, Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 905
    :cond_3
    check-cast p1, Landroid/widget/TextView;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "alpha"

    .line 908
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 909
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "thumb"

    .line 911
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 912
    check-cast p1, Landroid/widget/SeekBar;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "progressDrawable"

    .line 914
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 915
    check-cast p1, Landroid/widget/ProgressBar;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_7
    const-string v0, "button"

    .line 917
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 918
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_8
    const-string v0, "divider"

    .line 920
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 921
    check-cast p1, Landroid/widget/ListView;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_9
    const-string v0, "drawableLeft"

    .line 923
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p2, 0x0

    .line 924
    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_a
    const-string v0, "drawableTop"

    .line 926
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p2, 0x1

    .line 927
    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_b
    const-string v0, "drawableRight"

    .line 929
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p2, 0x2

    .line 930
    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_c
    const-string v0, "drawableBottom"

    .line 932
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p2, 0x3

    .line 933
    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    :goto_0
    return-void
.end method

.method private doSwitch2Night(ZLjava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "background"

    .line 627
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 629
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 630
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$8;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$8;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 643
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    .line 645
    :cond_0
    invoke-virtual {p3, p6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "textColor"

    .line 647
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    .line 649
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$9;

    invoke-direct {p1, p0, p5, p6, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher$9;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;ILandroid/view/View;)V

    .line 660
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOtherRunnablesForNightUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string p1, "drawable"

    .line 662
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 663
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p1, p6}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 664
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 666
    :cond_3
    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "src"

    .line 669
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    .line 671
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 672
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$10;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$10;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 685
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    .line 687
    :cond_5
    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "alpha"

    .line 690
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_7

    .line 692
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$11;

    invoke-direct {p1, p0, p3, p5}, Lcom/xiaopeng/lib/themeswitch/Switcher$11;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/lang/String;)V

    .line 698
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOtherRunnablesForNightUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 700
    :cond_7
    invoke-static {p5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_8
    const-string p5, "textColorHint"

    .line 703
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_a

    if-nez p1, :cond_9

    .line 705
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$12;

    invoke-direct {p1, p0, p3, p6}, Lcom/xiaopeng/lib/themeswitch/Switcher$12;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;I)V

    .line 711
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOtherRunnablesForNightUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 713
    :cond_9
    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto/16 :goto_0

    :cond_a
    const-string p5, "thumb"

    .line 716
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    if-nez p1, :cond_b

    .line 718
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 719
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$13;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$13;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 732
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    .line 734
    :cond_b
    check-cast p3, Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_c
    const-string p5, "progressDrawable"

    .line 736
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_e

    if-nez p1, :cond_d

    .line 738
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 739
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$14;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$14;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 752
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    .line 754
    :cond_d
    check-cast p3, Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_e
    const-string p5, "button"

    .line 756
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_10

    if-nez p1, :cond_f

    .line 758
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 759
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$15;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$15;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 772
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    .line 774
    :cond_f
    check-cast p3, Landroid/widget/CompoundButton;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_10
    const-string p5, "divider"

    .line 776
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_12

    if-nez p1, :cond_11

    .line 778
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 779
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$16;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$16;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 792
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    .line 794
    :cond_11
    check-cast p3, Landroid/widget/ListView;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_12
    const-string p5, "drawableLeft"

    .line 796
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_14

    if-nez p1, :cond_13

    .line 798
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 799
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$17;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$17;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 812
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto/16 :goto_0

    :cond_13
    const/4 p1, 0x0

    .line 814
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_14
    const-string p5, "drawableTop"

    .line 816
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_16

    if-nez p1, :cond_15

    .line 818
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 819
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$18;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$18;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 832
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto :goto_0

    .line 834
    :cond_15
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v1, p3, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_16
    const-string p5, "drawableRight"

    .line 836
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_18

    if-nez p1, :cond_17

    .line 838
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 839
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$19;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$19;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 852
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto :goto_0

    :cond_17
    const/4 p1, 0x2

    .line 854
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_18
    const-string p5, "drawableBottom"

    .line 857
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1a

    if-nez p1, :cond_19

    .line 859
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 860
    new-instance p1, Lcom/xiaopeng/lib/themeswitch/Switcher$20;

    invoke-direct {p1, p0, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher$20;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 873
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-static {p2, p6, p1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    goto :goto_0

    :cond_19
    const/4 p1, 0x3

    .line 875
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    :goto_0
    return-void
.end method

.method private getThemePageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-_Adapter_-"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private onSwitchFinish()V
    .locals 2

    const-string v0, "ThemeSwitcher"

    const-string v1, "onSwitchFinish"

    .line 939
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 940
    iput-boolean v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mIsSwitching:Z

    .line 941
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOnSwitchFinishListener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;

    if-eqz v1, :cond_0

    const-string v1, "onSwitchFinish: notify listener."

    .line 942
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOnSwitchFinishListener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;->onSwitchFinish()V

    :cond_0
    return-void
.end method

.method private parseThemeConfigure(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;
    .locals 3

    const-string v0, "ThemeSwitcher"

    const/4 v1, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "theme_night.xml"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/themeswitch/XmlParser;->parseXMLWithPull(Ljava/io/InputStream;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    move-result-object v1

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pageTheme=\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseThemeConfigure Exception e="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private parseThemeConfigure(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;)V
    .locals 1

    .line 317
    invoke-static {}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getInstance()Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getPageTheme(Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {p3, v0}, Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;->onThemeConfigureParse(Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher$3;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postBackground(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private setCompoundDrawables(ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 882
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 883
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 884
    aput-object p3, v0, p1

    .line 885
    aget-object p1, v0, v3

    const/4 p3, 0x1

    aget-object p3, v0, p3

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private storeDayPage(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 225
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    invoke-direct {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;-><init>()V

    .line 226
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->setRootView(Landroid/view/View;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private switchViewAttr(ZLandroid/view/View;Ljava/lang/String;)V
    .locals 9

    .line 359
    invoke-direct {p0, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->getThemePageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p1, :cond_0

    .line 363
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageViewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageViewCount:I

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPageThemeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    const-string v1, "ThemeSwitcher"

    if-nez v0, :cond_2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<< call switchViewAttr, target pageTheme "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is null, isCalledInRegisterEntry = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 371
    iget-object v7, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/xiaopeng/lib/themeswitch/Switcher$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/lib/themeswitch/Switcher$4;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;ZLandroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, v7, v6, v8}, Lcom/xiaopeng/lib/themeswitch/Switcher;->parseThemeConfigure(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;)V

    goto :goto_0

    .line 385
    :cond_1
    new-instance v7, Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/lib/themeswitch/Switcher$5;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;ZLandroid/view/View;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 409
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get PageTheme from Cache:mPageThemeMap, isCalledInRegisterEntry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switchViewAttr(ZLandroid/view/View;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    .line 411
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->updateNightThemeAsync(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private switchViewAttr(ZLandroid/view/View;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 499
    iget-object v0, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 500
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getViewList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v13, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v12

    :goto_1
    if-eqz v13, :cond_2

    .line 505
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    invoke-direct {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;-><init>()V

    .line 506
    invoke-virtual {v0, v9}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->setRootView(Landroid/view/View;)V

    .line 507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->setViewList(Ljava/util/List;)V

    .line 508
    iget-object v1, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_2
    invoke-direct {v8, v10}, Lcom/xiaopeng/lib/themeswitch/Switcher;->checkAndResetTargetPageRunnableInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 517
    invoke-virtual/range {p4 .. p4}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;

    .line 518
    iget-object v1, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 520
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_4

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find target view(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") to switch theme!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeSwitcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-eqz v13, :cond_5

    .line 526
    iget-object v2, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 527
    new-instance v2, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;

    invoke-direct {v2}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;-><init>()V

    .line 528
    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->setId(I)V

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->setAttrList(Ljava/util/List;)V

    .line 530
    iget-object v1, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_5
    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->getAttrList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;

    .line 534
    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->getAttrName()Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->getAttrValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "/"

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v12

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v3, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    move-object v6, v1

    goto :goto_4

    :cond_6
    move-object v6, v0

    move/from16 v17, v1

    :goto_4
    const/4 v1, 0x0

    const-string v0, "background"

    .line 552
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 553
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_7
    :goto_5
    move-object v0, v5

    goto/16 :goto_6

    :cond_8
    const-string v0, "textColor"

    .line 555
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "drawable"

    .line 556
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    move-object v1, v7

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_6

    .line 560
    :cond_9
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_a
    const-string v0, "src"

    .line 563
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 564
    move-object v0, v7

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    :cond_b
    const-string v0, "alpha"

    .line 566
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 567
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_5

    :cond_c
    const-string v0, "textColorHint"

    .line 569
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 570
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_d
    const-string v0, "thumb"

    .line 572
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 574
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    .line 575
    move-object v0, v7

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    :cond_e
    const-string v0, "progressDrawable"

    .line 578
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 579
    move-object v0, v7

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    :cond_f
    const-string v0, "button"

    .line 581
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 585
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mButtonDrawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 586
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 587
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_5

    :cond_10
    const-string v0, "divider"

    .line 594
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 595
    move-object v0, v7

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    :cond_11
    const-string v0, "drawableLeft"

    .line 597
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 598
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v11

    goto/16 :goto_5

    :cond_12
    const-string v0, "drawableTop"

    .line 600
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 601
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v12

    goto/16 :goto_5

    :cond_13
    const-string v0, "drawableRight"

    .line 603
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 604
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    goto/16 :goto_5

    :cond_14
    const-string v0, "drawableBottom"

    .line 606
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 607
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    goto/16 :goto_5

    :goto_6
    if-eqz v13, :cond_15

    .line 613
    new-instance v2, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;

    invoke-direct {v2}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;-><init>()V

    .line 614
    invoke-virtual {v2, v0}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;->setAttrName(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v2, v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView$ViewAttr;->setAttrValue(Ljava/lang/Object;)V

    .line 616
    iget-object v0, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getViewList()Ljava/util/List;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme;->getViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/bean/PrePageTheme$ThemeView;->getAttrList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v14

    move-object v4, v7

    move-object/from16 v18, v7

    move/from16 v7, v17

    .line 619
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/themeswitch/Switcher;->doSwitch2Night(ZLjava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v7, v18

    goto/16 :goto_3

    :cond_16
    return-void
.end method

.method private updateNightThemeAsync(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mCountOfDrawablesInPageView:I

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 442
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/Switcher$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/themeswitch/Switcher$6;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;)V

    .line 464
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/Switcher$7;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/xiaopeng/lib/themeswitch/Switcher$7;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    .line 490
    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postBackground(Ljava/lang/Runnable;)V

    return-void

    .line 435
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<<<< updateNightDrawableAsync, return, isCalledInRegisterEntry = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThemeSwitcher"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public varargs addNewThemeResource([I)V
    .locals 4

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 105
    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mThemeResourceSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearNightUpdateRunnableList(Ljava/lang/String;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mNightUpdateMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-_Adapter_-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mPrePageViewMap size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeSwitcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearPreViewSettings(Ljava/lang/String;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-_Adapter_-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mPrePageViewMap size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeSwitcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method isSwitching()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mIsSwitching:Z

    return v0
.end method

.method public newThemeNameForRepeatView(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-_Adapter_-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/xiaopeng/lib/themeswitch/Switcher;->VIEW_FLAG:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public register(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeSwitcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mPrePageViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-_Adapter_-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getInstance()Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->isNight()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switchViewAttr(ZLandroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->storeDayPage(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerWithoutRepeat(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerWithoutRepeat pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeSwitcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-_Adapter_-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 195
    invoke-static {}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getInstance()Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->isNight()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 196
    invoke-direct {p0, p3, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switchViewAttr(ZLandroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->storeDayPage(Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOnSwitchFinishListener(Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mOnSwitchFinishListener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;

    return-void
.end method

.method public switch2Day()V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mIsSwitching:Z

    .line 264
    iput-boolean v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mKeepSwitching2Day:Z

    .line 266
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/Switcher$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/themeswitch/Switcher$2;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switch2Night()V
    .locals 1

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mIsSwitching:Z

    .line 232
    iput-boolean v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher;->mKeepSwitching2Night:Z

    .line 234
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/Switcher$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/themeswitch/Switcher$1;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->clearPreViewSettings(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->clearNightUpdateRunnableList(Ljava/lang/String;)V

    return-void
.end method
