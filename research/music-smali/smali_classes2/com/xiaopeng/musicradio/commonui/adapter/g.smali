.class public abstract Lcom/xiaopeng/musicradio/commonui/adapter/g;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "RvDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/adapter/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/List<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    .line 104
    new-instance p1, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/g;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/commonui/adapter/g;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->j()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/commonui/adapter/g;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->notifyDataSetChanged()V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->j()V

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->notifyDataSetChanged()V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update1: size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiffBaseAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->j()V

    return-void

    .line 55
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    new-instance p1, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/g;Ljava/util/List;)V

    invoke-static {p1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 125
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;II)Z"
        }
    .end annotation
.end method

.method protected b(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;II)Z"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected g()V
    .locals 0

    return-void
.end method
