.class public Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libtheme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeSet"
.end annotation


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final BACKGROUND:Ljava/lang/String; = "background"

.field public static final BUTTON:Ljava/lang/String; = "button"

.field public static final DIVIDER:Ljava/lang/String; = "divider"

.field public static final DRAWABLE_BOTTOM:Ljava/lang/String; = "drawableBottom"

.field public static final DRAWABLE_END:Ljava/lang/String; = "drawableEnd"

.field public static final DRAWABLE_LEFT:Ljava/lang/String; = "drawableLeft"

.field public static final DRAWABLE_RIGHT:Ljava/lang/String; = "drawableRight"

.field public static final DRAWABLE_START:Ljava/lang/String; = "drawableStart"

.field public static final DRAWABLE_TOP:Ljava/lang/String; = "drawableTop"

.field public static final FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final PROGRESS_DRAWABLE:Ljava/lang/String; = "progressDrawable"

.field public static final SCROLLBAR_THUMB_VERTICAL:Ljava/lang/String; = "scrollbarThumbVertical"

.field public static final SRC:Ljava/lang/String; = "src"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TEXT_COLOR:Ljava/lang/String; = "textColor"

.field public static final TEXT_COLOR_HINT:Ljava/lang/String; = "textColorHint"

.field public static final THEME:Ljava/lang/String; = "theme"

.field public static final THUMB:Ljava/lang/String; = "thumb"

.field public static final sAttributeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    .line 259
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 260
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "style"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "theme"

    const/high16 v2, 0x1010000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "alpha"

    const v2, 0x101031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "foreground"

    const v2, 0x1010109

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "background"

    const v2, 0x10100d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "scrollbarThumbVertical"

    const v2, 0x1010065

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "src"

    const v2, 0x1010119

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "textColor"

    const v2, 0x1010098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "textColorHint"

    const v2, 0x101009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "drawableLeft"

    const v2, 0x101016f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "drawableTop"

    const v2, 0x101016d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "drawableRight"

    const v2, 0x1010170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "drawableBottom"

    const v2, 0x101016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "drawableStart"

    const v2, 0x1010392

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "drawableEnd"

    const v2, 0x1010393

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "progressDrawable"

    const v2, 0x101013c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "thumb"

    const v2, 0x1010142

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "button"

    const v2, 0x1010107

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    const-string v1, "divider"

    const v2, 0x1010129

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 284
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStyleAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 296
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isThemeAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 287
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "theme"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 290
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static supportTransition(Ljava/lang/String;)Z
    .locals 2

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 300
    const-string v0, "background"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "src"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "textColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 302
    :cond_2
    return v1
.end method
