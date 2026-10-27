.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;
.super Ljava/lang/Object;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;
    }
.end annotation


# static fields
.field private static final SIZE_ALBUM_ICON:I

.field private static final TAG:Ljava/lang/String; = "IconLoader"

.field private static mDefaultMediaIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;

.field public static mLoadGameBitmapTarget:Lcom/bumptech/glide/request/target/CustomTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/CustomTarget<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoadUri:Ljava/lang/String;

.field private static mLoadUrlTask:Ljava/lang/Runnable;

.field private static mPkgBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mUriCacheBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mPkgBitmapMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mDefaultMediaIconMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mUriCacheBitmap:Ljava/util/HashMap;

    .line 38
    const v0, 0x7f0700b4

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->SIZE_ALBUM_ICON:I

    .line 117
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadUrlTask:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$2;

    sget v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->SIZE_ALBUM_ICON:I

    sget v2, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->SIZE_ALBUM_ICON:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$2;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadGameBitmapTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mUriCacheBitmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;

    return-object v0
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    nop

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 94
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 96
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 92
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 98
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-object v0
.end method

.method public static getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getDefaultMediaIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mPkgBitmapMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mPkgBitmapMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 48
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getAppIconDrawableByPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mPkgBitmapMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    return-object v0
.end method

.method public static getAppIconDrawableByPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "ApkTempPackageName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 74
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x2

    .line 75
    invoke-virtual {v2, p0, v3}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 76
    .local v2, "otherAppCtx":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    const/16 v5, 0x1e0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 80
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "otherAppCtx":Landroid/content/Context;
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getCacheUriBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "loadUri"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mUriCacheBitmap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getDefaultMediaIcon()Landroid/graphics/Bitmap;
    .locals 6

    .line 55
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    .line 57
    .local v1, "isNight":Z
    if-eqz v1, :cond_0

    const-string v2, "night"

    goto :goto_0

    :cond_0
    const-string v2, "day"

    .line 58
    .local v2, "key":Ljava/lang/String;
    :goto_0
    const-string v3, "IconLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultMediaIcon key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mDefaultMediaIconMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 60
    .local v3, "icon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 61
    nop

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080170

    .line 61
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 64
    sget-object v4, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mDefaultMediaIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    return-object v3
.end method

.method public static loadUriBitmap(Ljava/lang/String;Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;)V
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;

    .line 110
    sput-object p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadUri:Ljava/lang/String;

    .line 111
    sput-object p1, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;

    .line 112
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadGameBitmapTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadUrlTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->mLoadUrlTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method
