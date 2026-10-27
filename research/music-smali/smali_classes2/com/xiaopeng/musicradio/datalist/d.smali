.class public abstract Lcom/xiaopeng/musicradio/datalist/d;
.super Lcom/xiaopeng/musicradio/datalist/r;
.source "DataListAdapter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/datalist/d$a;,
        Lcom/xiaopeng/musicradio/datalist/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/xiaopeng/musicradio/datalist/h;",
        ">",
        "Lcom/xiaopeng/musicradio/datalist/r<",
        "TVH;>;",
        "Lcom/xiaopeng/musicradio/datalist/i;"
    }
.end annotation


# instance fields
.field protected d:Ljava/util/List;

.field protected e:Ljava/util/List;

.field protected f:I

.field protected g:I

.field protected h:Lcom/xiaopeng/musicradio/datalist/c;

.field protected i:Z

.field private k:Lcom/xiaopeng/musicradio/datalist/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/datalist/r;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->g:I

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->i:Z

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/musicradio/datalist/d$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->g()V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 60
    instance-of v3, v2, Lcom/xiaopeng/musicradio/datalist/p;

    if-eqz v3, :cond_0

    .line 61
    check-cast v2, Lcom/xiaopeng/musicradio/datalist/p;

    .line 62
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/datalist/p;->a()I

    move-result v3

    if-nez v3, :cond_1

    .line 63
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/datalist/p;->b()Ljava/lang/Object;

    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/datalist/d$a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyItemChanged(I)V

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/datalist/d$a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyItemChanged(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(I)Landroid/view/View;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;

    move-result-object p1

    .line 181
    instance-of p2, p1, Lcom/xiaopeng/musicradio/datalist/h;

    if-eqz p2, :cond_1

    .line 183
    iput-object p0, p1, Lcom/xiaopeng/musicradio/datalist/h;->f:Lcom/xiaopeng/musicradio/datalist/d;

    .line 184
    instance-of p2, p1, Lcom/xiaopeng/musicradio/datalist/i;

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/datalist/i;->setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/h;->c()V

    :cond_1
    return-object p1
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->f:I

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 97
    new-instance p2, Lcom/xiaopeng/musicradio/datalist/d$1;

    invoke-direct {p2, p0, v0}, Lcom/xiaopeng/musicradio/datalist/d$1;-><init>(Lcom/xiaopeng/musicradio/datalist/d;I)V

    invoke-static {p2}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->f:I

    return-void
.end method

.method protected a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V
    .locals 2

    .line 317
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 318
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/datalist/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/datalist/d;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->p()V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->k:Lcom/xiaopeng/musicradio/datalist/d$b;

    if-eqz v0, :cond_2

    .line 327
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/datalist/d$b;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/h;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/h;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/d$b;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->k:Lcom/xiaopeng/musicradio/datalist/d$b;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->b(Lcom/xiaopeng/musicradio/datalist/h;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->i:Z

    if-eqz v0, :cond_0

    .line 116
    new-instance p2, Lcom/xiaopeng/musicradio/datalist/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    invoke-direct {p2, v0, p1}, Lcom/xiaopeng/musicradio/datalist/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 117
    invoke-static {p2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p2

    .line 118
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    .line 119
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/xiaopeng/musicradio/datalist/d$a<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d;->b(Lcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->g()V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/d$a;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/musicradio/datalist/d$a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 334
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 335
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 336
    instance-of v4, v3, Lcom/xiaopeng/musicradio/datalist/p;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 337
    check-cast v3, Lcom/xiaopeng/musicradio/datalist/p;

    .line 338
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/p;->a()I

    move-result v4

    if-nez v4, :cond_1

    .line 339
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/p;->b()Ljava/lang/Object;

    move-result-object v3

    .line 340
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/datalist/d$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyItemChanged(I)V

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/datalist/d$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyItemChanged(I)V

    :goto_1
    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/datalist/h;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->a(IZ)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/h;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 199
    instance-of v0, p1, Lcom/xiaopeng/musicradio/datalist/h;

    if-eqz v0, :cond_0

    .line 201
    iput p2, p1, Lcom/xiaopeng/musicradio/datalist/h;->d:I

    .line 202
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->i:Z

    return-void
.end method

.method public c(I)I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 219
    instance-of v0, p1, Lcom/xiaopeng/musicradio/datalist/p;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/p;

    .line 221
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/p;->a()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->g:I

    if-nez p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->p()V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public e(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->d()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 2

    .line 78
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->h:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->f:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/datalist/p;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->g:I

    return v0
.end method

.method public l()Z
    .locals 2

    .line 239
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 243
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/r;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 169
    instance-of v0, p1, Lcom/xiaopeng/musicradio/datalist/h;

    if-eqz v0, :cond_0

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/datalist/h;->e:Z

    .line 172
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/datalist/o;

    if-eqz v0, :cond_1

    .line 173
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/o;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/datalist/o;->b()V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/r;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 157
    instance-of v0, p1, Lcom/xiaopeng/musicradio/datalist/h;

    if-eqz v0, :cond_0

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/datalist/h;->e:Z

    .line 160
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/datalist/o;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/o;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/datalist/o;->a()V

    :cond_1
    return-void
.end method

.method public p()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/d;->h:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method
