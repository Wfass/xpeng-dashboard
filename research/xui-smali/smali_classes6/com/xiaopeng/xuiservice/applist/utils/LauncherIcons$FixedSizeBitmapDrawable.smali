.class Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons$FixedSizeBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSizeBitmapDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 270
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons$FixedSizeBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons$FixedSizeBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
