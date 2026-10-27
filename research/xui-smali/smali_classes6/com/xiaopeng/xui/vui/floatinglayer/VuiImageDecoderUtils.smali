.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;
.super Ljava/lang/Object;
.source "VuiImageDecoderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

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
    .locals 1

    .line 25
    const-class v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static animAssetsContains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 90
    const-string v0, "anim/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "anim/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    .line 97
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assetsContains, assets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->sAssetsFileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assetsContains call ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v1, 0x0

    return v1
.end method

.method public static decoderImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .param p2, "isNight"    # Z
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

    .line 53
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "animatedImageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 58
    .local v1, "nightExists":Z
    const/4 v2, 0x0

    .line 60
    .local v2, "dayExists":Z
    if-eqz p2, :cond_0

    .line 61
    const-string v3, "anim/floating_touch_night.webp"

    invoke-static {p0, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->animAssetsContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 63
    :cond_0
    const-string v3, "anim/floating_touch.webp"

    invoke-static {p0, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->animAssetsContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 66
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    const-string v3, "anim/floating_touch_night.webp"

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "anim/floating_touch.webp"

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 67
    .local v3, "resourceName":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v4

    .line 70
    .local v4, "source":Landroid/graphics/ImageDecoder$Source;
    :try_start_0
    invoke-static {v4}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 73
    goto :goto_2

    .line 71
    :catch_0
    move-exception v5

    .line 72
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    const-string v7, "decodeException:"

    invoke-static {v6, v7, v5}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v4    # "source":Landroid/graphics/ImageDecoder$Source;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_3

    .line 75
    :cond_3
    sget-object v4, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    const-string v5, "decode error, file not found"

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_3
    return-object v0

    .line 79
    .end local v0    # "animatedImageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "nightExists":Z
    .end local v2    # "dayExists":Z
    .end local v3    # "resourceName":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$drawable;->floating_element:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static getAnimateTimeOut(I)I
    .locals 1
    .param p0, "type"    # I

    .line 41
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 44
    const/16 v0, 0x5dc

    return v0

    .line 46
    :cond_0
    const/16 v0, 0x157c

    return v0
.end method

.method public static isSupportAlpha(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportNight(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 30
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 31
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
