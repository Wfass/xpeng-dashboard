.class Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ChoiceBannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->a(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;I)I

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->b(I)V

    .line 154
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmm;->c(I)V

    return-void
.end method
