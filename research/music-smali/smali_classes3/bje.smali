.class public Lbje;
.super Lcom/xiaopeng/musicradio/widget/a;
.source "SingerPageViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
        ">;"
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;II",
            "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    iput p4, p0, Lbje;->f:I

    .line 32
    iput p3, p0, Lbje;->e:I

    .line 33
    iput-object p5, p0, Lbje;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    .line 40
    iget-object p1, p0, Lbje;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lbje;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Lbje;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 43
    sget v1, Lbez$d;->singer_list_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    .line 44
    iget v2, p0, Lbje;->e:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setDefault(I)V

    .line 45
    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setVuiElementId(I)V

    .line 46
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->selectArea(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lbje;->g:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "removeView: "

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget v0, Lbez$d;->singer_list_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    .line 55
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->clear()V

    return-void
.end method
