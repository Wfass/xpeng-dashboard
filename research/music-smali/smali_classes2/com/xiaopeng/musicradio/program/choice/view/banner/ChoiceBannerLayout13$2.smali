.class Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ChoiceBannerLayout13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->a(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;I)I

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->c(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->b(I)V

    .line 147
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmm;->c(I)V

    return-void
.end method
