.class Lbfj$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DolbyTopBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

.field private b:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

.field private c:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

.field private d:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    sget v0, Lbez$d;->vipsale_banner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    iput-object v0, p0, Lbfj$a;->a:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    .line 90
    sget v0, Lbez$d;->personal_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

    iput-object v0, p0, Lbfj$a;->b:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

    .line 91
    sget v0, Lbez$d;->daily_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    iput-object v0, p0, Lbfj$a;->c:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    .line 92
    sget v0, Lbez$d;->new_song_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    iput-object p1, p0, Lbfj$a;->d:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    return-void
.end method

.method static synthetic a(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfj$a;->b:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;

    return-object p0
.end method

.method static synthetic b(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfj$a;->c:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    return-object p0
.end method

.method static synthetic c(Lbfj$a;)Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfj$a;->d:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    return-object p0
.end method

.method static synthetic d(Lbfj$a;)Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;
    .locals 0

    .line 81
    iget-object p0, p0, Lbfj$a;->a:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    return-object p0
.end method
