.class public Lcom/xiaopeng/musicradio/widget/recyclerview/e;
.super Lme/drakeet/multitype/e;
.source "BaseMultiTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;,
        Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;,
        Lcom/xiaopeng/musicradio/widget/recyclerview/e$b;
    }
.end annotation


# instance fields
.field protected b:Landroidx/recyclerview/widget/RecyclerView;

.field protected c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lme/drakeet/multitype/e;-><init>()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lme/drakeet/multitype/g;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 66
    invoke-interface {v0, v2}, Lme/drakeet/multitype/g;->a(I)Lme/drakeet/multitype/c;

    move-result-object v3

    .line 67
    instance-of v4, v3, Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    if-eqz v4, :cond_0

    .line 68
    check-cast v3, Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v3, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lme/drakeet/multitype/g;
    .locals 1

    .line 37
    invoke-super {p0}, Lme/drakeet/multitype/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    return-void
.end method

.method public a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lme/drakeet/multitype/c<",
            "TT;*>;)V"
        }
    .end annotation

    .line 28
    invoke-super {p0, p1, p2}, Lme/drakeet/multitype/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 29
    instance-of p1, p2, Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    if-eqz p1, :cond_0

    .line 30
    check-cast p2, Lcom/xiaopeng/musicradio/widget/recyclerview/d;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p2, Lcom/xiaopeng/musicradio/widget/recyclerview/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e$b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$b;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 43
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 44
    invoke-super {p0, p1}, Lme/drakeet/multitype/e;->a(Ljava/util/List;)V

    .line 45
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lme/drakeet/multitype/e;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->c()V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lme/drakeet/multitype/e;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->c()V

    return-void
.end method
