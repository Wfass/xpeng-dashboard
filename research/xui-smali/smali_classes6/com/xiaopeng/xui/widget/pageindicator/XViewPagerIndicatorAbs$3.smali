.class Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "XViewPagerIndicatorAbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;->this$0:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;->this$0:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->select(I)V

    .line 41
    return-void
.end method
