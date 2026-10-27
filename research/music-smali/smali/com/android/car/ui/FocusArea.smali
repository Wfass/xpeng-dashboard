.class public Lcom/android/car/ui/FocusArea;
.super Landroid/widget/LinearLayout;
.source "FocusArea.java"

# interfaces
.implements Lcom/android/car/ui/d;


# instance fields
.field private final a:Lcom/android/car/ui/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/FocusArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance p1, Lcom/android/car/ui/c;

    invoke-direct {p1, p0, p2}, Lcom/android/car/ui/c;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/c;->a(IIII)V

    return-void
.end method

.method public b(IIII)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/car/ui/c;->b(IIII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

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

    .line 166
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/android/car/ui/c;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->d()V

    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->a()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 127
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 77
    iget-object p1, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {p1}, Lcom/android/car/ui/c;->b()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/android/car/ui/FocusArea;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {p1}, Lcom/android/car/ui/c;->e()Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ui/c;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public restoreDefaultFocus()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0}, Lcom/android/car/ui/c;->f()Z

    move-result v0

    return v0
.end method

.method public setDefaultFocus(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultFocusOverridesHistory(Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->c(Z)V

    return-void
.end method

.method public setWrapAround(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->a:Lcom/android/car/ui/c;

    invoke-virtual {v0, p1}, Lcom/android/car/ui/c;->b(Z)V

    return-void
.end method
