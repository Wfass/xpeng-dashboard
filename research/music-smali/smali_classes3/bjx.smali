.class public Lbjx;
.super Lme/drakeet/multitype/c;
.source "NrAllRadioBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbjx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbjz;",
        "Lbjx$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbjx$a;
    .locals 3

    .line 29
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object v0

    sget v1, Lbuc$f;->netradio_item_selection_allradio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Laqx;->a(Landroid/view/LayoutInflater;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    const-string v0, "NrAllRadioBinder"

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lbuc$f;->netradio_item_selection_allradio:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "get view by create."

    .line 32
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "get view from cache."

    .line 34
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    new-instance p2, Lbjx$a;

    invoke-direct {p2, p1}, Lbjx$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lbjx$a;

    check-cast p2, Lbjz;

    invoke-virtual {p0, p1, p2}, Lbjx;->a(Lbjx$a;Lbjz;)V

    return-void
.end method

.method protected a(Lbjx$a;Lbjz;)V
    .locals 0

    .line 44
    iget-object p1, p1, Lbjx$a;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iput-object p1, p0, Lbjx;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lbjx;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbjx$a;

    move-result-object p1

    return-object p1
.end method
