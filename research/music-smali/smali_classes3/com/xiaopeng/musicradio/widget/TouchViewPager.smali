.class public Lcom/xiaopeng/musicradio/widget/TouchViewPager;
.super Lcom/xiaopeng/xui/widget/XViewPager;
.source "TouchViewPager.java"


# instance fields
.field private a:Landroid/view/View$OnTouchListener;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->b:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->a:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 26
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNoScroll(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->b:Z

    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method
