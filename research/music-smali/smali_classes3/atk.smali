.class public Latk;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MineLeftItemDecoration.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 13
    iput p1, p0, Latk;->a:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 18
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 20
    iget p2, p0, Latk;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 22
    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method
