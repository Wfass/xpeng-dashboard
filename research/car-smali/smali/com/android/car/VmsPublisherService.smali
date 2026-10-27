.class public Lcom/android/car/VmsPublisherService;
.super Landroid/car/vms/IVmsPublisherService$Stub;
.source "VmsPublisherService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/VmsPublisherService$EventHandler;,
        Lcom/android/car/VmsPublisherService$PublisherConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_HAL_SUBSCRIPTION_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VmsPublisherService"


# instance fields
.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHal:Lcom/android/car/hal/VmsHalService;

.field private final mHalPublisherListener:Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mPublisherConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/VmsPublisherService$PublisherConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublisherMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/vms/IVmsPublisherClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafePermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/VmsHalService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/VmsHalService;

    .line 73
    invoke-direct {p0}, Landroid/car/vms/IVmsPublisherService$Stub;-><init>()V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherMap:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/android/car/VmsPublisherService$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/VmsPublisherService$EventHandler;-><init>(Lcom/android/car/VmsPublisherService;Lcom/android/car/VmsPublisherService$1;)V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    .line 77
    new-instance v0, Lcom/android/car/-$$Lambda$VmsPublisherService$z2FWUgD6TdtIdUiU5rVp0q5ZFqE;

    invoke-direct {v0, p0}, Lcom/android/car/-$$Lambda$VmsPublisherService$z2FWUgD6TdtIdUiU5rVp0q5ZFqE;-><init>(Lcom/android/car/VmsPublisherService;)V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mHalPublisherListener:Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mSafePermissions:Ljava/util/Set;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/VmsPublisherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService;->onLockedBootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/VmsPublisherService;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService;->bind(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 57
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/VmsPublisherService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 57
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/VmsPublisherService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 57
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/VmsPublisherService;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService;->unbind(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/VmsPublisherService;Landroid/car/vms/VmsSubscriptionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;
    .param p1, "x1"    # Landroid/car/vms/VmsSubscriptionState;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService;->handleHalSubscriptionChanged(Landroid/car/vms/VmsSubscriptionState;)V

    return-void
.end method

.method private bind(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 237
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "publisherName":Ljava/lang/String;
    const-string v1, "VmsPublisherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    return-void

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService;->grantPermissions(Landroid/content/ComponentName;)V

    .line 247
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    new-instance v2, Lcom/android/car/VmsPublisherService$PublisherConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/car/VmsPublisherService$PublisherConnection;-><init>(Lcom/android/car/VmsPublisherService;Landroid/content/ComponentName;)V

    .line 250
    .local v2, "connection":Lcom/android/car/VmsPublisherService$PublisherConnection;
    iget-object v3, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_1
    const-string v3, "VmsPublisherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to bind to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void
.end method

.method private bindToAllPublishers()V
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "publisherNames":[Ljava/lang/String;
    const-string v1, "VmsPublisherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publishers found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 116
    .local v3, "publisherName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const-string v4, "VmsPublisherService"

    const-string v5, "empty publisher name"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    goto :goto_1

    .line 120
    :cond_0
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 121
    .local v4, "name":Landroid/content/ComponentName;
    if-nez v4, :cond_1

    .line 122
    const-string v5, "VmsPublisherService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid publisher name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    goto :goto_1

    .line 126
    :cond_1
    iget-object v5, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 127
    const-string v5, "VmsPublisherService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VMS publisher not installed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_1

    .line 131
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/car/VmsPublisherService;->bind(Landroid/content/ComponentName;)V

    .line 115
    .end local v3    # "publisherName":Ljava/lang/String;
    .end local v4    # "name":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_3
    return-void
.end method

.method private grantPermissions(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 280
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "packageName":Ljava/lang/String;
    const/16 v2, 0x1000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 288
    nop

    .line 290
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 292
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/car/VmsPublisherService;->mSafePermissions:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 293
    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 297
    goto :goto_1

    .line 300
    :cond_2
    :try_start_1
    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 302
    const-string v7, "VmsPublisherService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " granted to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    goto :goto_1

    .line 303
    :catch_0
    move-exception v7

    .line 304
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v8, "VmsPublisherService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while trying to grant "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 308
    :cond_3
    return-void

    .line 286
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 287
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "VmsPublisherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    return-void
.end method

.method private handleHalSubscriptionChanged(Landroid/car/vms/VmsSubscriptionState;)V
    .locals 6
    .param p1, "subscriptionState"    # Landroid/car/vms/VmsSubscriptionState;

    .line 222
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/vms/IVmsPublisherClient;

    .line 224
    .local v1, "client":Landroid/car/vms/IVmsPublisherClient;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/vms/IVmsPublisherClient;->onVmsSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_1

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "VmsPublisherService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to send notification to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v1    # "client":Landroid/car/vms/IVmsPublisherClient;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method private isTestEnvironment()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/car/VmsPublisherService;Landroid/car/vms/VmsSubscriptionState;)V
    .locals 3
    .param p1, "subscriptionState"    # Landroid/car/vms/VmsSubscriptionState;

    .line 77
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onLockedBootCompleted()V
    .locals 2

    .line 211
    const-string v0, "VmsPublisherService"

    const-string v1, "onLockedBootCompleted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService;->bindToAllPublishers()V

    .line 214
    return-void
.end method

.method private unbind(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 264
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "publisherName":Ljava/lang/String;
    const-string v1, "VmsPublisherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mPublisherMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 270
    .local v1, "found":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/VmsPublisherService$PublisherConnection;

    .line 272
    .local v2, "connection":Lcom/android/car/VmsPublisherService$PublisherConnection;
    iget-object v3, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 273
    iget-object v3, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v2    # "connection":Lcom/android/car/VmsPublisherService$PublisherConnection;
    goto :goto_1

    .line 275
    :cond_1
    const-string v2, "VmsPublisherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind: unknown publisher."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSafePermissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mSafePermissions:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPublisherMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mPublisherMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPublisherConnectionMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public getPublisherId([B)I
    .locals 1
    .param p1, "publisherInfo"    # [B

    .line 206
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsPublisherPermission(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VmsHalService;->getPublisherId([B)I

    move-result v0

    return v0
.end method

.method public getSubscriptions()Landroid/car/vms/VmsSubscriptionState;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsPublisherPermission(Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/VmsHalService;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mHalPublisherListener:Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/VmsHalService;->addPublisherListener(Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;)V

    .line 90
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService;->isTestEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "VmsPublisherService"

    const-string v1, "Running under test environment"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService;->bindToAllPublishers()V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/android/car/VmsPublisherService$1;

    invoke-direct {v0, p0}, Lcom/android/car/VmsPublisherService$1;-><init>(Lcom/android/car/VmsPublisherService;)V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    :goto_0
    return-void
.end method

.method public publish(Landroid/os/IBinder;Landroid/car/vms/VmsLayer;I[B)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I
    .param p4, "payload"    # [B

    .line 168
    const-string v0, "VmsPublisherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing for layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsPublisherPermission(Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    .line 174
    invoke-virtual {v0, p2, p3}, Lcom/android/car/hal/VmsHalService;->getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    const-string v1, "VmsPublisherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of subscribed apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/vms/IVmsSubscriberClient;

    .line 181
    .local v2, "listener":Landroid/car/vms/IVmsSubscriberClient;
    :try_start_0
    invoke-interface {v2, p2, p4}, Landroid/car/vms/IVmsSubscriberClient;->onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_1

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "VmsPublisherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to publish to listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2    # "listener":Landroid/car/vms/IVmsSubscriberClient;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p2}, Lcom/android/car/hal/VmsHalService;->isHalSubscribed(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "VmsPublisherService"

    const-string v2, "HAL is subscribed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p2, p4}, Lcom/android/car/hal/VmsHalService;->setDataMessage(Landroid/car/vms/VmsLayer;[B)Z

    goto :goto_2

    .line 192
    :cond_1
    const-string v1, "VmsPublisherService"

    const-string v2, "HAL is NOT subscribed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_2
    return-void
.end method

.method public release()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService;->mHalPublisherListener:Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/VmsHalService;->removePublisherListener(Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/VmsPublisherService$PublisherConnection;

    .line 144
    .local v1, "connection":Lcom/android/car/VmsPublisherService$PublisherConnection;
    iget-object v2, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 145
    .end local v1    # "connection":Lcom/android/car/VmsPublisherService$PublisherConnection;
    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherConnectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    return-void
.end method

.method public setLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "offering"    # Landroid/car/vms/VmsLayersOffering;

    .line 161
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/hal/VmsHalService;->setPublisherLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 162
    return-void
.end method
