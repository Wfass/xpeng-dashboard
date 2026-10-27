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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 44
    const-string v0, "anim"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getArrayId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 48
    const-string v0, "array"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 36
    const-string v0, "attr"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBoolId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 56
    const-string v0, "bool"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 28
    const-string v0, "color"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 32
    const-string v0, "dimen"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 20
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 8
    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntegerId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 52
    const-string v0, "integer"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 12
    const-string v0, "layout"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMipmapId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 24
    const-string v0, "mipmap"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 16
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 40
    const-string v0, "style"

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/ResourceUtil;->getIdentifierByType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
