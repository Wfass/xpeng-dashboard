.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$Result;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final EPSILON:F = 1.0E-5f

.field public static final KEY_MEDIA_ITEM:Ljava/lang/String; = "media_item"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final KEY_SEARCH_RESULTS:Ljava/lang/String; = "search_results"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final RESULT_ERROR:I = -0x1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED:I = 0x2

.field static final RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED:I = 0x4

.field static final RESULT_FLAG_OPTION_NOT_HANDLED:I = 0x1

.field public static final RESULT_OK:I = 0x0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final RESULT_PROGRESS_UPDATE:I = 0x1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.browse.MediaBrowserService"

.field static final TAG:Ljava/lang/String; = "MBServiceCompat"


# instance fields
.field final mConnections:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

.field final mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

.field private mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

.field mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    const-string v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 179
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    .line 181
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    .line 1623
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    .line 1427
    iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1428
    if-nez v0, :cond_0

    .line 1429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/Pair;

    .line 1432
    iget-object v3, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_1

    iget-object v2, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1433
    invoke-static {p4, v2}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1434
    return-void

    .line 1436
    :cond_1
    goto :goto_0

    .line 1437
    :cond_2
    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-direct {v1, p3, p4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    iget-object p3, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1441
    return-void
.end method

.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 1516
    if-nez p1, :cond_0

    .line 1517
    const/4 p1, 0x0

    return-object p1

    .line 1519
    :cond_0
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1520
    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 1521
    if-ne v0, v1, :cond_1

    if-ne p2, v1, :cond_1

    .line 1522
    return-object p1

    .line 1524
    :cond_1
    mul-int v1, p2, v0

    .line 1525
    add-int v2, v1, p2

    .line 1526
    if-ltz v0, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt v1, p2, :cond_2

    goto :goto_0

    .line 1529
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le v2, p2, :cond_3

    .line 1530
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1532
    :cond_3
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1527
    :cond_4
    :goto_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public attachToBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1115
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->attachBaseContext(Landroid/content/Context;)V

    .line 1116
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1142
    return-void
.end method

.method public final getBrowserRootHints()Landroid/os/Bundle;
    .locals 1

    .line 1341
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentBrowserInfo()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1352
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getCurrentBrowserInfo()Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1322
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getSubscribingBrowsers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation

    .line 1397
    if-eqz p1, :cond_0

    .line 1400
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->getSubscribingBrowsers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1398
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentId cannot be null in getSubscribingBrowsers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isValidPackage(Ljava/lang/String;I)Z
    .locals 4

    .line 1407
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1408
    return v0

    .line 1410
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1411
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 1412
    array-length v1, p2

    .line 1413
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1414
    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1415
    const/4 p1, 0x1

    return p1

    .line 1413
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1418
    :cond_2
    return v0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1364
    if-eqz p1, :cond_0

    .line 1367
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1368
    return-void

    .line 1365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1382
    if-eqz p1, :cond_1

    .line 1385
    if-eqz p2, :cond_0

    .line 1388
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1389
    return-void

    .line 1386
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "options cannot be null in notifyChildrenChanged"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1383
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parentId cannot be null in notifyChildrenChanged"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1137
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1120
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1122
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1123
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1124
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1125
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1126
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1127
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1128
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    goto :goto_0

    .line 1130
    :cond_3
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    .line 1132
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->onCreate()V

    .line 1133
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1295
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    .line 1296
    return-void
.end method

.method public abstract onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1220
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1221
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 1222
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p2    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1243
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1244
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 1245
    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1270
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->setFlags(I)V

    .line 1271
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 1272
    return-void
.end method

.method performCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 1

    .line 1591
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$4;

    invoke-direct {v0, p0, p1, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat$4;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1608
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1609
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 1610
    const/4 p3, 0x0

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1612
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1617
    return-void

    .line 1613
    :cond_0
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCustomAction must call detach() or sendResult() or sendError() before returning for action="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extras="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8

    .line 1474
    new-instance v7, Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1500
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1501
    if-nez p3, :cond_0

    .line 1502
    invoke-virtual {p0, p1, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    goto :goto_0

    .line 1504
    :cond_0
    invoke-virtual {p0, p1, v7, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 1506
    :goto_0
    const/4 p3, 0x0

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1508
    invoke-virtual {v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1512
    return-void

    .line 1509
    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method performLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 1

    .line 1537
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1551
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1552
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 1553
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1555
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1559
    return-void

    .line 1556
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method performSearch(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/support/v4/os/ResultReceiver;)V
    .locals 1

    .line 1563
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;

    invoke-direct {v0, p0, p1, p4}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 1579
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1580
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V

    .line 1581
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1583
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->isDone()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1587
    return-void

    .line 1584
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSearch must call detach() or sendResult() before returning for query="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
    .locals 5

    .line 1447
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 1448
    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 1450
    :cond_1
    nop

    .line 1451
    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1452
    if-eqz v2, :cond_4

    .line 1453
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1454
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1455
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/util/Pair;

    iget-object v4, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v4, :cond_2

    .line 1456
    nop

    .line 1457
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1454
    move v0, v1

    goto :goto_0

    .line 1460
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_4

    .line 1461
    iget-object p2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_4
    return v0
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .line 1307
    if-eqz p1, :cond_1

    .line 1310
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    .line 1313
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mSession:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1314
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 1315
    return-void

    .line 1311
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The session token has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1308
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session token may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
