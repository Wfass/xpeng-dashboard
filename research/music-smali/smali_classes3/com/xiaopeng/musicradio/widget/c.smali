.class public abstract Lcom/xiaopeng/musicradio/widget/c;
.super Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.source "HFRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/c$a;,
        Lcom/xiaopeng/musicradio/widget/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;"
    }
.end annotation


# instance fields
.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected i:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;ZZ)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/c;->h:Ljava/util/List;

    .line 42
    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/c;->d:Z

    .line 43
    iput-boolean p5, p0, Lcom/xiaopeng/musicradio/widget/c;->e:Z

    return-void
.end method

.method private b(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(I)Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/c;->getItemCount()I

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


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/c;->h:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/c;->h:Ljava/util/List;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 99
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/c;->d:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 102
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/c;->e:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/c;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public k()Z
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->e:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/c;->getItemCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    return v1

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/c;->e:Z

    if-eqz v0, :cond_2

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/c;->getItemCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/c;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/c;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/widget/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/widget/c;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/c;->f:Landroid/view/View;

    .line 76
    new-instance p1, Lcom/xiaopeng/musicradio/widget/c$b;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/c;->f:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/widget/c$b;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/widget/c;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/c;->g:Landroid/view/View;

    .line 80
    new-instance p1, Lcom/xiaopeng/musicradio/widget/c$a;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/c;->g:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/widget/c$a;-><init>(Landroid/view/View;)V

    return-object p1

    .line 83
    :cond_2
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
