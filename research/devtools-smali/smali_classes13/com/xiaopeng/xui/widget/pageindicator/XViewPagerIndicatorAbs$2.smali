.class Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;
.super Ljava/lang/Object;
.source "XViewPagerIndicatorAbs.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajc:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;->ajc:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;->ajc:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-static {p1, p3}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->a(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 35
    return-void
.end method
