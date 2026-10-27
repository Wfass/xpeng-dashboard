.class public abstract Lcom/xiaopeng/musicradio/widget/recyclerview/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected e:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

.field protected f:Z

.field protected g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/f;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/f;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/f;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/f;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
