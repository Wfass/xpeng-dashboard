.class public Lcom/xiaopeng/xiewpreload/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextUtils"

.field private static sAAContext:Landroid/content/Context;

.field private static sAFContext:Landroid/content/Context;

.field private static sActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sApp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sMapActivityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static stringLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLruCache()V
    .locals 1

    .line 93
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public static getAAContext()Landroid/content/Context;
    .locals 2

    .line 75
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAAContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContextUtils sAAContext should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 3

    .line 98
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "ContextUtils"

    const-string v2, "ContextUtils sActivity is null"

    .line 105
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getApp()Landroid/app/Application;
    .locals 2

    .line 57
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sApp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContextUtils sApp should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColor(I)I
    .locals 1

    .line 169
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 190
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContextUtils sContext should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getColorForSDK(I)I
    .locals 1

    .line 178
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAFContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 195
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 199
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContextUtils sContext should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 66
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContextUtils sContext should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDensity()F
    .locals 2

    .line 295
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContextUtils sContext should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDensityDpi()I
    .locals 2

    .line 304
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContextUtils sContext should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDimensionPixelSize(I)I
    .locals 1

    .line 212
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContextUtils sContext should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 238
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContextUtils sContext should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDrawableForSDK(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 229
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAFContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFloat(I)F
    .locals 3

    .line 275
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 278
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 279
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0

    .line 281
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(I)F
    .locals 2

    .line 286
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    return p0

    .line 290
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInt(I)I
    .locals 1

    .line 266
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 270
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLocale()Ljava/util/Locale;
    .locals 2

    .line 345
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 2

    .line 124
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 127
    :cond_0
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContextUtils sContext should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 111
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    sget-object p0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContextUtils sContext should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 1

    .line 257
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStringForSDK(I)Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAFContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 148
    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ContextUtils sContext should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initActivity(Landroid/app/Activity;)V
    .locals 1

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sActivity:Ljava/lang/ref/WeakReference;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sMapActivityClazz:Ljava/lang/Class;

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMapActivityClazz = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sMapActivityClazz:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initApp(Landroid/content/Context;)V
    .locals 3

    .line 38
    const-class v0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p0

    check-cast v2, Landroid/app/Application;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sApp:Ljava/lang/ref/WeakReference;

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "af"

    invoke-static {p0, v1}, Lcom/xiaopeng/xiewpreload/utils/LocaleHelper;->getLocalizedContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    .line 45
    sput-object p0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAFContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "aa"

    invoke-static {p0, v1}, Lcom/xiaopeng/xiewpreload/utils/LocaleHelper;->getLocalizedContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    .line 47
    sput-object p0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAAContext:Landroid/content/Context;

    .line 48
    new-instance p0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object p0, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->stringLruCache:Landroid/util/LruCache;

    const-string p0, "ContextUtils"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initApp::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->sAFContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isLandscape()Z
    .locals 2

    .line 319
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 320
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 325
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPortrait()Z
    .locals 2

    .line 329
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 330
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static setTopApp()V
    .locals 2

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.intent.category.VIRTUAL_HOME_SECONDARY"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 341
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startExternalActivity(Landroid/content/Intent;)V
    .locals 1

    .line 314
    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
