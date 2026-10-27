.class public Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "ItemPlayStatusLayout.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->c:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->c:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    return-object p0
.end method

.method private setPlayState(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->c:I

    .line 89
    new-instance p1, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(I)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(I)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v2, v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    :goto_0
    move v2, v0

    goto :goto_2

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    move v4, v2

    move v2, v1

    move v1, v4

    .line 80
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 81
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setVisibility(I)V

    .line 83
    :cond_4
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setPlayState(I)V

    .line 84
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->c:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setPlayState(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->item_play_status_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->iv_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->a:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->iv_play_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    return-void
.end method
