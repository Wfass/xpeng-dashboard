.class public Lbse$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VipSaleBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;

.field final synthetic b:Lbse;


# direct methods
.method constructor <init>(Lbse;Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lbse$a;->b:Lbse;

    .line 84
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lbse$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->banner_item_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;

    iput-object p1, p0, Lbse$a;->a:Lcom/xiaopeng/musicradio/vip/view/SaleBannerLayout;

    return-void
.end method
