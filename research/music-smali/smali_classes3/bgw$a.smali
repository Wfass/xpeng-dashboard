.class Lbgw$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseDolbyZoneBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    sget v0, Lbez$d;->zone_mix_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    iput-object p1, p0, Lbgw$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    return-void
.end method

.method static synthetic a(Lbgw$a;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lbgw$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;

    return-object p0
.end method
