.class public abstract Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.super Ljava/lang/Object;
.source "AbsAppListManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$ApplistImgTransformation;,
        Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;,
        Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;,
        Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;,
        Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;
    }
.end annotation


# static fields
.field protected static final BITMAP_FOLDER:Ljava/lang/String;

.field public static final MEDIA_TEMPLATE_ACTION:Ljava/lang/String; = "android.car.intent.action.MEDIA_TEMPLATE"

.field private static final TAG_STATIC:Ljava/lang/String; = "AbsAppListManager"

.field protected static final iPackageManager:Landroid/content/pm/IPackageManager;

.field protected static mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

.field protected static final mContext:Landroid/content/Context;

.field protected static final mPackageManager:Landroid/content/pm/PackageManager;

.field protected static final mWindowManager:Landroid/view/WindowManager;


# instance fields
.field public KEY_CONTAIN_CHECK_HAS_ON_TOP:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field protected isInThemeMode:Z

.field private mAppListOperationListener:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

.field protected final mFilteredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mWindowManager:Landroid/view/WindowManager;

    .line 92
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->isInThemeMode:Z

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mFilteredListeners:Ljava/util/List;

    .line 94
    const-string v0, "screenId"

    const-string v1, "checkHasOnTop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mIntentKeys:[Ljava/lang/String;

    .line 95
    const-string v0, "checkHasOnTop"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->KEY_CONTAIN_CHECK_HAS_ON_TOP:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$1;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mAppListOperationListener:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

    .line 129
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl;->addApplistThemeListener(Lcom/xiaopeng/xuiservice/applist/impl/themeop/ApplistThemeImpl$ApplistThemeListener;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mAppListOperationListener:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->registerOperationListener(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .param p3, "x3"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->callGlide(Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static appMetaToAppInfo(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 1
    .param p0, "from"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .param p1, "to"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setAppId(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 309
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStatus(I)V

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setTitle(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setIsFirstLaunch(Z)V

    .line 312
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 318
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 321
    :cond_2
    return-void
.end method

.method private callGlide(Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "transformation"    # Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .param p3, "target"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

    .line 997
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 998
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 999
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 1000
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 1001
    return-void
.end method

.method protected static deleteBitmap(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 916
    const-string v0, "Delete Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .local v0, "saveFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    const-string v1, "Delete Bitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file isn\'t exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    return-void

    .line 923
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 924
    return-void
.end method

.method public static getCallScreenId()I
    .locals 3

    .line 530
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setUid(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v1

    .line 532
    .local v1, "mBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 533
    .local v2, "screenId":I
    return v2
.end method

.method public static getScreenIdFromBundle(Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultScreenId"    # I

    .line 537
    if-nez p0, :cond_0

    .line 538
    return p1

    .line 540
    :cond_0
    const-string v0, "screenId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$extraBundleToStartIntent$0(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "extra"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "extraBundle"    # Landroid/os/Bundle;
    .param p4, "key"    # Ljava/lang/String;

    .line 422
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->KEY_CONTAIN_CHECK_HAS_ON_TOP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 427
    .local v2, "hasOnTop":Z
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extraBundleToStartIntent key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",className:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",hasOnTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "java.lang.String"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "java.lang.Double"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v4, "java.lang.Long"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v4, "java.lang.Boolean"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "java.lang.Float"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v4, "android.os.Bundle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "java.lang.Integer"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 457
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extraBundleToStartIntent unknown type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "hasOnTop":Z
    goto/16 :goto_1

    .line 454
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v2    # "hasOnTop":Z
    :pswitch_0
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 455
    goto/16 :goto_1

    .line 451
    :pswitch_1
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p2, p4, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 452
    goto/16 :goto_1

    .line 448
    :pswitch_2
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p2, p4, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 449
    goto/16 :goto_1

    .line 445
    :pswitch_3
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 446
    goto :goto_1

    .line 436
    :pswitch_4
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.car.intent.action.MEDIA_TEMPLATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extraBundleToStartIntent here 1 with notMoveToScreen key:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",value:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",className:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",hasOnTop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " has MEDIA_TEMPLATE_ACTION"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v3, "notMoveToScreen"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 441
    :cond_1
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    goto :goto_1

    .line 433
    :pswitch_5
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    goto :goto_1

    .line 430
    :pswitch_6
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    nop

    .line 462
    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "hasOnTop":Z
    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_6
        -0x46d168d3 -> :sswitch_5
        -0x1f76ce78 -> :sswitch_4
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 905
    const-string v0, "Load Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v0, "saveFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    const-string v1, "Load Bitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file isn\'t exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v1, 0x0

    return-object v1

    .line 912
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected static loadBitmap(Ljava/nio/file/Path;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 874
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbsAppListManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBitmap,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 882
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->ensureFolderExist(Ljava/lang/String;)Z

    move-result v0

    .line 883
    .local v0, "folderExist":Z
    const-string v1, "AbsAppListManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBitmap,folderExist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "BITMAP_FOLDER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    if-nez p1, :cond_0

    .line 885
    const-string v1, "AbsAppListManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBitmap,get null bitmap,name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void

    .line 888
    :cond_0
    if-nez v0, :cond_1

    .line 889
    const-string v1, "save Bitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BITMAP_FOLDER isn\'t exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .local v1, "saveFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 894
    .local v2, "saveImgOut":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 895
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 896
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 897
    const-string v3, "save Bitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v2    # "saveImgOut":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 898
    :catch_0
    move-exception v2

    .line 899
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "AbsAppListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmap,save file failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",folder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->BITMAP_FOLDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .end local v1    # "saveFile":Ljava/io/File;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static updateScreenShow(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;I)V
    .locals 4
    .param p0, "innerAppInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p1, "showBits"    # I

    .line 544
    if-nez p0, :cond_0

    .line 545
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_2

    .line 548
    const/4 v2, 0x1

    shl-int v3, v2, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 549
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    goto :goto_1

    .line 551
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setScreenShow(II)V

    .line 547
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFilteredListener(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mFilteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public appInfo2InnerAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 1
    .param p1, "from"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "to"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 329
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setAppId(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getCategory()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setCategory(I)V

    .line 331
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setTitle(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 333
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 334
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 335
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStatus(I)V

    .line 337
    return-void
.end method

.method public checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bmp"    # Ljava/lang/Object;
    .param p2, "checkSize"    # I
    .param p3, "onlyScale"    # Z
    .param p4, "forceProcess"    # Z

    .line 654
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public checkBitMap(Ljava/lang/Object;IZZZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bmp"    # Ljava/lang/Object;
    .param p2, "checkSize"    # I
    .param p3, "onlyScale"    # Z
    .param p4, "forceProcess"    # Z
    .param p5, "bgColorUseBody"    # Z

    .line 599
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    const-string v2, "checkBitMap, bmp is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-object v0

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBitMap,checkSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",onlyScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",forceProcess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "originWidth":I
    const/4 v2, 0x0

    .line 609
    .local v2, "originHeight":I
    const/4 v3, 0x0

    .line 610
    .local v3, "targetBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 611
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, p1, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 612
    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    .line 613
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 614
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 615
    :cond_1
    instance-of v5, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 616
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 617
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 618
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 624
    :goto_0
    if-ne v1, p2, :cond_2

    if-ne v2, p2, :cond_2

    if-eqz p4, :cond_6

    .line 626
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBitMap,origin w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",target size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    sget-object v5, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    move-result-object v5

    .line 629
    .local v5, "li":Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    const/4 v6, 0x0

    .line 630
    .local v6, "bitmapInfo":Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    if-nez p3, :cond_4

    .line 631
    nop

    .line 632
    if-eqz v3, :cond_3

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    move-object v7, v4

    :goto_1
    const/4 v0, 0x1

    .line 631
    invoke-virtual {v5, v7, v0, p2, p5}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZIZ)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v6

    goto :goto_2

    .line 635
    :cond_4
    if-eqz v3, :cond_5

    .line 636
    invoke-virtual {v5, v3, p2}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;I)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v6

    .line 639
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->recycle()V

    .line 640
    if-nez v6, :cond_7

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    const-string v7, "checkBitMap,createBadgedIconBitmap null"

    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v5    # "li":Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    .end local v6    # "bitmapInfo":Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    :cond_6
    return-object v3

    .line 643
    .restart local v5    # "li":Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    .restart local v6    # "bitmapInfo":Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBitMap,size op after="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 644
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, v6, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-object v0

    .line 620
    .end local v5    # "li":Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    .end local v6    # "bitmapInfo":Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    :cond_8
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBitMap,unsupport format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-object v0
.end method

.method protected deleteAppBitmap(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 952
    if-nez p1, :cond_0

    .line 953
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    const-string v1, "deleteAppMeta,appMeta is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    return-void

    .line 956
    :cond_0
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->deleteBitmap(Ljava/lang/String;)V

    .line 959
    :cond_1
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->deleteBitmap(Ljava/lang/String;)V

    .line 962
    :cond_2
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->deleteBitmap(Ljava/lang/String;)V

    .line 965
    :cond_3
    return-void
.end method

.method public doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 159
    return-void
.end method

.method public doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 169
    return-void
.end method

.method public doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 189
    return-void
.end method

.method public doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 179
    return-void
.end method

.method public doThemeInit()V
    .locals 0

    .line 149
    return-void
.end method

.method public dumpAllApps(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 292
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoList()Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 295
    .local v2, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 296
    .end local v2    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public extraBundleToStartIntent(Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extra"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "extraBundle"    # Landroid/os/Bundle;

    .line 417
    if-nez p1, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mIntentKeys:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$PkLJCnk2tBKootG4Fj5meT6VMZQ;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Landroid/os/Bundle;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 421
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 463
    return-void
.end method

.method protected fetchAndResizeAppIconAsync(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;ZLcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;)V
    .locals 8
    .param p1, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isDockerIcon"    # Z
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "transformation":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    if-eqz p3, :cond_0

    .line 974
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)V

    move-object v0, v1

    goto :goto_0

    .line 977
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$ApplistImgTransformation;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$ApplistImgTransformation;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)V

    move-object v0, v1

    .line 980
    :goto_0
    new-instance v7, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;)V

    invoke-direct {p0, p2, v0, v7}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->callGlide(Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V

    .line 981
    return-void
.end method

.method protected fetchAndResizeAppIconAsync(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;ZLcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;Z)V
    .locals 8
    .param p1, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isDockerIcon"    # Z
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;
    .param p5, "bgColorUseBody"    # Z

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "transformation":Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    if-eqz p3, :cond_0

    .line 987
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;

    invoke-direct {v1, p0, p5}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Z)V

    move-object v0, v1

    goto :goto_0

    .line 990
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$ApplistImgTransformation;

    invoke-direct {v1, p0, p5}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$ApplistImgTransformation;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Z)V

    move-object v0, v1

    .line 993
    :goto_0
    new-instance v7, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;)V

    invoke-direct {p0, p2, v0, v7}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->callGlide(Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V

    .line 994
    return-void
.end method

.method public abstract getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
.end method

.method public abstract getAppInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppInfoList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getAppInfoListWithCategory(I)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoListWithCategory(II)Ljava/util/List;
    .locals 1
    .param p1, "category"    # I
    .param p2, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getAppInfoList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssetsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .line 586
    const/4 v0, 0x0

    .line 588
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 589
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .line 590
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAssetsBitmap IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public getCategoryMetaData()Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
    .locals 1

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIconBitmapFromTheme(ILjava/lang/String;Lcom/xiaopeng/xuimanager/theme/Theme;)[Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "category"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 858
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Bitmap;

    .line 859
    .local v1, "icons":[Landroid/graphics/Bitmap;
    invoke-static {p3}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getIconsDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v2

    .line 860
    .local v2, "path":Ljava/nio/file/Path;
    if-nez v2, :cond_0

    .line 861
    return-object v1

    .line 864
    :cond_0
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "day"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->loadBitmap(Ljava/nio/file/Path;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v6

    .line 865
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "night"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->loadBitmap(Ljava/nio/file/Path;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v7

    .line 866
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const-string v4, "docker"

    aput-object v4, v0, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v3, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->loadBitmap(Ljava/nio/file/Path;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, v8

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconBitmapFromTheme,category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",day="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",night="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",docker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    return-object v1
.end method

.method public abstract getManagerName()Ljava/lang/String;
.end method

.method public getRunningApp()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1

    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningAppInfo()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecialAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 266
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public goAppHome(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 508
    const/16 v0, -0x3e9

    return v0
.end method

.method public abstract init()V
.end method

.method public innerList2OutArray(Ljava/util/List;)[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;)[",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;"
        }
    .end annotation

    .line 829
    .local p1, "innerList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    return-object v0

    .line 830
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public innerList2OutList(ILjava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 816
    .local p2, "innerList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 820
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 822
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getScreenShow(I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_1
    goto :goto_0

    .line 825
    :cond_2
    return-object v0

    .line 817
    .end local v0    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public innerList2OutList(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 812
    .local p1, "innerList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->innerList2OutList(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public installApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 279
    const/16 v0, -0x3e9

    return v0
.end method

.method public jsonStringToStartIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 11
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 374
    return-object v0

    .line 378
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "object":Lorg/json/JSONObject;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "component"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "component":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 389
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 390
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :cond_1
    const-string v4, "action"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "action":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 394
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    :cond_2
    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "data":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 398
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    :cond_3
    const-string v6, "extras"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 401
    .local v6, "extrasObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_5

    .line 402
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v7, "extras":Landroid/os/Bundle;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 404
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 405
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v9    # "key":Ljava/lang/String;
    goto :goto_0

    .line 407
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v2, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_5
    return-object v2

    .line 410
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "extrasObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonStringToStartIntent exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-object v0
.end method

.method public maskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "maskBmp"    # Landroid/graphics/Bitmap;
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .line 562
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 568
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 569
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 570
    .local v1, "srcRec":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 571
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 573
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 574
    .local v2, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 575
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 576
    invoke-virtual {v3, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 579
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maskBitmap success done, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-object v2

    .line 563
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "srcRec":Landroid/graphics/Rect;
    .end local v2    # "canvasBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    const-string v1, "maskBitmap source or maskBmp is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-object p2
.end method

.method public abstract onAppOperationChanged(ILjava/lang/String;)V
.end method

.method public realPkgNameMatch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public removeFilteredListener(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mFilteredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public abstract resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
.end method

.method protected saveAppBitmap(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 927
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 932
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppBitmap,dayIconPath is null,appMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :goto_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 939
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppBitmap,storeNightIconPath is null,appMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :goto_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 945
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppBitmap,dockerIconPath is null,appMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_2
    return-void

    .line 928
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppBitmap,innerAppInfo is null,appMeta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public setAppEventListener(Lcom/xiaopeng/xuimanager/applist/AppEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 138
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    if-nez v0, :cond_0

    .line 139
    sput-object p1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    .line 141
    :cond_0
    return-void
.end method

.method public abstract startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
.end method

.method public startIntentToJsonString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 345
    if-nez p1, :cond_0

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 351
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "component"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v1, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v1, "data"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 355
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 356
    .local v1, "extrasObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 359
    :cond_1
    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v1    # "extrasObject":Lorg/json/JSONObject;
    :cond_2
    goto :goto_1

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIntentToJsonString exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public stopApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 505
    const/16 v0, -0x3e9

    return v0
.end method

.method public underMyManagement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 288
    const/16 v0, -0x3e9

    return v0
.end method

.method public abstract updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
.end method

.method public updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 736
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->getByPackageName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;

    move-result-object v0

    .line 737
    .local v0, "appOperation":Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 738
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppInfoFromOperation,find appOperation for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->isIconUpdatedByOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppInfoFromOperation,here attention icon already updated for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void

    .line 744
    :cond_0
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->smallIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 745
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v2

    .line 746
    .local v2, "iconDay":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    if-nez v2, :cond_1

    .line 747
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAppInfoFromOperation,create new day icon for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v2, v4

    .line 749
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 751
    :cond_1
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->smallIcon:Landroid/graphics/Bitmap;

    sget v5, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    invoke-virtual {p0, v4, v5, v1, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 753
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationDayIconValid(Z)V

    .line 754
    .end local v2    # "iconDay":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    goto :goto_0

    .line 755
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppInfoFromOperation,get null day icon for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationDayIconValid(Z)V

    .line 758
    :goto_0
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->smallNightIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 759
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v2

    .line 760
    .local v2, "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    if-nez v2, :cond_3

    .line 761
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v2, v4

    .line 763
    :cond_3
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->smallNightIcon:Landroid/graphics/Bitmap;

    sget v5, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    invoke-virtual {p0, v4, v5, v1, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 765
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 766
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationNightIconValid(Z)V

    .line 767
    .end local v2    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    goto :goto_1

    .line 768
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppInfoFromOperation,get null night icon for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationNightIconValid(Z)V

    .line 771
    :goto_1
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->dockIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 772
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v2

    .line 773
    .restart local v2    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    if-nez v2, :cond_5

    .line 774
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v2, v4

    .line 776
    :cond_5
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->dockIcon:Landroid/graphics/Bitmap;

    sget v5, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_DOCKER_SIZE:I

    invoke-virtual {p0, v4, v5, v3, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 778
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 779
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationDockIconValid(Z)V

    .line 780
    .end local v2    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    goto :goto_2

    .line 781
    :cond_6
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppInfoFromOperation,get null dock icon for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationDockIconValid(Z)V

    goto :goto_2

    .line 785
    :cond_7
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get null operation data for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationDayIconValid(Z)V

    .line 788
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationNightIconValid(Z)V

    .line 789
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setOperationDockIconValid(Z)V

    .line 791
    :goto_2
    return-void
.end method

.method public updateAppInfoFromThemeBitmaps(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;[Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "updated":Z
    if-eqz p2, :cond_4

    array-length v1, p2

    if-lez v1, :cond_4

    .line 701
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppInfoFromOperation,find appOperation for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 703
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v2

    aget-object v3, p2, v1

    sget v4, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 705
    const/4 v0, 0x1

    .line 707
    :cond_0
    const/4 v2, 0x1

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 708
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v3

    .line 709
    .local v3, "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    if-nez v3, :cond_1

    .line 710
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v3, v4

    .line 712
    :cond_1
    aget-object v4, p2, v2

    sget v5, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    invoke-virtual {p0, v4, v5, v1, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 714
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 715
    const/4 v0, 0x1

    .line 717
    .end local v3    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    :cond_2
    const/4 v3, 0x2

    aget-object v4, p2, v3

    if-eqz v4, :cond_4

    .line 718
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v4

    .line 719
    .local v4, "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    if-nez v4, :cond_3

    .line 720
    new-instance v5, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v5}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    move-object v4, v5

    .line 722
    :cond_3
    aget-object v3, p2, v3

    sget v5, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_DOCKER_SIZE:I

    invoke-virtual {p0, v3, v5, v2, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 724
    invoke-virtual {p1, v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 725
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppInfoFromThemeBitmaps,update docker icon for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x1

    .line 731
    .end local v4    # "icon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    :cond_4
    return v0
.end method

.method public updateAppInfosFromTheme(Lcom/xiaopeng/xuimanager/theme/Theme;[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)Z
    .locals 8
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;
    .param p2, "infoArray"    # [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            "[",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;)Z"
        }
    .end annotation

    .line 659
    .local p3, "infoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    const/4 v0, 0x0

    .line 660
    .local v0, "screenUpdated":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 661
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 662
    .local v4, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 663
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAppInfosFromTheme of info array,invalid category:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 663
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    goto :goto_1

    .line 667
    :cond_0
    nop

    .line 668
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v5

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getIconBitmapFromTheme(ILjava/lang/String;Lcom/xiaopeng/xuimanager/theme/Theme;)[Landroid/graphics/Bitmap;

    move-result-object v5

    .line 667
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->updateAppInfoFromThemeBitmaps(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;[Landroid/graphics/Bitmap;)Z

    move-result v5

    .line 669
    .local v5, "updated":Z
    if-nez v0, :cond_1

    if-eqz v5, :cond_1

    .line 670
    const/4 v0, 0x1

    .line 661
    .end local v4    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v5    # "updated":Z
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    :cond_2
    return v0

    .line 675
    :cond_3
    if-eqz p3, :cond_6

    .line 676
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 677
    .local v3, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v4

    if-ge v4, v1, :cond_4

    .line 678
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAppInfosFromTheme of info list,invalid category:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 678
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    goto :goto_2

    .line 682
    :cond_4
    nop

    .line 683
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getCategory()I

    move-result v4

    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getIconBitmapFromTheme(ILjava/lang/String;Lcom/xiaopeng/xuimanager/theme/Theme;)[Landroid/graphics/Bitmap;

    move-result-object v4

    .line 682
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->updateAppInfoFromThemeBitmaps(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;[Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 684
    .local v4, "updated":Z
    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    .line 685
    const/4 v0, 0x1

    .line 687
    .end local v3    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .end local v4    # "updated":Z
    :cond_5
    goto :goto_2

    .line 690
    :cond_6
    return v0
.end method

.method public abstract updateApplist(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public updateAppsInfoFromOperation([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/util/Collection;)V
    .locals 3
    .param p1, "infoArray"    # [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 794
    .local p2, "infoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    if-eqz p1, :cond_1

    .line 795
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 796
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 795
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    :cond_0
    return-void

    .line 801
    :cond_1
    if-eqz p2, :cond_3

    .line 802
    monitor-enter p2

    .line 803
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 804
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->updateAppInfoFromOperation(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    .line 805
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    goto :goto_1

    .line 806
    :cond_2
    monitor-exit p2

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 809
    :cond_3
    return-void
.end method

.method public updateInnerAppInfoFromAppInfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 3
    .param p1, "innerAppInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p2, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 842
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInnerAppInfoFromAppInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",innerAppInfo.getPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",innerAppInfo.mIconUpdatedByOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconUpdatedByOut:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setTitle(Ljava/lang/String;)V

    .line 846
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 847
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 849
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 852
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 855
    :cond_3
    return-void
.end method
