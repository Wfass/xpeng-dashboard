.class public Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final SIZE_HEIGHT_GAME_ICON:I

.field private static final SIZE_WIDTH_GAME_ICON:I

.field public static final TAG:Ljava/lang/String; = "ImageLoader"

.field public static mLoadGameBitmapTarget:Lcom/bumptech/glide/request/target/CustomTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/CustomTarget<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const v0, 0x7f070092

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->SIZE_WIDTH_GAME_ICON:I

    .line 31
    const v0, 0x7f070091

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->SIZE_HEIGHT_GAME_ICON:I

    .line 77
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$3;

    sget v1, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->SIZE_WIDTH_GAME_ICON:I

    sget v2, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->SIZE_HEIGHT_GAME_ICON:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$3;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->mLoadGameBitmapTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 28
    sget v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->SIZE_WIDTH_GAME_ICON:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 28
    sget v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->SIZE_HEIGHT_GAME_ICON:I

    return v0
.end method

.method public static getIconByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppInfoWithCategory(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v0

    .line 104
    .local v0, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-eqz v0, :cond_1

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    .line 111
    :goto_0
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 116
    .end local v1    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    :cond_1
    const/4 v1, 0x0

    .line 117
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 119
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v1, v4

    .line 120
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 123
    goto :goto_1

    .line 121
    :catch_0
    move-exception v4

    .line 122
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 124
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 125
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_2

    .line 126
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 128
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v4, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    return-object v5

    .line 133
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move-object v3, v4

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 134
    .local v3, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method public static loadGameImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .param p0, "imageUri"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultId"    # I

    .line 48
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;-><init>(Ljava/lang/String;ILandroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public static preloadGameImage(Ljava/lang/String;)V
    .locals 2
    .param p0, "imageUri"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method
