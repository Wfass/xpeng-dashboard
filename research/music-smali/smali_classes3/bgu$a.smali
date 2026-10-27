.class public Lbgu$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DolbyZoneBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field final synthetic d:Lbgu;


# direct methods
.method constructor <init>(Lbgu;Landroid/view/View;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lbgu$a;->d:Lbgu;

    .line 76
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lbgu$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_one:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgu$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 78
    iget-object p1, p0, Lbgu$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_tow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgu$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 79
    iget-object p1, p0, Lbgu$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_three:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgu$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    return-void
.end method
