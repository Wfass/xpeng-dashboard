.class public Lbhp$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KugouZoneFullBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

.field public b:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

.field public c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

.field final synthetic d:Lbhp;


# direct methods
.method constructor <init>(Lbhp;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lbhp$a;->d:Lbhp;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lbhp$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    iput-object p1, p0, Lbhp$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    .line 77
    iget-object p1, p0, Lbhp$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_middle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    iput-object p1, p0, Lbhp$a;->b:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    .line 78
    iget-object p1, p0, Lbhp$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    iput-object p1, p0, Lbhp$a;->c:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    return-void
.end method
