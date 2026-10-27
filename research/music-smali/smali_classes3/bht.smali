.class public Lbht;
.super Lbhq;
.source "KugouZoneCategoryBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbhq<",
        "Lbhz;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lbhq;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V

    .line 24
    iput-object p2, p0, Lbht;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected synthetic a(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lbht;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhw;)V
    .locals 0

    .line 18
    check-cast p2, Lbhz;

    invoke-virtual {p0, p1, p2}, Lbht;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhz;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhz;)V
    .locals 13

    .line 69
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v0

    .line 70
    invoke-virtual {p2}, Lbhz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbhz;->h()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p2}, Lbhz;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setClickVisibility(Z)V

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    .line 73
    invoke-virtual {p2}, Lbhz;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    invoke-virtual {p0}, Lbht;->e()I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 78
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit16 v5, v5, 0xb4

    div-int/lit16 v5, v5, 0x20f

    sget-object v6, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v6, v7}, Lapf;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 79
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p2}, Lbhz;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;

    .line 81
    invoke-virtual {p2}, Lbhz;->h()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lbht;->a(II)I

    move-result v11

    .line 82
    instance-of v4, v3, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

    if-eqz v4, :cond_1

    if-eqz v10, :cond_1

    .line 83
    check-cast v3, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

    .line 84
    invoke-virtual {v3, v11}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->setPosition(I)V

    .line 85
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->setInfo(Ljava/lang/String;)V

    .line 88
    new-instance v12, Lbht$1;

    move-object v4, v12

    move-object v5, p0

    move-object v6, v3

    move-object v7, v10

    move-object v8, p2

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lbht$1;-><init>(Lbht;Lcom/xiaopeng/musicradio/music/kugouzone/view/d;Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;Lbhz;I)V

    invoke-virtual {v3, v12}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v3, "KugouZoneCategoryBinder"

    const-string v4, "onBindViewChild: categoryBean could be null "

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/d;
    .locals 1

    .line 64
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected c()I
    .locals 2

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lapf;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected d()I
    .locals 2

    .line 44
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v1, -0x3f400000    # -6.0f

    invoke-static {v0, v1}, Lapf;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected e()I
    .locals 2

    .line 49
    iget-object v0, p0, Lbht;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 51
    iget-object v0, p0, Lbht;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 52
    iget-object v1, p0, Lbht;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lbht;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lbht;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lbht;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lbht;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    :goto_0
    return v0
.end method
