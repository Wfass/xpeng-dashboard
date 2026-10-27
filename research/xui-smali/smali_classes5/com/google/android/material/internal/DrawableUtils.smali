.class public Lcom/google/android/material/internal/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static setConstantStateMethod:Ljava/lang/reflect/Method;

.field private static setConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 41
    invoke-static {p0, p1}, Lcom/google/android/material/internal/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    return v0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 46
    sget-boolean v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    const-class v0, Landroid/graphics/drawable/DrawableContainer;

    const-string v3, "setConstantState"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v5, v4, v1

    .line 49
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    .line 51
    sget-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "DrawableUtils"

    const-string v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v2, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethodFetched:Z

    .line 57
    :cond_0
    sget-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 59
    :try_start_1
    sget-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    return v2

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DrawableUtils"

    const-string v3, "Could not invoke setConstantState(). Oh well."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method
