.class public abstract Lbod;
.super Lme/drakeet/multitype/c;
.source "BaseSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbod$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ITEM:",
        "Lboi;",
        "VIEW:",
        "Landroid/view/View;",
        ">",
        "Lme/drakeet/multitype/c<",
        "TITEM;",
        "Lbod$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lbnn;


# direct methods
.method public constructor <init>(Lbnn;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    .line 43
    iput-object p1, p0, Lbod;->a:Lbnn;

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbod$a;
    .locals 3

    .line 64
    sget p2, Lcom/xiaopeng/musicradio/search/a$e;->item_mix_common_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_0

    .line 67
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_0
    sget p2, Lcom/xiaopeng/musicradio/search/a$d;->mix_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    .line 72
    invoke-virtual {p0}, Lbod;->a()I

    move-result v0

    invoke-virtual {p0}, Lbod;->c()I

    move-result v1

    invoke-virtual {p0}, Lbod;->d()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(III)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0}, Lbod;->b()I

    move-result v1

    invoke-virtual {p0}, Lbod;->a()I

    move-result v2

    div-int/2addr v1, v2

    .line 75
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->setColumn(I)V

    const/4 v1, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Lbod;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 77
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbod;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lbod;->f()I

    move-result v1

    invoke-virtual {p0}, Lbod;->e()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/util/List;II)V

    .line 80
    new-instance p2, Lbod$a;

    invoke-direct {p2, p1}, Lbod$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lbod$a;

    check-cast p2, Lboi;

    invoke-virtual {p0, p1, p2}, Lbod;->a(Lbod$a;Lboi;)V

    return-void
.end method

.method protected a(Lbod$a;Lboi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbod$a;",
            "TITEM;)V"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lbod$a;->a(Lbod$a;)Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lbod$a;->a(Lbod$a;)Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbod;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboi;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboi;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;",
            "TITEM;)V"
        }
    .end annotation
.end method

.method protected abstract b()I
.end method

.method protected abstract b(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TVIEW;"
        }
    .end annotation
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbod$a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c()I
.end method

.method protected abstract d()I
.end method

.method protected e()I
    .locals 1

    .line 54
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
