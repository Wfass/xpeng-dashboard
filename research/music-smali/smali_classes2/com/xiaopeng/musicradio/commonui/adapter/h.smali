.class public abstract Lcom/xiaopeng/musicradio/commonui/adapter/h;
.super Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.source "RvDataBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected e:Landroidx/recyclerview/widget/RecyclerView;

.field protected f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    .line 63
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemRangeInserted(II)V

    :cond_1
    return-void
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d()V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->d:Ljava/util/List;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/h;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
