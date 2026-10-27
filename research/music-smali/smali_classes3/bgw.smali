.class public abstract Lbgw;
.super Lme/drakeet/multitype/c;
.source "BaseDolbyZoneBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ITEM:",
        "Lbhb;",
        "VIEW:",
        "Landroid/view/View;",
        ">",
        "Lme/drakeet/multitype/c<",
        "TITEM;",
        "Lbgw$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 45
    iput-object p1, p0, Lbgw;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(II)I
    .locals 1

    add-int/lit8 p2, p2, -0x2

    .line 101
    invoke-virtual {p0}, Lbgw;->g()I

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

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgw$a;
    .locals 3

    .line 66
    sget p2, Lbez$f;->item_dolby_zone_mix_common_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lbez$d;->zone_mix_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    .line 68
    invoke-virtual {p0}, Lbgw;->a()I

    move-result v0

    invoke-virtual {p0}, Lbgw;->c()I

    move-result v1

    invoke-virtual {p0}, Lbgw;->d()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->a(III)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p0}, Lbgw;->b()I

    move-result v1

    invoke-virtual {p0}, Lbgw;->a()I

    move-result v2

    div-int/2addr v1, v2

    .line 71
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setColumn(I)V

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lbgw;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbgw;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lbgw;->f()I

    move-result v1

    invoke-virtual {p0}, Lbgw;->e()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->a(Ljava/util/List;II)V

    .line 76
    new-instance p2, Lbgw$a;

    invoke-direct {p2, p1}, Lbgw$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lbgw$a;

    check-cast p2, Lbhb;

    invoke-virtual {p0, p1, p2}, Lbgw;->a(Lbgw$a;Lbhb;)V

    return-void
.end method

.method protected a(Lbgw$a;Lbhb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbgw$a;",
            "TITEM;)V"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lbgw$a;->a(Lbgw$a;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p1}, Lbgw$a;->a(Lbgw$a;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbgw;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhb;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;",
            "TITEM;)V"
        }
    .end annotation
.end method

.method protected abstract b()I
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lbgw;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbgw$a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c()I
.end method

.method protected abstract d()I
.end method

.method protected e()I
    .locals 1

    .line 56
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

    .line 90
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 93
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
