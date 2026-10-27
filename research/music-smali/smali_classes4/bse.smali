.class public Lbse;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "VipSaleBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbse$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->item_salebanner_wrapper:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lbse;->g:I

    .line 42
    iput-object p1, p0, Lbse;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lbse;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lbse;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 94
    iget v0, p0, Lbse;->g:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    .line 128
    invoke-static {v0}, Lbte;->a(I)V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-static {}, Lbte;->a()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 121
    invoke-static {v0}, Lbte;->a(I)V

    goto :goto_0

    .line 114
    :pswitch_4
    invoke-static {v1}, Lbte;->a(I)V

    goto :goto_0

    .line 110
    :pswitch_5
    invoke-static {v2}, Lbte;->a(I)V

    goto :goto_0

    .line 106
    :pswitch_6
    invoke-static {v3}, Lbte;->a(I)V

    goto :goto_0

    .line 102
    :pswitch_7
    invoke-static {v1}, Lbte;->b(I)V

    goto :goto_0

    .line 118
    :pswitch_8
    invoke-static {}, Lbte;->b()V

    goto :goto_0

    .line 99
    :pswitch_9
    invoke-static {v2}, Lbte;->b(I)V

    goto :goto_0

    .line 96
    :pswitch_a
    invoke-static {v3}, Lbte;->b(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbse$a;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lbse;->c()Landroid/view/View;

    move-result-object p1

    const-string p2, "VipSaleBannerAdapter"

    const-string v0, "onCreateViewHolder: "

    .line 54
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance p2, Lbse$a;

    invoke-direct {p2, p0, p1}, Lbse$a;-><init>(Lbse;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 90
    iput p1, p0, Lbse;->g:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 62
    check-cast p1, Lbse$a;

    .line 63
    invoke-virtual {p0, p2}, Lbse;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

    if-eqz p2, :cond_0

    .line 65
    iget-object v0, p1, Lbse$a;->a:Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;

    iget v1, p0, Lbse;->g:I

    invoke-virtual {v0, p2, v1}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->setInfo(Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;I)V

    .line 67
    :cond_0
    iget-object p1, p1, Lbse$a;->a:Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;

    new-instance v0, Lbse$1;

    invoke-direct {v0, p0, p2}, Lbse$1;-><init>(Lbse;Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lbse;->a(Landroid/view/ViewGroup;I)Lbse$a;

    move-result-object p1

    return-object p1
.end method
