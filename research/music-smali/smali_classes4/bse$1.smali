.class Lbse$1;
.super Ljava/lang/Object;
.source "VipSaleBannerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbse;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

.field final synthetic b:Lbse;


# direct methods
.method constructor <init>(Lbse;Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lbse$1;->b:Lbse;

    iput-object p2, p0, Lbse$1;->a:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbtg;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbtg;

    .line 72
    iget-object v0, p0, Lbse$1;->a:Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lbtg;->startVipSale(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lbse$1;->b:Lbse;

    invoke-static {p1}, Lbse;->a(Lbse;)V

    :cond_0
    return-void
.end method
