.class public abstract Lcom/xiaopeng/musicradio/widget/recyclerview/b;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/f;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/widget/recyclerview/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/f;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
