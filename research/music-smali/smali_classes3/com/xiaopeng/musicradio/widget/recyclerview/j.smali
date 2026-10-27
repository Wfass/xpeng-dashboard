.class public Lcom/xiaopeng/musicradio/widget/recyclerview/j;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LinearItemDecoration.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->a:I

    .line 20
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->d:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->a:I

    .line 24
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->d:I

    .line 25
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->e:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    .line 45
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 46
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 47
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 48
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 49
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-nez p2, :cond_2

    .line 51
    iget-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->b:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->c:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->e:I

    if-lez p4, :cond_3

    .line 54
    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->a:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 57
    :cond_2
    iget-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->c:Z

    if-nez p4, :cond_3

    .line 58
    iget p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->a:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_1
    if-ne p2, p3, :cond_5

    .line 61
    iget-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->b:Z

    if-nez p4, :cond_4

    iget-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->c:Z

    if-eqz p4, :cond_5

    .line 62
    :cond_4
    iget p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->a:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    if-ne p2, p3, :cond_6

    .line 65
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;->d:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    return-void
.end method
