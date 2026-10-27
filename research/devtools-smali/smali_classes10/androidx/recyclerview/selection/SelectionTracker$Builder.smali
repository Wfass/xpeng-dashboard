.class public final Landroidx/recyclerview/selection/SelectionTracker$Builder;
.super Ljava/lang/Object;
.source "SelectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private mBandOverlayId:I

.field private mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

.field private final mContext:Landroid/content/Context;

.field private mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "TK;>;"
        }
    .end annotation
.end field

.field private mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;"
        }
    .end annotation
.end field

.field private mGestureToolTypes:[I

.field private mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;"
        }
    .end annotation
.end field

.field private mMonitor:Landroidx/recyclerview/selection/OperationMonitor;

.field private mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

.field private mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

.field private mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/OnItemActivatedListener<",
            "TK;>;"
        }
    .end annotation
.end field

.field private mPointerToolTypes:[I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSelectionId:Ljava/lang/String;

.field private mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mStorage:Landroidx/recyclerview/selection/StorageStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/StorageStrategy<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/StorageStrategy;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/selection/ItemKeyProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/selection/ItemDetailsLookup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/recyclerview/selection/StorageStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;",
            "Landroidx/recyclerview/selection/ItemDetailsLookup<",
            "TK;>;",
            "Landroidx/recyclerview/selection/StorageStrategy<",
            "TK;>;)V"
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    nop

    .line 457
    invoke-static {}, Landroidx/recyclerview/selection/SelectionPredicates;->createSelectAnything()Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 458
    new-instance v0, Landroidx/recyclerview/selection/OperationMonitor;

    invoke-direct {v0}, Landroidx/recyclerview/selection/OperationMonitor;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mMonitor:Landroidx/recyclerview/selection/OperationMonitor;

    .line 462
    invoke-static {}, Landroidx/recyclerview/selection/FocusDelegate;->dummy()Landroidx/recyclerview/selection/FocusDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    .line 469
    sget v0, Landroidx/recyclerview/selection/R$drawable;->selection_band_overlay:I

    iput v0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mBandOverlayId:I

    .line 471
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mGestureToolTypes:[I

    .line 476
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    iput-object v1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mPointerToolTypes:[I

    .line 499
    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 501
    if-eqz p2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 503
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionId:Ljava/lang/String;

    .line 504
    iput-object p2, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 505
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mContext:Landroid/content/Context;

    .line 506
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 508
    iget-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 509
    if-eqz p3, :cond_3

    move p1, v0

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 510
    if-eqz p4, :cond_4

    move p1, v0

    goto :goto_4

    :cond_4
    move p1, v2

    :goto_4
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 511
    if-eqz p5, :cond_5

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 513
    iput-object p4, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    .line 514
    iput-object p3, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 515
    iput-object p5, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mStorage:Landroidx/recyclerview/selection/StorageStrategy;

    .line 517
    new-instance p1, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;

    iget-object p2, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p2, p4}, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/ItemDetailsLookup;)V

    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

    .line 518
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method static synthetic access$000(Landroidx/recyclerview/selection/SelectionTracker$Builder;)Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
    .locals 0

    .line 448
    iget-object p0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/recyclerview/selection/SelectionTracker$Builder;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 448
    iget-object p0, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/recyclerview/selection/SelectionTracker;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/selection/SelectionTracker<",
            "TK;>;"
        }
    .end annotation

    .line 662
    move-object/from16 v0, p0

    new-instance v11, Landroidx/recyclerview/selection/DefaultSelectionTracker;

    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionId:Ljava/lang/String;

    iget-object v2, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    iget-object v3, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    iget-object v4, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mStorage:Landroidx/recyclerview/selection/StorageStrategy;

    invoke-direct {v11, v1, v2, v3, v4}, Landroidx/recyclerview/selection/DefaultSelectionTracker;-><init>(Ljava/lang/String;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;Landroidx/recyclerview/selection/StorageStrategy;)V

    .line 668
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v2, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-static {v1, v11, v2}, Landroidx/recyclerview/selection/EventBridge;->install(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;)V

    .line 670
    new-instance v12, Landroidx/recyclerview/selection/ViewAutoScroller;

    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 671
    invoke-static {v1}, Landroidx/recyclerview/selection/ViewAutoScroller;->createScrollHost(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/selection/ViewAutoScroller$ScrollHost;

    move-result-object v1

    invoke-direct {v12, v1}, Landroidx/recyclerview/selection/ViewAutoScroller;-><init>(Landroidx/recyclerview/selection/ViewAutoScroller$ScrollHost;)V

    .line 679
    new-instance v13, Landroidx/recyclerview/selection/GestureRouter;

    invoke-direct {v13}, Landroidx/recyclerview/selection/GestureRouter;-><init>()V

    .line 680
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 686
    new-instance v14, Landroidx/recyclerview/selection/TouchEventRouter;

    invoke-direct {v14, v1}, Landroidx/recyclerview/selection/TouchEventRouter;-><init>(Landroid/view/GestureDetector;)V

    .line 691
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    iget-object v2, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mMonitor:Landroidx/recyclerview/selection/OperationMonitor;

    invoke-static {v11, v1, v2, v12, v3}, Landroidx/recyclerview/selection/GestureSelectionHelper;->create(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/OperationMonitor;)Landroidx/recyclerview/selection/GestureSelectionHelper;

    move-result-object v15

    .line 695
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 707
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/recyclerview/selection/SelectionTracker$Builder$1;

    invoke-direct {v1, v0}, Landroidx/recyclerview/selection/SelectionTracker$Builder$1;-><init>(Landroidx/recyclerview/selection/SelectionTracker$Builder;)V

    :goto_0
    iput-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    .line 716
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/recyclerview/selection/SelectionTracker$Builder$2;

    invoke-direct {v1, v0}, Landroidx/recyclerview/selection/SelectionTracker$Builder$2;-><init>(Landroidx/recyclerview/selection/SelectionTracker$Builder;)V

    :goto_1
    iput-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    .line 727
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    goto :goto_2

    :cond_2
    new-instance v1, Landroidx/recyclerview/selection/SelectionTracker$Builder$3;

    invoke-direct {v1, v0}, Landroidx/recyclerview/selection/SelectionTracker$Builder$3;-><init>(Landroidx/recyclerview/selection/SelectionTracker$Builder;)V

    :goto_2
    iput-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    .line 738
    new-instance v10, Landroidx/recyclerview/selection/TouchInputHandler;

    iget-object v3, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    iget-object v4, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    iget-object v5, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    new-instance v6, Landroidx/recyclerview/selection/SelectionTracker$Builder$4;

    invoke-direct {v6, v0, v15}, Landroidx/recyclerview/selection/SelectionTracker$Builder$4;-><init>(Landroidx/recyclerview/selection/SelectionTracker$Builder;Landroidx/recyclerview/selection/GestureSelectionHelper;)V

    iget-object v7, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    iget-object v8, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    iget-object v9, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    new-instance v2, Landroidx/recyclerview/selection/SelectionTracker$Builder$5;

    invoke-direct {v2, v0}, Landroidx/recyclerview/selection/SelectionTracker$Builder$5;-><init>(Landroidx/recyclerview/selection/SelectionTracker$Builder;)V

    move-object v1, v10

    move-object/from16 v16, v2

    move-object v2, v11

    move-object/from16 v17, v12

    move-object v12, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Landroidx/recyclerview/selection/TouchInputHandler;-><init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;Ljava/lang/Runnable;Landroidx/recyclerview/selection/OnDragInitiatedListener;Landroidx/recyclerview/selection/OnItemActivatedListener;Landroidx/recyclerview/selection/FocusDelegate;Ljava/lang/Runnable;)V

    .line 761
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mGestureToolTypes:[I

    array-length v2, v1

    const/4 v10, 0x0

    move v3, v10

    :goto_3
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 762
    invoke-virtual {v13, v4, v12}, Landroidx/recyclerview/selection/GestureRouter;->register(ILandroid/view/GestureDetector$OnGestureListener;)V

    .line 763
    invoke-virtual {v14, v4, v15}, Landroidx/recyclerview/selection/TouchEventRouter;->register(ILandroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 761
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 768
    :cond_3
    new-instance v8, Landroidx/recyclerview/selection/MouseInputHandler;

    iget-object v3, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    iget-object v4, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    iget-object v5, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    iget-object v6, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    iget-object v7, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    move-object v1, v8

    move-object v2, v11

    invoke-direct/range {v1 .. v7}, Landroidx/recyclerview/selection/MouseInputHandler;-><init>(Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/OnContextClickListener;Landroidx/recyclerview/selection/OnItemActivatedListener;Landroidx/recyclerview/selection/FocusDelegate;)V

    .line 776
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mPointerToolTypes:[I

    array-length v2, v1

    move v3, v10

    :goto_4
    if-ge v3, v2, :cond_4

    aget v4, v1, v3

    .line 777
    invoke-virtual {v13, v4, v8}, Landroidx/recyclerview/selection/GestureRouter;->register(ILandroid/view/GestureDetector$OnGestureListener;)V

    .line 776
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 780
    :cond_4
    const/4 v1, 0x0

    .line 784
    iget-object v2, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-virtual {v2, v10}, Landroidx/recyclerview/selection/ItemKeyProvider;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 785
    invoke-virtual {v2}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSelectMultiple()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 791
    iget-object v1, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mBandOverlayId:I

    iget-object v4, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    iget-object v6, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    iget-object v7, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

    iget-object v8, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    iget-object v9, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mMonitor:Landroidx/recyclerview/selection/OperationMonitor;

    move-object/from16 v2, v17

    move-object v5, v11

    invoke-static/range {v1 .. v9}, Landroidx/recyclerview/selection/BandSelectionHelper;->create(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/AutoScroller;ILandroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;Landroidx/recyclerview/selection/BandPredicate;Landroidx/recyclerview/selection/FocusDelegate;Landroidx/recyclerview/selection/OperationMonitor;)Landroidx/recyclerview/selection/BandSelectionHelper;

    move-result-object v1

    .line 803
    :cond_5
    new-instance v2, Landroidx/recyclerview/selection/PointerDragEventInterceptor;

    iget-object v3, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    iget-object v4, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/selection/PointerDragEventInterceptor;-><init>(Landroidx/recyclerview/selection/ItemDetailsLookup;Landroidx/recyclerview/selection/OnDragInitiatedListener;Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 806
    iget-object v0, v0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mPointerToolTypes:[I

    array-length v1, v0

    :goto_5
    if-ge v10, v1, :cond_6

    aget v3, v0, v10

    .line 807
    invoke-virtual {v14, v3, v2}, Landroidx/recyclerview/selection/TouchEventRouter;->register(ILandroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 806
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 810
    :cond_6
    return-object v11
.end method

.method public withBandOverlay(I)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 625
    iput p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mBandOverlayId:I

    .line 626
    return-object p0
.end method

.method public withBandPredicate(Landroidx/recyclerview/selection/BandPredicate;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/BandPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/BandPredicate;",
            ")",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 635
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 637
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mBandPredicate:Landroidx/recyclerview/selection/BandPredicate;

    .line 638
    return-object p0
.end method

.method public withFocusDelegate(Landroidx/recyclerview/selection/FocusDelegate;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/FocusDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/FocusDelegate<",
            "TK;>;)",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 556
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 557
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mFocusDelegate:Landroidx/recyclerview/selection/FocusDelegate;

    .line 558
    return-object p0
.end method

.method public varargs withGestureTooltypes([I)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mGestureToolTypes:[I

    .line 615
    return-object p0
.end method

.method public withOnContextClickListener(Landroidx/recyclerview/selection/OnContextClickListener;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/OnContextClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/OnContextClickListener;",
            ")",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 585
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 587
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnContextClickListener:Landroidx/recyclerview/selection/OnContextClickListener;

    .line 588
    return-object p0
.end method

.method public withOnDragInitiatedListener(Landroidx/recyclerview/selection/OnDragInitiatedListener;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/OnDragInitiatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/OnDragInitiatedListener;",
            ")",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 600
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 602
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnDragInitiatedListener:Landroidx/recyclerview/selection/OnDragInitiatedListener;

    .line 603
    return-object p0
.end method

.method public withOnItemActivatedListener(Landroidx/recyclerview/selection/OnItemActivatedListener;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/OnItemActivatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/OnItemActivatedListener<",
            "TK;>;)",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 570
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 572
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mOnItemActivatedListener:Landroidx/recyclerview/selection/OnItemActivatedListener;

    .line 573
    return-object p0
.end method

.method public withOperationMonitor(Landroidx/recyclerview/selection/OperationMonitor;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/OperationMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/OperationMonitor;",
            ")",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 544
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 545
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mMonitor:Landroidx/recyclerview/selection/OperationMonitor;

    .line 546
    return-object p0
.end method

.method public varargs withPointerTooltypes([I)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mPointerToolTypes:[I

    .line 652
    return-object p0
.end method

.method public withSelectionPredicate(Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)Landroidx/recyclerview/selection/SelectionTracker$Builder;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;)",
            "Landroidx/recyclerview/selection/SelectionTracker$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 529
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 530
    iput-object p1, p0, Landroidx/recyclerview/selection/SelectionTracker$Builder;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 531
    return-object p0
.end method
