.class public Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;
.super Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;
.source "XViewMirrorDrawable.java"


# static fields
.field private static final DRAWABLE_LTR:I = 0x0

.field private static final DRAWABLE_RTL:I = 0x1

.field private static final LAYOUT_LTR:I = 0x1

.field private static final LAYOUT_NONE:I = 0x0

.field private static final LAYOUT_RTL:I = 0x2


# instance fields
.field private mMirrorBackground:I

.field private mMirrorSrc:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;
    .locals 5

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lbyg$n;->XViewCommon:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lbyg$n;->XViewCommon_x_mirror_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 51
    sget v0, Lbyg$n;->XViewCommon_x_mirror_background:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 52
    sget v2, Lbyg$n;->XViewCommon_x_mirror_view:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 53
    sget v3, Lbyg$n;->XViewCommon_x_mirror_src:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x2

    const/4 v4, 0x1

    if-ne p2, p1, :cond_2

    .line 57
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    .line 59
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    if-nez v0, :cond_4

    if-eqz v2, :cond_5

    .line 64
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mMirrorLayout:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mirrorBackground: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mirrorView: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mirrorSrc"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RightRudder"

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne v2, v4, :cond_6

    .line 68
    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/high16 p1, -0x40800000    # -1.0f

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-object v1

    :cond_6
    if-ne v3, v4, :cond_7

    .line 72
    instance-of p1, p0, Landroid/widget/ImageView;

    if-nez p1, :cond_8

    :cond_7
    if-ne v0, v4, :cond_a

    .line 73
    :cond_8
    new-instance v1, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-direct {v1}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;-><init>()V

    if-ne v3, v4, :cond_9

    .line 74
    instance-of p0, p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    .line 75
    invoke-direct {v1, v3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setMirrorSrc(I)V

    :cond_9
    if-ne v0, v4, :cond_a

    .line 78
    invoke-direct {v1, v0}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setMirrorBackground(I)V

    :cond_a
    return-object v1
.end method

.method private setMirrorBackground(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorBackground:I

    return-void
.end method

.method private setMirrorSrc(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorSrc:I

    return-void
.end method


# virtual methods
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorBackground:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 106
    iget v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorSrc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    return-void
.end method
