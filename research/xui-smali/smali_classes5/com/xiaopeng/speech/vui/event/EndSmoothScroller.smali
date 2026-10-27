.class public Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "EndSmoothScroller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected getHorizontalSnapPreference()I
    .locals 1

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method
