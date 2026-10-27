.class public Lcom/xiaopeng/xui/view/delegate/XViewMirrorLayout;
.super Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;
.source "XViewMirrorLayout.java"


# static fields
.field private static final LAYOUT_LTR:I = 0x1

.field private static final LAYOUT_NONE:I = 0x0

.field private static final LAYOUT_RTL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;-><init>()V

    return-void
.end method

.method public static check(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 26
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon_x_mirror_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 32
    .local v1, "mirrorLayout":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    .line 35
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_0

    .line 36
    :cond_1
    if-ne v1, v4, :cond_2

    .line 37
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 41
    :cond_2
    :goto_0
    return-void
.end method
