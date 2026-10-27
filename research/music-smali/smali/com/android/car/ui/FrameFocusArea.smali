.class public Lcom/android/car/ui/FrameFocusArea;
.super Landroid/widget/FrameLayout;
.source "FrameFocusArea.java"

# interfaces
.implements Lcom/android/car/ui/d;


# instance fields
.field private final mFocusAreaHelper:Lcom/android/car/ui/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/FrameFocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/FrameFocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/FrameFocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance p1, Lcom/android/car/ui/c;

    invoke-direct {p1, p0, p2}, Lcom/android/car/ui/c;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "com.android.car.ui.FocusArea"

    return-object v0
.end method

.method public getDefaultFocusView()Landroid/view/View;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/android/car/ui/c;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->d()V

    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->a()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 128
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 78
    iget-object p1, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {p1}, Lcom/android/car/ui/c;->b()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/car/ui/FrameFocusArea;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {p1}, Lcom/android/car/ui/c;->e()Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {p0}, Lcom/android/car/ui/FrameFocusArea;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/c;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ui/c;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public restoreDefaultFocus()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->f()Z

    move-result v0

    return v0
.end method

.method public setBoundsOffset(IIII)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/c;->b(IIII)V

    return-void
.end method

.method public setDefaultFocus(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultFocusOverridesHistory(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->c(Z)V

    return-void
.end method

.method public setHighlightPadding(IIII)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/c;->a(IIII)V

    return-void
.end method

.method public setNudgeShortcut(ILandroid/view/View;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ui/c;->a(ILandroid/view/View;)V

    return-void
.end method

.method public setNudgeTargetFocusArea(ILcom/android/car/ui/d;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ui/c;->a(ILcom/android/car/ui/d;)V

    return-void
.end method

.method public setWrapAround(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/car/ui/FrameFocusArea;->mFocusAreaHelper:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->b(Z)V

    return-void
.end method
