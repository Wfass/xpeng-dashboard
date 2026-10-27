.class public abstract Lbhq;
.super Lme/drakeet/multitype/c;
.source "BaseKugouZoneBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ITEM:",
        "Lbhw;",
        "VIEW:",
        "Landroid/view/View;",
        ">",
        "Lme/drakeet/multitype/c<",
        "TITEM;",
        "Lbhq$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lcom/xiaopeng/musicradio/widget/k;

.field protected c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lbhq;->b:Lcom/xiaopeng/musicradio/widget/k;

    .line 48
    iput-object p1, p0, Lbhq;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(II)I
    .locals 1

    add-int/lit8 p2, p2, -0x2

    .line 104
    invoke-virtual {p0}, Lbhq;->g()I

    move-result v0

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TVIEW;"
        }
    .end annotation
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbhq$a;
    .locals 3

    .line 69
    sget p2, Lbez$f;->item_zone_mix_common_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lbez$d;->zone_mix_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    .line 71
    invoke-virtual {p0}, Lbhq;->a()I

    move-result v0

    invoke-virtual {p0}, Lbhq;->c()I

    move-result v1

    invoke-virtual {p0}, Lbhq;->d()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(III)V

    .line 72
    invoke-virtual {p0}, Lbhq;->b()I

    move-result v0

    invoke-virtual {p0}, Lbhq;->a()I

    move-result v1

    div-int/2addr v0, v1

    .line 73
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setColumn(I)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lbhq;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbhq;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lbhq;->f()I

    move-result v1

    invoke-virtual {p0}, Lbhq;->e()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/util/List;II)V

    .line 79
    new-instance p2, Lbhq$a;

    invoke-direct {p2, p1}, Lbhq$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lbhq$a;

    check-cast p2, Lbhw;

    invoke-virtual {p0, p1, p2}, Lbhq;->a(Lbhq$a;Lbhw;)V

    return-void
.end method

.method protected a(Lbhq$a;Lbhw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhq$a;",
            "TITEM;)V"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Lbhq$a;->a(Lbhq$a;)Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Lbhq$a;->a(Lbhq$a;)Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbhq;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhw;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhw;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;",
            "TITEM;)V"
        }
    .end annotation
.end method

.method protected abstract b()I
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lbhq;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbhq$a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c()I
.end method

.method protected abstract d()I
.end method

.method protected e()I
    .locals 1

    .line 59
    sget v0, Lcom/xiaopeng/musicradio/search/a$b;->music_rm_width:I

    invoke-static {v0}, Lbxo;->a(I)I

    move-result v0

    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected g()I
    .locals 1

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    return v0
.end method
