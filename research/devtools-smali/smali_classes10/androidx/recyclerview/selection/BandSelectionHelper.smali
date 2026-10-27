.class Landroidx/recyclerview/selection/BandSelectionHelper;
.super Ljava/lang/Object;
.source "BandSelectionHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "BandSelectionHelper"


# instance fields
.field private final mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

.field private mCurrentPosition:Landroid/graphics/Point;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mGridObserver:Landroidx/recyclerview/selection/GridModel$SelectionObserver;

.field private final mHost:Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;

.field private final mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mLock:Landroidx/recyclerview/selection/OperationMonitor;

.field private mModel:Landroidx/recyclerview/selection/GridModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOrigin:Landroid/graphics/Point;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mScroller:Landroidx/recyclerview/selection/AutoScroller;

.field private final mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/BandPredicate;Landroidx/recyclerview/selection/FocusDelegate;Landroidx/recyclerview/selection/OperationMonitor;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/AutoScroller;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/ItemKeyProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/SelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/recyclerview/selection/BandPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/recyclerview/selection/FocusDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/recyclerview/selection/OperationMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;",
            "Landroidx/recyclerview/selection/AutoScroller;",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "TK;>;",
            "Landroidx/recyclerview/selection/BandPredicate;",
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;",
            "Landroidx/recyclerview/selection/OperationMonitor;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 87
    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 88
    if-eqz p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 89
    if-eqz p4, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 90
    if-eqz p5, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 91
    if-eqz p6, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 92
    if-eqz p7, :cond_6

    move v0, v1

    nop

    :cond_6
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 94
    iput-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mHost:Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;

    .line 95
    iput-object p3, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 96
    iput-object p4, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    .line 97
    iput-object p5, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

    .line 98
    iput-object p6, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    .line 99
    iput-object p7, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    .line 101
    iget-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mHost:Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;

    new-instance p3, Landroidx/recyclerview/selection/BandSelectionHelper$1;

    invoke-direct {p3, p0}, Landroidx/recyclerview/selection/BandSelectionHelper$1;-><init>(Landroidx/recyclerview/selection/BandSelectionHelper;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 109
    iput-object p2, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mScroller:Landroidx/recyclerview/selection/AutoScroller;

    .line 111
    new-instance p1, Landroidx/recyclerview/selection/BandSelectionHelper$2;

    invoke-direct {p1, p0}, Landroidx/recyclerview/selection/BandSelectionHelper$2;-><init>(Landroidx/recyclerview/selection/BandSelectionHelper;)V

    iput-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mGridObserver:Landroidx/recyclerview/selection/GridModel$SelectionObserver;

    .line 117
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/selection/BandSelectionHelper;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/selection/BandSelectionHelper;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/selection/BandSelectionHelper;)Landroidx/recyclerview/selection/SelectionTracker;
    .locals 0

    .line 56
    iget-object p0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    return-object p0
.end method

.method static create(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/AutoScroller;ILandroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;Landroidx/recyclerview/selection/BandPredicate;Landroidx/recyclerview/selection/FocusDelegate;Landroidx/recyclerview/selection/OperationMonitor;)Landroidx/recyclerview/selection/BandSelectionHelper;
    .locals 9
    .param p0    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/recyclerview/selection/AutoScroller;
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
    .param p4    # Landroidx/recyclerview/selection/SelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/recyclerview/selection/BandPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroidx/recyclerview/selection/FocusDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroidx/recyclerview/selection/OperationMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/selection/AutoScroller;",
            "I",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "TK;>;",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;",
            "Landroidx/recyclerview/selection/BandPredicate;",
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;",
            "Landroidx/recyclerview/selection/OperationMonitor;",
            ")",
            "Landroidx/recyclerview/selection/BandSelectionHelper;"
        }
    .end annotation

    .line 135
    new-instance v8, Landroidx/recyclerview/selection/BandSelectionHelper;

    new-instance v1, Landroidx/recyclerview/selection/DefaultBandHost;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/recyclerview/selection/DefaultBandHost;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)V

    move-object v0, v8

    move-object v2, p1

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroidx/recyclerview/selection/BandSelectionHelper;-><init>(Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/BandPredicate;Landroidx/recyclerview/selection/FocusDelegate;Landroidx/recyclerview/selection/OperationMonitor;)V

    return-object v8
.end method

.method private endBandSelect()V
    .locals 3

    .line 295
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/GridModel;->getPositionNearestOrigin()I

    move-result v0

    .line 296
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    iget-object v2, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 297
    invoke-virtual {v2, v0}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/selection/SelectionTracker;->isSelected(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/selection/SelectionTracker;->anchorRange(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->mergeProvisionalSelection()V

    .line 305
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->reset()V

    .line 306
    return-void
.end method

.method private onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 313
    return-void

    .line 318
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 319
    invoke-direct {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->resizeBand()V

    .line 320
    return-void
.end method

.method private resizeBand()V
    .locals 6

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 271
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 272
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 273
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 276
    iget-object v1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mHost:Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;->showBand(Landroid/graphics/Rect;)V

    .line 277
    return-void
.end method

.method private startBandSelect(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 246
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isCtrlKeyPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mSelectionTracker:Landroidx/recyclerview/selection/SelectionTracker;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/SelectionTracker;->clearSelection()Z

    .line 250
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->getOrigin(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object p1

    .line 253
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mHost:Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;->createGridModel()Landroidx/recyclerview/selection/GridModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    .line 254
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    iget-object v1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mGridObserver:Landroidx/recyclerview/selection/GridModel$SelectionObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/selection/GridModel;->addOnSelectionChangedListener(Landroidx/recyclerview/selection/GridModel$SelectionObserver;)V

    .line 256
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/OperationMonitor;->start()V

    .line 257
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/FocusDelegate;->clearFocus()V

    .line 258
    iput-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    .line 262
    iget-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/selection/GridModel;->startCapturing(Landroid/graphics/Point;)V

    .line 263
    return-void
.end method


# virtual methods
.method isActive()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 147
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    invoke-virtual {p0, p2}, Landroidx/recyclerview/selection/BandSelectionHelper;->shouldStart(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0, p2}, Landroidx/recyclerview/selection/BandSelectionHelper;->startBandSelect(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/selection/BandSelectionHelper;->shouldStop(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    invoke-direct {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->endBandSelect()V

    .line 203
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 238
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    invoke-virtual {p0, p2}, Landroidx/recyclerview/selection/BandSelectionHelper;->shouldStop(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->endBandSelect()V

    .line 213
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 220
    return-void

    .line 228
    :cond_1
    invoke-static {p2}, Landroidx/recyclerview/selection/MotionEvents;->getOrigin(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    .line 230
    iget-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    iget-object p2, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/GridModel;->resizeSelection(Landroid/graphics/Point;)V

    .line 232
    invoke-direct {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->resizeBand()V

    .line 233
    iget-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mScroller:Landroidx/recyclerview/selection/AutoScroller;

    iget-object p2, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mCurrentPosition:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/AutoScroller;->scroll(Landroid/graphics/Point;)V

    .line 234
    return-void
.end method

.method reset()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mHost:Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;->hideBand()V

    .line 164
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/GridModel;->stopCapturing()V

    .line 166
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/GridModel;->onDestroy()V

    .line 169
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mModel:Landroidx/recyclerview/selection/GridModel;

    .line 170
    iput-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mOrigin:Landroid/graphics/Point;

    .line 172
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mScroller:Landroidx/recyclerview/selection/AutoScroller;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/AutoScroller;->reset()V

    .line 173
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mLock:Landroidx/recyclerview/selection/OperationMonitor;

    invoke-virtual {v0}, Landroidx/recyclerview/selection/OperationMonitor;->stop()V

    .line 174
    return-void
.end method

.method shouldStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 181
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isPrimaryMouseButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper;->mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

    .line 183
    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/BandPredicate;->canInitiate(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method shouldStop(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroidx/recyclerview/selection/BandSelectionHelper;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isActionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isActionPointerUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {p1}, Landroidx/recyclerview/selection/MotionEvents;->isActionCancel(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
