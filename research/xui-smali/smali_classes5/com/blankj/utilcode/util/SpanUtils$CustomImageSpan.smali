.class Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;
.super Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomImageSpan"
.end annotation


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "resourceId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "verticalAlignment"    # I

    .line 1286
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;-><init>(ILcom/blankj/utilcode/util/SpanUtils$1;)V

    .line 1287
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mResourceId:I

    .line 1288
    return-void
.end method

.method synthetic constructor <init>(IILcom/blankj/utilcode/util/SpanUtils$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/blankj/utilcode/util/SpanUtils$1;

    .line 1259
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "verticalAlignment"    # I

    .line 1265
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;-><init>(ILcom/blankj/utilcode/util/SpanUtils$1;)V

    .line 1266
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1267
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1268
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1267
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1270
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;ILcom/blankj/utilcode/util/SpanUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Bitmap;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/blankj/utilcode/util/SpanUtils$1;

    .line 1259
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .line 1273
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;-><init>(ILcom/blankj/utilcode/util/SpanUtils$1;)V

    .line 1274
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1275
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1276
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1275
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1278
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;ILcom/blankj/utilcode/util/SpanUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/blankj/utilcode/util/SpanUtils$1;

    .line 1259
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "verticalAlignment"    # I

    .line 1281
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;-><init>(ILcom/blankj/utilcode/util/SpanUtils$1;)V

    .line 1282
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mContentUri:Landroid/net/Uri;

    .line 1283
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILcom/blankj/utilcode/util/SpanUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/blankj/utilcode/util/SpanUtils$1;

    .line 1259
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;-><init>(Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1299
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1300
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1301
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v4

    .line 1302
    nop

    .line 1303
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1302
    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1305
    if-eqz v1, :cond_1

    .line 1306
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1308
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to loaded content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1310
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1313
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mResourceId:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 1314
    nop

    .line 1315
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1314
    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1319
    goto :goto_1

    .line 1317
    :catch_1
    move-exception v1

    .line 1318
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "sms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomImageSpan;->mResourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
