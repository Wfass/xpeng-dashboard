.class Lbhq$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseKugouZoneBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    sget v0, Lbez$d;->zone_mix_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    iput-object p1, p0, Lbhq$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    return-void
.end method

.method static synthetic a(Lbhq$a;)Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lbhq$a;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    return-object p0
.end method
