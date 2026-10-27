.class public abstract Lbnm;
.super Lcom/xiaopeng/musicradio/commonui/adapter/f;
.source "BaseSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/f<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field protected g:Landroid/content/Context;

.field protected h:Lbnn;

.field protected i:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILbnn;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/f;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lbnm;->g:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lbnm;->h:Lbnn;

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lbnm;->b(Z)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lbnm;->c()Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lbnm;->a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 48
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method
