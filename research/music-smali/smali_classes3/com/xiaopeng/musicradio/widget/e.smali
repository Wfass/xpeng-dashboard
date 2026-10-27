.class public Lcom/xiaopeng/musicradio/widget/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MusicPageViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/e$b;,
        Lcom/xiaopeng/musicradio/widget/e$c;,
        Lcom/xiaopeng/musicradio/widget/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/e;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/e;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    .line 60
    iget v0, p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    iget p1, p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p2, :cond_0

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 32
    new-instance p2, Lcom/xiaopeng/musicradio/widget/e$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/e$a;-><init>(Lcom/xiaopeng/musicradio/widget/e;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 34
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 35
    new-instance p2, Lcom/xiaopeng/musicradio/widget/e$c;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/e$c;-><init>(Lcom/xiaopeng/musicradio/widget/e;Landroid/view/View;)V

    return-object p2

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/e;->b:Ljava/util/List;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/MusicPageItemBean;->view:Landroid/view/View;

    .line 38
    new-instance p2, Lcom/xiaopeng/musicradio/widget/e$b;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/e$b;-><init>(Lcom/xiaopeng/musicradio/widget/e;Landroid/view/View;)V

    return-object p2
.end method
