.class public Lbhn$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KugouZone13BannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

.field final synthetic b:Lbhn;


# direct methods
.method constructor <init>(Lbhn;Landroid/view/View;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lbhn$a;->b:Lbhn;

    .line 63
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lbhn$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_zone_banner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    iput-object p1, p0, Lbhn$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    return-void
.end method
