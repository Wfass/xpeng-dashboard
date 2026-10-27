.class public Lbho$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KugouZoneBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

.field public b:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

.field final synthetic c:Lbho;


# direct methods
.method constructor <init>(Lbho;Landroid/view/View;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lbho$a;->c:Lbho;

    .line 69
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 70
    iget-object p1, p0, Lbho$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    iput-object p1, p0, Lbho$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    .line 71
    iget-object p1, p0, Lbho$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    iput-object p1, p0, Lbho$a;->b:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    return-void
.end method
