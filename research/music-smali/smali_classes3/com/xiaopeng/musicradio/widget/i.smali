.class public Lcom/xiaopeng/musicradio/widget/i;
.super Landroidx/viewpager/widget/a;
.source "PagerViewAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/i;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/i;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-object p2
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 42
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/i;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    instance-of p1, p2, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;

    if-eqz p1, :cond_0

    .line 46
    check-cast p2, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->l()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
