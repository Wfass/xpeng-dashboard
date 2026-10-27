.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;
.super Ljava/lang/Object;
.source "VuiImageDecoderUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_DEFAULT_WEBP:Ljava/lang/String; = "anim/floating_touch.webp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static decoderImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .param p2, "isNight"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 49
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

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "mAnimatedImageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 55
    const-string v1, "anim/floating_touch.webp"

    .line 56
    .local v1, "resourceName":Ljava/lang/String;
    nop

    .line 58
    nop

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v2

    .line 62
    .local v2, "source":Landroid/graphics/ImageDecoder$Source;
    :try_start_0
    invoke-static {v2}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->TAG:Ljava/lang/String;

    const-string v5, "decodeException:"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0

    .line 58
    .end local v1    # "resourceName":Ljava/lang/String;
    .end local v2    # "source":Landroid/graphics/ImageDecoder$Source;
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$drawable;->floating_element:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getAnimateTimeOut(I)I
    .locals 1
    .param p0, "type"    # I

    .line 38
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 41
    const/16 v0, 0x5dc

    return v0

    .line 43
    :cond_0
    const/16 v0, 0x157c

    return v0
.end method

.method public static isSupportAlpha(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportNight(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 27
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 28
    return v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
