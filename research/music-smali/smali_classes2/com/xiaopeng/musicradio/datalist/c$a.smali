.class public Lcom/xiaopeng/musicradio/datalist/c$a;
.super Ljava/lang/Object;
.source "DataHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/datalist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

.field private e:Lcom/xiaopeng/musicradio/datalist/d;

.field private f:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

.field private g:Lcom/xiaopeng/musicradio/datalist/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->f:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    return-object p0
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->e:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->g:Lcom/xiaopeng/musicradio/datalist/i;

    return-object p0
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    return-object p0
.end method

.method public a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->a:Z

    return-object p0
.end method

.method public a()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 4

    .line 165
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;-><init>(Lcom/xiaopeng/musicradio/datalist/c$1;)V

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->e:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/d;

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->f:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 169
    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->b:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Lcom/xiaopeng/musicradio/datalist/c;I)I

    .line 170
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->a:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Lcom/xiaopeng/musicradio/datalist/c;Z)Z

    .line 171
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->c:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->b(Lcom/xiaopeng/musicradio/datalist/c;Z)Z

    .line 172
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->g:Lcom/xiaopeng/musicradio/datalist/i;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/i;

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->g:Lcom/xiaopeng/musicradio/datalist/i;

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/datalist/i;->setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->e:Lcom/xiaopeng/musicradio/datalist/d;

    instance-of v2, v1, Lcom/xiaopeng/musicradio/datalist/i;

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/datalist/i;->setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    instance-of v2, v1, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    if-eqz v2, :cond_2

    .line 183
    check-cast v1, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 184
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->e:Lcom/xiaopeng/musicradio/datalist/d;

    if-eq v2, v3, :cond_2

    .line 186
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->f:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/i;->setOnLoadMoreListener(Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    iget v2, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->b:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/i;->setLoadMoreMode(I)V

    return-object v0
.end method

.method public b(Z)Lcom/xiaopeng/musicradio/datalist/c$a;
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/c$a;->c:Z

    return-object p0
.end method
