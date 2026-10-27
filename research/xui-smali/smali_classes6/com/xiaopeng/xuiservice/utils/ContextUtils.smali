.class public Lcom/xiaopeng/xuiservice/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .locals 3
    .param p0, "resColorInt"    # I

    .line 57
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 58
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "resColorInt"    # I

    .line 66
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 67
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 3

    .line 21
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 22
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDensity()F
    .locals 3

    .line 131
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 132
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    return v1

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDensityDpi()I
    .locals 3

    .line 140
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 141
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDimensionPixelSize(I)I
    .locals 3
    .param p0, "dimensionId"    # I

    .line 75
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 76
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "drawableId"    # I

    .line 84
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 85
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFloat(I)F
    .locals 4
    .param p0, "resId"    # I

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 112
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 114
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 115
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    return v2

    .line 117
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFraction(I)F
    .locals 3
    .param p0, "resId"    # I

    .line 122
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 123
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    return v1

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInt(I)I
    .locals 3
    .param p0, "resId"    # I

    .line 102
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 103
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getScreenHeight()I
    .locals 3

    .line 158
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 159
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getScreenWidth()I
    .locals 3

    .line 149
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 150
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3
    .param p0, "resId"    # I

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 31
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "formatArgs"    # [Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 49
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 3
    .param p0, "resId"    # I

    .line 93
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 94
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "resId"    # I

    .line 39
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 40
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ContextUtils sContext should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method
