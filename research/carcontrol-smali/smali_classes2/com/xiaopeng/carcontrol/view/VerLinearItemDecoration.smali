.class public Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VerLinearItemDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VerLinearItemDecoration"


# instance fields
.field private bottomSpacing:I

.field private includeEdge:Z

.field private justEdge:Z

.field public needRightPadding:Z

.field private rightSpacing:I

.field private spacing:I

.field private topSpacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spacing"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->spacing:I

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "spacing",
            "needRightPadding",
            "rightSpacing"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->spacing:I

    .line 26
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->needRightPadding:Z

    .line 27
    iput p3, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->rightSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p4, 0x0

    .line 47
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 48
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    .line 50
    instance-of v0, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 52
    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 53
    div-int/2addr v0, p4

    .line 54
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 55
    iget p3, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->spacing:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 56
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->needRightPadding:Z

    if-eqz p3, :cond_1

    .line 57
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 58
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->rightSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 60
    :cond_0
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->rightSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setIncludeEdge(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "includeEdge"
        }
    .end annotation

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->includeEdge:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->justEdge:Z

    :cond_0
    return-void
.end method

.method public setJustEdge(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "justEdge"
        }
    .end annotation

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->justEdge:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;->includeEdge:Z

    :cond_0
    return-void
.end method
