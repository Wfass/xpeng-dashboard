.class public Lbgn;
.super Lcom/xiaopeng/musicradio/widget/a;
.source "CategoryPageViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    iput-object p3, p0, Lbgn;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lbgn;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lbez$f;->music_fragment_rm_category:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 34
    :cond_0
    invoke-virtual {p0, p2}, Lbgn;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;

    .line 35
    sget v0, Lbez$d;->rm_category_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    .line 36
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmId(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmName(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lbgn;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 44
    sget v0, Lbez$d;->rm_category_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->l()V

    return-void
.end method
