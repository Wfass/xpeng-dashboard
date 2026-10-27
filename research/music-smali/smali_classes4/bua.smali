.class public Lbua;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VuiRecyclerViewScrollListener.java"


# instance fields
.field private a:Lbty;


# direct methods
.method public constructor <init>(Lbty;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lbua;->a:Lbty;

    .line 12
    iput-object p1, p0, Lbua;->a:Lbty;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 19
    iget-object p1, p0, Lbua;->a:Lbty;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lbty;->b()V

    :cond_0
    return-void
.end method
