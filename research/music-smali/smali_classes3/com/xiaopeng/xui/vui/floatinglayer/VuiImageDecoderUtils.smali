.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;
.super Ljava/lang/Object;
.source "VuiImageDecoderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiImageDecoderUtils"

.field private static final TOUCH_DEFAULT_WEBP:Ljava/lang/String; = "anim/floating_touch.webp"

.field private static final TOUCH_DEFAULT_WEBP_NIGHT:Ljava/lang/String; = "anim/floating_touch_night.webp"

.field private static sAssetsFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static animAssetsContains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "anim/"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "anim"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    .line 97
    :cond_1
    sget-object p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assetsContains, assets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 100
    sget-object p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assetsContains call ex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static decoderImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 52
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decoderImage type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isNight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const-string p1, "anim/floating_touch_night.webp"

    const-string v0, "anim/floating_touch.webp"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 61
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->animAssetsContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->animAssetsContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 67
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    .line 70
    :try_start_0
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 72
    sget-object p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    const-string p2, "decodeException:"

    invoke-static {p1, p2, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 75
    :cond_3
    sget-object p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    const-string p1, "decode error, file not found"

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v3

    .line 79
    :cond_4
    new-instance p1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lbyg$g;->floating_element:I

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static getAnimateTimeOut(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x5dc

    return p0

    :cond_0
    const/16 p0, 0x157c

    return p0
.end method

.method public static isSupportAlpha(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportNight(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
