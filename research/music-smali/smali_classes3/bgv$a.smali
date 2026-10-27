.class public Lbgv$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DolbyZoneFullBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public d:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field public e:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

.field final synthetic f:Lbgv;


# direct methods
.method constructor <init>(Lbgv;Landroid/view/View;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lbgv$a;->f:Lbgv;

    .line 88
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lbgv$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_one:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgv$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 90
    iget-object p1, p0, Lbgv$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_two:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgv$a;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 91
    iget-object p1, p0, Lbgv$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_three:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgv$a;->c:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 92
    iget-object p1, p0, Lbgv$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_four:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgv$a;->d:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    .line 93
    iget-object p1, p0, Lbgv$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_five:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    iput-object p1, p0, Lbgv$a;->e:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;

    return-void
.end method
