.class Lbme$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BannerBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

.field b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->choice_banner_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    iput-object v0, p0, Lbme$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->choice_banner_view_13:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    iput-object p1, p0, Lbme$a;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    return-void
.end method
