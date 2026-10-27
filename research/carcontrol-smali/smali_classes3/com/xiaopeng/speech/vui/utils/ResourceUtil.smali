.class public Lcom/xiaopeng/speech/vui/utils/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    .line 44
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getArrayId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "array"

    .line 48
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAttrId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "attr"

    .line 36
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBoolId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "bool"

    .line 56
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 28
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 32
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 20
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 8
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIntegerId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "integer"

    .line 52
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 12
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMipmapId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "mipmap"

    .line 24
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 16
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    .line 40
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
