.class public Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.source "DownloadingAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$DownloadingAppManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadingAppManager"


# instance fields
.field private final iAssembleClientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;-><init>()V

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;-><init>(Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->iAssembleClientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "x2"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->assembleInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/applist/AppEventListener;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->mAppEventListener:Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    return-object v0
.end method

.method private assembleInfo2AppAssemble(Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 6
    .param p1, "target"    # Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;
    .param p2, "source"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 261
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setState(I)V

    .line 263
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getNotificationVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setNotificationVisibility(I)V

    .line 264
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getProgress()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setProgress(F)V

    .line 265
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->canPause()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setCanPause(Z)V

    .line 266
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->canStop()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setCanStop(Z)V

    .line 267
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->setIconUrl(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 269
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 270
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mExtra"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 273
    :try_start_0
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 274
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;->putExtraAll(Landroid/os/Bundle;)V

    .line 275
    const-string v2, "DownloadingAppManager"

    const-string v4, "assembleInfo2AppAssemble,put extra done"

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DownloadingAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assembleInfo2AppAssemble e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 269
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    :goto_1
    return-void
.end method

.method private assembleInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 5
    .param p1, "target"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "source"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 213
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setCategory(I)V

    .line 214
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStatus(I)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistConst;->getCategoryMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setAppId(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setTitle(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getAccessmbleInfoSupportScreenId(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)[I

    move-result-object v0

    .line 219
    .local v0, "screenIds":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 220
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 221
    invoke-virtual {p1, v2, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setScreenShow(II)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "i":I
    :cond_0
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 224
    .local v3, "screenId":I
    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setScreenShow(II)V

    .line 223
    .end local v3    # "screenId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_1
    const-string v1, "DownloadingAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assembleInfo2AppInfo,pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "target.mScreenShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->mScreenShow:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",screenIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getResourceType()I

    move-result v2

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;-><init>(ILjava/lang/String;)V

    .line 229
    .local v1, "appAssembleInfo":Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;
    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->assembleInfo2AppAssemble(Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V

    .line 230
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setAppAssembleInfo(Lcom/xiaopeng/xuimanager/applist/data/AppAssembleInfo;)V

    .line 231
    return-void
.end method

.method private getAccessmbleInfoSupportScreenId(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)[I
    .locals 9
    .param p1, "source"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 234
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 235
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mExtra"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 239
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v5, "extra_key_params_support_screen"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "screenIdstr":Ljava/lang/String;
    const-string v6, "DownloadingAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assembleInfo2AppAssemble init,screenIdstr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 242
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    .end local v5    # "screenIdstr":Ljava/lang/String;
    .local v1, "screenIdstr":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "screenIds":[Ljava/lang/String;
    array-length v6, v5

    new-array v6, v6, [I

    .line 245
    .local v6, "screenIdInt":[I
    nop

    .local v2, "i":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 246
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "i":I
    :cond_0
    const-string v2, "DownloadingAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assembleInfo2AppAssemble,screenIdInt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",screenIdstr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-object v6

    .line 253
    .end local v1    # "screenIdstr":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "screenIds":[Ljava/lang/String;
    .end local v6    # "screenIdInt":[I
    :cond_1
    goto :goto_2

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DownloadingAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assembleInfo2AppAssemble e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 234
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 257
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppInfoFromProvider()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "assembleInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 204
    .local v3, "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    new-instance v4, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    .line 205
    .local v4, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-direct {p0, v4, v3}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->assembleInfo2AppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V

    .line 206
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v3    # "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .end local v4    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    goto :goto_0

    .line 208
    :cond_1
    const-string v2, "DownloadingAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfoFromProvider,size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object v1

    .line 198
    .end local v1    # "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    :cond_2
    :goto_1
    const-string v1, "DownloadingAppManager"

    const-string v2, "getAppInfoFromProvider, null list"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;
    .locals 1

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$DownloadingAppManagerHolder;->access$300()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelDownloading(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    .line 163
    const/16 v1, 0x3e8

    invoke-static {v1, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->cancel(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v0

    .line 164
    .local v0, "result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    const-string v1, "DownloadingAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelDownloading,result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    return v1

    .line 168
    :cond_0
    const/16 v1, -0x3e8

    return v1
.end method

.method public getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getAppInfoFromProvider()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/applist/data/AppInfo;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getAppInfoFromProvider()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "DownloadingAppManager"

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->initialize(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->startObserve()V

    .line 68
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->iAssembleClientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->registerListener(ILcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    .line 69
    return-void
.end method

.method public onAppOperationChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 159
    return-void
.end method

.method public pauseDownloading(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    .line 174
    const/16 v1, 0x3e8

    invoke-static {v1, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->pause(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v0

    .line 175
    .local v0, "result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    const-string v1, "DownloadingAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownloading,result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x0

    return v1

    .line 179
    :cond_0
    const/16 v1, -0x3e8

    return v1
.end method

.method public resetAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public resumeDownloading(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    .line 185
    const/16 v1, 0x3e8

    invoke-static {v1, p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->resume(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v0

    .line 186
    .local v0, "result":Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    const-string v1, "DownloadingAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownloading,result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x0

    return v1

    .line 190
    :cond_0
    const/16 v1, -0x3e8

    return v1
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 135
    const-string v0, "DownloadingAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public updateAppInfo(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 112
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

    .line 101
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    const/4 v0, 0x0

    return v0
.end method
