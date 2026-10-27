.class public Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "MobileAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MASK_BITMAP_PATH:Ljava/lang/String; = "/system/etc/xuiservice/mobileappmask.png"

.field private static final REAL_PKG_NAME:Ljava/lang/String; = "com.xiaopeng.deviceshare"

.field private static final TAG:Ljava/lang/String; = "MobileAppManager"


# instance fields
.field private final mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

.field private mDeviceShareListener:Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;

.field private volatile mMaskBitmap:Landroid/graphics/Bitmap;

.field private final mShareAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mShareAppMap:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mDeviceShareListener:Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->updataCategoryMetaData(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mShareAppMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
    .param p1, "x1"    # [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->updateSharedApps([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    return-void
.end method

.method static synthetic access$400()Lcom/xiaopeng/xuimanager/applist/AppEventListener;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
    .locals 1

    .line 127
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$SingletonHolder;->access$600()Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sharedAppTransfer$0(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)Z
    .locals 2
    .param p0, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p1, "app"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 350
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadSharedApps(Z)V
    .locals 6
    .param p1, "notify"    # Z

    .line 269
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mDeviceShareListener:Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->registerListener(Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;)I

    .line 271
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getShareApps(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    move-result-object v0

    .line 273
    .local v0, "sharedApps":[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getConnectedDevice(I)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    move-result-object v2

    .line 274
    .local v2, "device":[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 275
    aget-object v4, v2, v3

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->getLastProtocolType()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->updataCategoryMetaData(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V

    .line 277
    :cond_0
    if-eqz v0, :cond_5

    .line 278
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->getShareDevice()Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    move-result-object v4

    if-nez v4, :cond_3

    .line 279
    :cond_1
    if-eqz v2, :cond_2

    aget-object v1, v2, v3

    nop

    :cond_2
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getProtocol()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->updataCategoryMetaData(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V

    .line 281
    :cond_3
    if-eqz p1, :cond_4

    .line 282
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->updateSharedApps([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    goto :goto_0

    .line 284
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->updateSharedApps([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    .line 287
    :cond_5
    :goto_0
    const-string v1, "MobileAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSharedApps,sharedApps size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    if-eqz v0, :cond_6

    array-length v3, v0

    nop

    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private pkgExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 421
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    const/4 v0, 0x1

    return v0

    .line 424
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_1
    goto :goto_0

    .line 425
    :cond_2
    return v1
.end method

.method private sharedApp2AppInfo(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;)Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .locals 9
    .param p1, "sharedApp"    # Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    .line 292
    if-nez p1, :cond_0

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;-><init>()V

    .line 296
    .local v0, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setCategory(I)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getProtocol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setAppId(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getFriendName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setTitle(Ljava/lang/String;)V

    .line 302
    const/4 v1, -0x1

    .line 303
    .local v1, "subCategory":I
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getProtocol()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 311
    const/4 v1, -0x1

    goto :goto_0

    .line 308
    :pswitch_0
    const/4 v1, 0x6

    .line 309
    goto :goto_0

    .line 305
    :pswitch_1
    const/4 v1, 0x5

    .line 306
    nop

    .line 315
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setSubCategory(I)V

    .line 316
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getIcon()[B

    move-result-object v2

    .line 317
    .local v2, "iconData":[B
    if-eqz v2, :cond_3

    .line 318
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 319
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const-string v5, "MobileAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sharedApp2AppInfo,bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    if-eqz v3, :cond_2

    .line 321
    new-instance v5, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    invoke-direct {v5}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;-><init>()V

    .line 322
    .local v5, "appIcon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    sget v6, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    const/4 v7, 0x1

    invoke-virtual {p0, v3, v6, v4, v7}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->checkBitMap(Ljava/lang/Object;IZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 324
    move-object v4, v3

    .line 325
    .local v4, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v6

    .line 326
    .local v6, "xpPkgInfo":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v6, :cond_1

    const/16 v7, 0x8

    iget v8, v6, Lcom/xiaopeng/app/xpPackageInfo;->gearLevelFlags:I

    if-ne v7, v8, :cond_1

    .line 327
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 328
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v7, v3}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->maskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 331
    :cond_1
    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppIcon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 333
    .end local v4    # "result":Landroid/graphics/Bitmap;
    .end local v5    # "appIcon":Lcom/xiaopeng/xuimanager/applist/data/AppIcon;
    .end local v6    # "xpPkgInfo":Lcom/xiaopeng/app/xpPackageInfo;
    goto :goto_1

    .line 334
    :cond_2
    const-string v4, "MobileAppManager"

    const-string v5, "sharedApp2AppInfo,bitmap is null"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    goto :goto_2

    .line 337
    :cond_3
    const-string v3, "MobileAppManager"

    const-string v4, "sharedApp2AppInfo,iconData is null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sharedAppTransfer([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "sharedApps"    # [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    const-string v1, "/system/etc/xuiservice/mobileappmask.png"

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 346
    const-string v1, "MobileAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode mask bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 348
    .local v3, "sharedApp":Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->sharedApp2AppInfo(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;)Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    move-result-object v4

    .line 349
    .local v4, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    if-eqz v4, :cond_1

    .line 350
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    new-instance v6, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$X3DRK9m_yoPc6JJpB_wQN17RJ7A;

    invoke-direct {v6, v4}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$X3DRK9m_yoPc6JJpB_wQN17RJ7A;-><init>(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 351
    const/4 v5, 0x4

    if-eq v5, p2, :cond_0

    .line 352
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mShareAppMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 355
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mShareAppMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 359
    :cond_1
    const-string v5, "MobileAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sharedAppTransfer,appInfo is null,sharedApp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v3    # "sharedApp":Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .end local v4    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 363
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 367
    :cond_3
    return-object v0
.end method

.method private updataCategoryMetaData(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V
    .locals 5
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .param p2, "protocolType"    # I

    .line 382
    const-string v0, ""

    .line 383
    .local v0, "tabTitle":Ljava/lang/String;
    const/4 v1, -0x1

    .line 384
    .local v1, "subCategory":I
    const-string v2, "MobileAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updataCategoryMetaData,device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",protocolType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mCategoryMetaData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-eqz p1, :cond_1

    .line 387
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 389
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getProtocolInfo(I)Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;

    move-result-object v2

    .line 390
    .local v2, "protocolInfo":Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;
    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->getTabDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_0
    const-string v0, "ICCOA CarLink"

    .line 395
    :goto_0
    const/4 v1, 0x6

    .line 396
    goto :goto_1

    .line 398
    .end local v2    # "protocolInfo":Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;
    :pswitch_1
    const-string v0, "HUAWEI HiCar"

    .line 399
    const/4 v1, 0x5

    .line 400
    nop

    .line 405
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    if-nez v2, :cond_2

    .line 406
    new-instance v2, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    invoke-direct {v2}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->setCategory(I)V

    .line 409
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->setSubCategory(I)V

    .line 410
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->setCategoryTitle(Ljava/lang/String;)V

    .line 411
    if-eqz p1, :cond_3

    .line 412
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;->setShareDevice(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)V

    .line 414
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSharedApps([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V
    .locals 5
    .param p1, "sharedApps"    # [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .param p2, "eventType"    # I

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->sharedAppTransfer([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 374
    .local v1, "infos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const-string v2, "MobileAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSharedApps,infos size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v2, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v1, v3}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 379
    .end local v1    # "infos":[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 148
    const-string v0, "MobileAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList,app size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->loadSharedApps(Z)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 3
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 160
    const-string v0, "MobileAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfoList,screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",app size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->loadSharedApps(Z)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->innerList2OutList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryMetaData()Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mCategoryMetaData:Lcom/xiaopeng/xuimanager/applist/data/CategoryMetaData;

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 132
    const-string v0, "MobileAppManager"

    return-object v0
.end method

.method public getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    const-string v1, "com.xiaopeng.deviceshare"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getRunningXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 252
    nop

    .line 255
    const-string v1, "MobileAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpPackageInfo pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-object v0

    .line 259
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_1

    .line 261
    iput-object p1, v0, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    .line 263
    :cond_1
    const-string v1, "MobileAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpPackageInfo,s2,pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 137
    const-string v0, "MobileAppManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->loadSharedApps(Z)V

    .line 139
    return-void
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 229
    const-string v0, "MobileAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationChanged groupType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 187
    const/4 v0, 0x0

    .line 189
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mShareAppMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    .line 190
    .local v1, "shareApp":Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    if-nez v1, :cond_0

    .line 191
    const-string v2, "MobileAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startApp,shareApp is null,app info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v2, -0x3ea

    return v2

    .line 195
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->getCallScreenId()I

    move-result v2

    .line 196
    .local v2, "screenId":I
    if-eqz p2, :cond_1

    .line 197
    const-string v3, "screenId"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 198
    const-string v3, "MobileAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client set screenId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->startApp(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)I

    move-result v0

    .line 203
    return v0
.end method

.method public stopApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 5
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "ret":I
    const-string v1, "MobileAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopApp,info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mShareAppMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    .line 212
    .local v1, "shareApp":Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    if-nez v1, :cond_0

    .line 213
    const-string v2, "MobileAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startApp,shareApp is null,app info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/16 v2, -0x3ea

    return v2

    .line 217
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->stopApp(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;)I

    move-result v0

    .line 219
    return v0
.end method

.method public underMyManagement(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 235
    const-string v0, "com.xiaopeng.deviceshare"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 236
    return v1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->pkgExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    return v1

    .line 243
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public updateApplist(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;)I"
        }
    .end annotation

    .line 172
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/4 v0, 0x0

    return v0
.end method
