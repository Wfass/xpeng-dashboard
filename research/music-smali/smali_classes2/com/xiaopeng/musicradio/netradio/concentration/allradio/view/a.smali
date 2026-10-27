.class public Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;
.super Lcom/xiaopeng/musicradio/widget/a;
.source "AllRadioViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/a<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lcom/xiaopeng/musicradio/widget/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
            "Lcom/xiaopeng/musicradio/widget/a$a;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    iput-object p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 27
    iput-object p4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d:Lcom/xiaopeng/musicradio/widget/a$a;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lbuc$f;->layout_allradio_detail:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    .line 36
    sget v1, Lbuc$d;->layout_allradio_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    .line 37
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getBizVal()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setmId(I)V

    .line 38
    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setVuiElementId(I)V

    .line 39
    sget p2, Lbuc$g;->netradio_allradio_title:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {v1, v0, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 46
    sget v0, Lbuc$d;->layout_allradio_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->l()V

    return-void
.end method
