.class Lbhs$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KugouZoneBannerBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    sget v0, Lbez$d;->kugou_zone_banner_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;

    iput-object p1, p0, Lbhs$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerLayout;

    return-void
.end method
