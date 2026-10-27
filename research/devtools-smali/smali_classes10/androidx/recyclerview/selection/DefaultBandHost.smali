.class final Landroidx/recyclerview/selection/DefaultBandHost;
.super Landroidx/recyclerview/selection/GridModel$GridHost;
.source "DefaultBandHost.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/selection/GridModel$GridHost<",
        "TK;>;"
    }
.end annotation


# static fields
.field private static final NILL_RECT:Landroid/graphics/Rect;


# instance fields
.field private final mBand:Landroid/graphics/drawable/Drawable;

.field private final mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/recyclerview/selection/DefaultBandHost;->NILL_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/ItemKeyProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "I",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel$GridHost;-><init>()V

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 55
    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mBand:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mBand:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 59
    if-eqz p3, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 60
    if-eqz p4, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 62
    iput-object p3, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 63
    iput-object p4, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 65
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/selection/DefaultBandHost$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/selection/DefaultBandHost$1;-><init>(Landroidx/recyclerview/selection/DefaultBandHost;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/selection/DefaultBandHost;Landroid/graphics/Canvas;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/DefaultBandHost;->onDrawBand(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private onDrawBand(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mBand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    return-void
.end method


# virtual methods
.method addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 90
    return-void
.end method

.method createAbsolutePoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v2

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    add-int/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method createGridModel()Landroidx/recyclerview/selection/GridModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/selection/GridModel<",
            "TK;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Landroidx/recyclerview/selection/GridModel;

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    iget-object v2, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/selection/GridModel;-><init>(Landroidx/recyclerview/selection/GridModel$GridHost;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)V

    return-object v0
.end method

.method getAbsoluteRectForChildViewAt(I)Landroid/graphics/Rect;
    .locals 2

    .line 105
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 108
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 109
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 110
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 111
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 112
    return-object v0
.end method

.method getAdapterPositionAt(I)I
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method getColumnCount()I
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 123
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method getVisibleChildCount()I
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method hasView(I)Z
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method hideBand()V
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mBand:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroidx/recyclerview/selection/DefaultBandHost;->NILL_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 144
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 145
    return-void
.end method

.method removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 95
    return-void
.end method

.method showBand(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mBand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 138
    return-void
.end method
