.class public abstract Lcom/xiaopeng/musicradio/commonui/adapter/f;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "RVBaseFooterDataBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/adapter/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "TT;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public b(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/f;->h:Z

    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/f;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()Landroid/view/View;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/f;->g:Landroid/view/View;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    .line 53
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/f;->h:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/f;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/f;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/f;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/f;->g:Landroid/view/View;

    .line 43
    new-instance p1, Lcom/xiaopeng/musicradio/commonui/adapter/f$a;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/f;->g:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/f$a;-><init>(Landroid/view/View;)V

    return-object p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there is no type that matches the type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + make sure your using types correctly"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
