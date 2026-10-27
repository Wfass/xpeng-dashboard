.class public final Landroid/support/design/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Landroid/support/design/internal/R$attr;->colorPrimary:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 41
    new-array v0, v0, [I

    sget v1, Landroid/support/design/internal/R$attr;->colorSecondaryLight:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 2

    .line 113
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    const-string v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 114
    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 99
    sget-object v0, Landroid/support/design/internal/R$styleable;->ThemeEnforcement:[I

    .line 100
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    sget p2, Landroid/support/design/internal/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    .line 103
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-static {p0}, Landroid/support/design/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 109
    :cond_0
    invoke-static {p0}, Landroid/support/design/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .locals 2

    .line 117
    sget-object v0, Landroid/support/design/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 1

    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 122
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    .line 123
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    if-nez p1, :cond_0

    .line 131
    return-void

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The style on this component requires your app theme to be "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (or a descendant)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 0
    .param p2    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 63
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    .locals 0
    .param p2    # [I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 91
    invoke-static {p0, p1, p3, p4}, Landroid/support/design/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p0

    return-object p0
.end method
