.class public Lcom/xiaopeng/musicradio/commonui/widget/b;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BottomItemDecoration.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/b;->a:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    .line 28
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/b;->a:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 30
    :cond_1
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/b;->b:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void
.end method
