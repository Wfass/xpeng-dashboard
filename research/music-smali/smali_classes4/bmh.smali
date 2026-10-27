.class public Lbmh;
.super Lme/drakeet/multitype/c;
.source "RankTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbml;",
        "Lbmh$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 29
    iput-object p1, p0, Lbmh;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbmh$a;
    .locals 3

    const-string v0, "RankTitleBinder"

    const-string v1, "RankTitleBinder onCreateViewHolder"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_title_binder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Laqx;->a(Landroid/view/LayoutInflater;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_title_binder:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "RankTitleBinder get view by create."

    .line 39
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "RankTitleBinder get view from cache."

    .line 41
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_0
    new-instance p2, Lbmh$a;

    iget-object v0, p0, Lbmh;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-direct {p2, p1, v0}, Lbmh$a;-><init>(Landroid/view/View;Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lbmh$a;

    check-cast p2, Lbml;

    invoke-virtual {p0, p1, p2}, Lbmh;->a(Lbmh$a;Lbml;)V

    return-void
.end method

.method protected a(Lbmh$a;Lbml;)V
    .locals 3

    .line 49
    iget-object v0, p1, Lbmh$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;

    invoke-virtual {p2}, Lbml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbml;->a()I

    move-result v2

    invoke-virtual {p2}, Lbml;->c()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->a(Ljava/lang/String;II)V

    .line 50
    iget-object p2, p1, Lbmh$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->b(I)V

    .line 51
    iget-object p2, p1, Lbmh$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p0, p1}, Lbmh;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a(I)V

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lbmh;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbmh$a;

    move-result-object p1

    return-object p1
.end method
