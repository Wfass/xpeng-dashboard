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
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbyg$n;->XViewCommon:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    sget p2, Lbyg$n;->XViewCommon_x_mirror_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 37
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_2
    :goto_0
    return-void
.end method
