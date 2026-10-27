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

    .line 87
    return-void
.end method

.method public static create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;
    .locals 10
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 42
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isRightRudder()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return-object v1

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 46
    return-object v1

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon_x_mirror_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 51
    .local v2, "mirrorLayout":I
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon_x_mirror_background:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 52
    .local v4, "mirrorBackground":I
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon_x_mirror_view:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 53
    .local v5, "mirrorView":I
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XViewCommon_x_mirror_src:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 54
    .local v6, "mirrorSrc":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v7, :cond_2

    .line 57
    invoke-virtual {p0, v8}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_0

    .line 58
    :cond_2
    if-ne v2, v8, :cond_3

    .line 59
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 63
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 64
    :cond_4
    const-string v3, "RightRudder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mMirrorLayout:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mirrorBackground: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mirrorView: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mirrorSrc"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :cond_5
    if-ne v5, v8, :cond_6

    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 69
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 83
    return-object v1

    .line 71
    :cond_6
    const/4 v1, 0x0

    .line 72
    .local v1, "xViewMirrorDrawable":Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;
    if-ne v6, v8, :cond_7

    instance-of v3, p0, Landroid/widget/ImageView;

    if-nez v3, :cond_8

    :cond_7
    if-ne v4, v8, :cond_a

    .line 73
    :cond_8
    new-instance v3, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    invoke-direct {v3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;-><init>()V

    move-object v1, v3

    .line 74
    if-ne v6, v8, :cond_9

    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 75
    invoke-direct {v1, v6}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setMirrorSrc(I)V

    .line 77
    :cond_9
    if-ne v4, v8, :cond_a

    .line 78
    invoke-direct {v1, v4}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->setMirrorBackground(I)V

    .line 81
    :cond_a
    return-object v1
.end method

.method private setMirrorBackground(I)V
    .locals 0
    .param p1, "mirrorBackground"    # I

    .line 90
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorBackground:I

    .line 91
    return-void
.end method

.method private setMirrorSrc(I)V
    .locals 0
    .param p1, "mirrorSrc"    # I

    .line 94
    iput p1, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorSrc:I

    .line 95
    return-void
.end method


# virtual methods
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorBackground:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 106
    iget v0, p0, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->mMirrorSrc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 110
    :cond_0
    return-void
.end method
