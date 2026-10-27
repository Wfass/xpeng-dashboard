.class public final Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;
.super Landroid/widget/FrameLayout;
.source "RecyclerViewAdapterV1.java"

# interfaces
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/OnChildAttachStateChangeListenerOEMV1;
.implements Lcom/android/car/ui/plugin/oemapis/recyclerview/OnScrollListenerOEMV1;
.implements Lcom/android/car/ui/preference/PreferenceFragment$a;
.implements Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final mChildAttachStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

.field private mOEMAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

.field private mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

.field private mRecyclerView:Lcom/android/car/ui/recyclerview/m;

.field private final mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mChildAttachStateChangeListeners:Ljava/util/List;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setPadding(IIII)V

    return-void
.end method

.method private static toInternalScrollState(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 0

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mChildAttachStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mChildAttachStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->clearOnScrollListeners()V

    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 357
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->clearOnScrollListeners()V

    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findViewHolderForAdapterPosition(I)Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    .line 392
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/n$a;

    if-eqz v0, :cond_0

    .line 393
    check-cast p1, Lcom/android/car/ui/recyclerview/n$a;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/n$a;->a()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->findViewHolderForLayoutPosition(I)Lcom/android/car/ui/plugin/oemapis/recyclerview/ViewHolderOEMV1;

    move-result-object p1

    .line 401
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/n$a;

    if-eqz v0, :cond_0

    .line 402
    check-cast p1, Lcom/android/car/ui/recyclerview/n$a;

    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/n$a;->a()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getEndAfterPadding()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getEndAfterPadding()I

    move-result v0

    return v0
.end method

.method public getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemDecorationCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutStyle()Lcom/android/car/ui/recyclerview/d;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0

    .line 539
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getPaddingRight()I

    move-result v0

    return v0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0

    .line 515
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0

    .line 531
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getPaddingLeft()I

    move-result v0

    return v0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0

    .line 523
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mRecyclerView:Lcom/android/car/ui/recyclerview/m;

    return-object v0
.end method

.method public getRecyclerViewChildAt(I)Landroid/view/View;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getRecyclerViewChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getRecyclerViewChildCount()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getRecyclerViewChildCount()I

    move-result v0

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getScrollState()I

    move-result v0

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->toInternalScrollState(I)I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getStartAfterPadding()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getTotalSpace()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->hasFixedSize()Z

    move-result v0

    return v0
.end method

.method public invalidateItemDecorations()V
    .locals 0

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mChildAttachStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 617
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mChildAttachStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 624
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;I)V
    .locals 2

    .line 362
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;

    .line 363
    invoke-static {p2}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->toInternalScrollState(I)I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;->a(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrolled(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;II)V
    .locals 1

    .line 369
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;

    .line 370
    invoke-interface {v0, p0, p2, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;->a(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 0

    return-void
.end method

.method public removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mChildAttachStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnScrollListener(Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 304
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 305
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    .line 306
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setAdapter(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    if-eqz v1, :cond_1

    .line 309
    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    invoke-interface {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;->b(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    .line 311
    :cond_1
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 312
    new-instance v0, Lcom/android/car/ui/recyclerview/n;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/car/ui/recyclerview/n;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    .line 313
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMAdapter:Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;

    invoke-interface {v0, v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setAdapter(Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterOEMV1;)V

    .line 314
    instance-of v0, p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    if-eqz v0, :cond_2

    .line 315
    check-cast p1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;

    invoke-interface {p1, p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$b;->a(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setHasFixedSize(Z)V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 141
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/b;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/android/car/ui/recyclerview/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/android/car/ui/recyclerview/e;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/android/car/ui/recyclerview/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V

    :goto_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .line 152
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 153
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 155
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 158
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_3

    .line 165
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_3

    .line 175
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 176
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 177
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 182
    :cond_3
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mWidth:I

    .line 183
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mHeight:I

    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V
    .locals 1

    .line 461
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    if-nez p1, :cond_0

    .line 463
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setLayoutStyle(Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;)V

    return-void

    .line 467
    :cond_0
    new-instance v0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1$1;-><init>(Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;Lcom/android/car/ui/recyclerview/d;)V

    .line 498
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz p1, :cond_1

    .line 499
    invoke-interface {p1, v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->setLayoutStyle(Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;)V

    :cond_1
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 0

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    if-eqz v0, :cond_0

    .line 567
    invoke-interface {v0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public setRecyclerViewOEMV1(Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;)V
    .locals 3

    .line 106
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    .line 108
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getLayoutStyle()Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;->getLayoutType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 110
    new-instance v0, Lcom/android/car/ui/recyclerview/b;

    invoke-direct {v0}, Lcom/android/car/ui/recyclerview/b;-><init>()V

    .line 111
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;->getReverseLayout()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/car/ui/recyclerview/b;->a(Z)V

    .line 112
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;->getSpanCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/car/ui/recyclerview/b;->a(I)V

    .line 113
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;->getOrientation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/car/ui/recyclerview/b;->b(I)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;->getSize()I

    move-result v1

    .line 114
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/b;->c(I)V

    .line 116
    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    goto :goto_2

    .line 118
    :cond_1
    new-instance v0, Lcom/android/car/ui/recyclerview/e;

    invoke-direct {v0}, Lcom/android/car/ui/recyclerview/e;-><init>()V

    .line 119
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;->getReverseLayout()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/car/ui/recyclerview/e;->a(Z)V

    .line 120
    invoke-interface {p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/LayoutStyleOEMV1;->getOrientation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/car/ui/recyclerview/e;->a(I)V

    if-nez p2, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    invoke-interface {p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewAttributesOEMV1;->getSize()I

    move-result v1

    .line 121
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/e;->b(I)V

    .line 123
    iput-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    .line 128
    :goto_2
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance p2, Lcom/android/car/ui/recyclerview/m;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/android/car/ui/recyclerview/m;-><init>(Landroid/content/Context;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mRecyclerView:Lcom/android/car/ui/recyclerview/m;

    .line 130
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mRecyclerView:Lcom/android/car/ui/recyclerview/m;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {p1, p0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->addOnScrollListener(Lcom/android/car/ui/plugin/oemapis/recyclerview/OnScrollListenerOEMV1;)V

    .line 133
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {p1, p0}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->addOnChildAttachStateChangeListener(Lcom/android/car/ui/plugin/oemapis/recyclerview/OnChildAttachStateChangeListenerOEMV1;)V

    .line 135
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mWidth:I

    iget v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mHeight:I

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 136
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    instance-of v1, v0, Lcom/android/car/ui/recyclerview/b;

    if-eqz v1, :cond_0

    .line 609
    check-cast v0, Lcom/android/car/ui/recyclerview/b;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/recyclerview/b;->a(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 610
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mLayoutStyle:Lcom/android/car/ui/recyclerview/d;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->setLayoutStyle(Lcom/android/car/ui/recyclerview/d;)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/RecyclerViewAdapterV1;->mOEMRecyclerView:Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;

    invoke-interface {v0, p1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/RecyclerViewOEMV1;->smoothScrollToPosition(I)V

    return-void
.end method
