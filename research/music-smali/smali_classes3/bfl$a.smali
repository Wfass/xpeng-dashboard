.class Lbfl$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsTopLowBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

.field private b:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

.field private c:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    sget v0, Lbez$d;->personal_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

    iput-object v0, p0, Lbfl$a;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

    .line 89
    sget v0, Lbez$d;->daily_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    iput-object v0, p0, Lbfl$a;->b:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    .line 90
    sget v0, Lbez$d;->vipsale_banner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    iput-object p1, p0, Lbfl$a;->c:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    return-void
.end method

.method static synthetic a(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfl$a;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;

    return-object p0
.end method

.method static synthetic b(Lbfl$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfl$a;->b:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    return-object p0
.end method

.method static synthetic c(Lbfl$a;)Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfl$a;->c:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    return-object p0
.end method
