.class public Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;
.super Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
.source "NoScrollViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZ)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrollTo(II)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-super {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZ)V

    return-void
.end method
