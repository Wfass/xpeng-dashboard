.class public Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecyclerItemDecoration.java"


# instance fields
.field private mListSize:I

.field private mOffSet:I

.field private mRowSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "offSet"    # I
    .param p2, "recyclerListSize"    # I
    .param p3, "rowSize"    # I

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 15
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mOffSet:I

    .line 16
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mListSize:I

    .line 17
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mRowSize:I

    .line 18
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 23
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 24
    .local v0, "position":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mListSize:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mRowSize:I

    rem-int/2addr v1, v2

    .line 25
    .local v1, "column":I
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mListSize:I

    if-nez v1, :cond_0

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mRowSize:I

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    .line 26
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/RecyclerItemDecoration;->mOffSet:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 28
    :cond_1
    return-void
.end method
