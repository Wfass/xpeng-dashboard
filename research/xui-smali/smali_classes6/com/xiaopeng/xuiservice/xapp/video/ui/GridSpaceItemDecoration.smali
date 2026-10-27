.class public Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpaceItemDecoration.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mColumnSpacing:I

.field private mRowSpacing:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "spanCount"    # I
    .param p2, "rowSpacing"    # I
    .param p3, "columnSpacing"    # I

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    const-string v0, "GridSpaceItemDecoration"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->TAG:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mSpanCount:I

    .line 19
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mRowSpacing:I

    .line 20
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mColumnSpacing:I

    .line 21
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5
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

    .line 26
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 27
    .local v0, "position":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mSpanCount:I

    rem-int v1, v0, v1

    .line 28
    .local v1, "column":I
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mColumnSpacing:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mSpanCount:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 29
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mColumnSpacing:I

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mColumnSpacing:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mSpanCount:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 30
    const-string v2, "GridSpaceItemDecoration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "    columnIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "    left,right ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mSpanCount:I

    if-lt v0, v2, :cond_0

    .line 34
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/GridSpaceItemDecoration;->mRowSpacing:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 36
    :cond_0
    return-void
.end method
