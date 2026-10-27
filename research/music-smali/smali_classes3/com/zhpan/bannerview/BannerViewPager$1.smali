.class Lcom/zhpan/bannerview/BannerViewPager$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "BannerViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhpan/bannerview/BannerViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhpan/bannerview/BannerViewPager;


# direct methods
.method constructor <init>(Lcom/zhpan/bannerview/BannerViewPager;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager$1;->this$0:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 122
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager$1;->this$0:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {v0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->access$200(Lcom/zhpan/bannerview/BannerViewPager;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 110
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager$1;->this$0:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {v0, p1, p2, p3}, Lcom/zhpan/bannerview/BannerViewPager;->access$000(Lcom/zhpan/bannerview/BannerViewPager;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 116
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager$1;->this$0:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-static {v0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->access$100(Lcom/zhpan/bannerview/BannerViewPager;I)V

    return-void
.end method
