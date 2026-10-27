.class Landroid/support/v4/media/MediaLibrarySessionImplBase;
.super Landroid/support/v4/media/MediaSession2ImplBase;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final mBrowserServiceLegacyStub:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/v4/media/MediaSession2$ControllerInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p9}, Landroid/support/v4/media/MediaSession2ImplBase;-><init>(Landroid/support/v4/media/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V

    .line 48
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    .line 57
    new-instance p1, Landroid/support/v4/media/MediaLibraryService2LegacyStub;

    invoke-direct {p1, p0}, Landroid/support/v4/media/MediaLibraryService2LegacyStub;-><init>(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;)V

    iput-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mBrowserServiceLegacyStub:Landroid/support/v4/media/MediaBrowserServiceCompat;

    .line 58
    iget-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mBrowserServiceLegacyStub:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->attachToBaseContext(Landroid/content/Context;)V

    .line 59
    iget-object p1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mBrowserServiceLegacyStub:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onCreate()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaLibrarySessionImplBase;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->isSubscribed(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaLibrarySessionImplBase;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->dumpSubscription()V

    return-void
.end method

.method private dumpSubscription()V
    .locals 7

    .line 260
    sget-boolean v0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->DEBUG:Z

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    const-string v1, "MS2ImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping subscription, controller sz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 266
    const-string v2, "MS2ImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  controller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    const-string v4, "MS2ImplBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_2
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSubscribed(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Z
    .locals 2

    .line 249
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 251
    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    monitor-exit v0

    .line 255
    const/4 p1, 0x1

    return p1

    .line 252
    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 254
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    return-object v0
.end method

.method public bridge synthetic getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    return-object v0
.end method

.method public bridge synthetic getInstance()Landroid/support/v4/media/MediaSession2;
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method public getLegacySessionBinder()Landroid/os/IBinder;
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mBrowserServiceLegacyStub:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public notifyChildrenChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    .line 105
    if-eqz p1, :cond_2

    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    if-ltz p3, :cond_0

    .line 114
    new-instance v0, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/MediaLibrarySessionImplBase$2;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 128
    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    if-ltz p2, :cond_2

    .line 88
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/support/v4/media/MediaLibrarySessionImplBase$1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v4/media/MediaLibrarySessionImplBase$1;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 95
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 96
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-direct {p0, p3, p1}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->isSubscribed(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 97
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {p0, p3, v1}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 95
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-void

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifySearchResultChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 133
    if-eqz p1, :cond_1

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;

    invoke-direct {v0, p0, p2, p3, p4}, Landroid/support/v4/media/MediaLibrarySessionImplBase$3;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 145
    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onGetChildrenOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    .line 189
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p4, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onGetChildren() shouldn\'t return media items more than pageSize. result.size()="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pageSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v4/media/MediaLibrarySessionImplBase$6;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/MediaLibrarySessionImplBase$6;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 200
    return-void
.end method

.method public onGetItemOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetItem(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)Landroid/support/v4/media/MediaItem2;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;

    invoke-direct {v1, p0, p2, v0}, Landroid/support/v4/media/MediaLibrarySessionImplBase$5;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;Landroid/support/v4/media/MediaItem2;)V

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 182
    return-void
.end method

.method public onGetLibraryRootOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetLibraryRoot(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/os/Bundle;)Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;

    invoke-direct {v1, p0, p2, v0}, Landroid/support/v4/media/MediaLibrarySessionImplBase$4;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Landroid/os/Bundle;Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;)V

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 165
    return-void
.end method

.method public onGetSearchResultOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9

    .line 233
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetSearchResult(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    .line 235
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p4, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onGetSearchResult() shouldn\'t return media items more than pageSize. result.size()="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pageSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_1
    :goto_0
    new-instance v0, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/MediaLibrarySessionImplBase$7;-><init>(Landroid/support/v4/media/MediaLibrarySessionImplBase;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 246
    return-void
.end method

.method public onSearchOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onSearch(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 228
    return-void
.end method

.method public onSubscribeOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 204
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 206
    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 208
    iget-object v2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onSubscribe(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    return-void

    .line 211
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUnsubscribeOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 2

    .line 219
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibrarySessionImplBase;->getInstance()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onUnsubscribe(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 221
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaLibrarySessionImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    monitor-exit p2

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
