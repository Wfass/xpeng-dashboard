.class public Lcom/xiaopeng/xui/utils/XFontUtils;
.super Ljava/lang/Object;
.source "XFontUtils.java"


# static fields
.field private static final BASE_FONT_DIR:Ljava/lang/String; = "font/"

.field private static final BASE_SYSTEM_FONT_DIR:Ljava/lang/String; = "/system/fonts/"

.field public static final FONT_XP_MEDIUM:Ljava/lang/String; = "Xpeng-Medium.ttf"

.field public static final FONT_XP_NUMBER:Ljava/lang/String; = "Xpeng-Number.ttf"

.field public static final FONT_XP_NUMBER_BOLD:Ljava/lang/String; = "Xpeng-Number-Bold.ttf"

.field private static fonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/utils/XFontUtils;->fonts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTypeface(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "font"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/XFontUtils;->applyTypeface(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public static applyTypeface(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "font"    # Ljava/lang/String;
    .param p2, "includeFontPadding"    # Z

    .line 62
    if-nez p0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XFontUtils;->getSystemTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 66
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaopeng/xui/utils/XFontUtils;->getAssetsTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 69
    :cond_1
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 73
    :cond_2
    return-void
.end method

.method public static getAssetsTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/xiaopeng/xui/utils/XFontUtils;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 23
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_1

    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XFontUtils;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 26
    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcom/xiaopeng/xui/utils/XFontUtils;->fonts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 33
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/xiaopeng/xui/utils/XFontUtils;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 38
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 40
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XFontUtils;->getSystemFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 44
    :goto_0
    sget-object v1, Lcom/xiaopeng/xui/utils/XFontUtils;->fonts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-object v0
.end method
