.class public Lcom/android/car/ui/baselayout/ClickBlockingView;
.super Landroid/view/View;
.source "ClickBlockingView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 96
    iput-boolean v1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    .line 99
    :cond_0
    iget-boolean v3, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 102
    iput-boolean v4, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 107
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->b:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    .line 73
    :cond_0
    iget-boolean v2, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 76
    iput-boolean v3, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 81
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/ui/baselayout/ClickBlockingView;->a:Z

    :cond_3
    return v3
.end method
