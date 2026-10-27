.class public Lcom/xiaopeng/musicradio/widget/recyclerview/k;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "TopSmoothScroller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 1

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_0

    move p1, v0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    return p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
