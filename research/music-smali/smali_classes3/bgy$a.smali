.class Lbgy$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DolbyZoneBannerBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    sget v0, Lbez$d;->kugou_zone_banner_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerLayout;

    iput-object p1, p0, Lbgy$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerLayout;

    return-void
.end method
