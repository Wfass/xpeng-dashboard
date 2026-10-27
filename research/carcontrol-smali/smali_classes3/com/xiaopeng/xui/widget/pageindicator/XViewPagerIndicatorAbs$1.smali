.class Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;
.super Landroid/database/DataSetObserver;
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

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;->this$0:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;->this$0:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->access$000(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;->this$0:Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->access$000(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->populateData(I)V

    return-void
.end method
