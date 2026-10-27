.class public final Laiq;
.super Ljava/lang/Object;
.source "CarUiUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Laiq;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)F
    .locals 2

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 82
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, p1}, Laiq;->a(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 96
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 97
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static a(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 156
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const-string v0, "CarUiUtils"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 233
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "get"

    const/4 v4, 0x1

    .line 241
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    .line 249
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_0

    move-object p0, v1

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Failed to invoke SystemProperties.get(): "

    .line 252
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p0

    const-string v2, "Cannot find SystemProperties.get(): "

    .line 243
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2
    move-exception p0

    const-string v2, "Cannot find android.os.SystemProperties: "

    .line 235
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static a(Landroid/view/View;)V
    .locals 4

    .line 407
    sget-object v0, Laiq;->b:[I

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "state_ux_restricted"

    const-string v1, "attr"

    const-string v2, "android"

    .line 411
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 414
    new-array p0, v0, [I

    sget v0, Lcom/android/car/ui/e$a;->state_ux_restricted:I

    aput v0, p0, v1

    sput-object p0, Laiq;->b:[I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 416
    new-array v2, v2, [I

    sget v3, Lcom/android/car/ui/e$a;->state_ux_restricted:I

    aput v3, v2, v1

    aput p0, v2, v0

    sput-object v2, Laiq;->b:[I

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-static {p0}, Laiq;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 337
    sget-object p1, Laiq;->b:[I

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p0, p1, v0}, Laiq;->a(Landroid/view/View;[I[I)V

    return-void
.end method

.method public static a(Landroid/view/View;ZZ)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-static {p0}, Laiq;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    const v1, 0x101009e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 373
    sget-object p2, Laiq;->b:[I

    array-length v4, p2

    add-int/2addr v4, v3

    new-array v4, v4, [I

    .line 374
    aput v1, v4, v2

    .line 375
    array-length v5, p2

    invoke-static {p2, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v4

    goto :goto_0

    .line 377
    :cond_1
    new-array p2, v3, [I

    aput v1, p2, v2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 380
    sget-object p2, Laiq;->b:[I

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    .line 382
    :cond_4
    new-array v0, v3, [I

    aput v1, v0, v2

    .line 383
    :goto_1
    invoke-static {p0, p2, v0}, Laiq;->a(Landroid/view/View;[I[I)V

    return-void
.end method

.method public static a(Landroid/view/View;[I[I)V
    .locals 2

    .line 395
    instance-of v0, p0, Lcom/android/car/ui/uxr/b;

    if-eqz v0, :cond_0

    .line 396
    move-object v0, p0

    check-cast v0, Lcom/android/car/ui/uxr/b;

    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/uxr/b;->setExtraDrawableState([I[I)V

    .line 398
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 399
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 400
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 401
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Laiq;->a(Landroid/view/View;[I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;I)Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 109
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    throw p1
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 2

    .line 290
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 292
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static b(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 173
    invoke-static {p0, p1}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not reference a View inside this View"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2

    .line 212
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ro."

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {p0}, Laiq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    sget-object v0, Laiq;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Laiq;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 220
    sget-object p0, Laiq;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 222
    :cond_1
    invoke-static {p0}, Laiq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    sget-object v1, Laiq;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
