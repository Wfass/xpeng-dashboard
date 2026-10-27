.class public abstract Landroidx/recyclerview/selection/BandPredicate;
.super Ljava/lang/Object;
.source "BandPredicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;,
        Landroidx/recyclerview/selection/BandPredicate$EmptyArea;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Landroidx/recyclerview/selection/BandPredicate;->hasSupportedLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method private static hasSupportedLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 47
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public abstract canInitiate(Landroid/view/MotionEvent;)Z
.end method
