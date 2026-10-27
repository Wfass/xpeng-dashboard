.class public Lbgt$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DolbyZone13BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field final synthetic c:Lbgt;


# direct methods
.method constructor <init>(Lbgt;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lbgt$a;->c:Lbgt;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    iget-object p1, p0, Lbgt$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_one:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgt$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 68
    iget-object p1, p0, Lbgt$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_two:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgt$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    return-void
.end method
