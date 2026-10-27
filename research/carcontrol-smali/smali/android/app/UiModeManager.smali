.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;,
        Landroid/app/UiModeManager$InnerListener;,
        Landroid/app/UiModeManager$ProjectionType;,
        Landroid/app/UiModeManager$DisableCarMode;,
        Landroid/app/UiModeManager$EnableCarMode;,
        Landroid/app/UiModeManager$NightMode;,
        Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    }
.end annotation


# static fields
.field public static ACTION_ENTER_CAR_MODE:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE"

.field public static final ACTION_ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = "android.app.action.ENTER_DESK_MODE"

.field public static ACTION_EXIT_CAR_MODE:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE"

.field public static final ACTION_EXIT_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = "android.app.action.EXIT_DESK_MODE"

.field public static final DEFAULT_PRIORITY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DISABLE_CAR_MODE_ALL_PRIORITIES:I = 0x2

.field public static final DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.app.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PRIORITY:Ljava/lang/String; = "android.app.extra.PRIORITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_CUSTOM:I = 0x3

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_YES:I = 0x2

.field public static final PROJECTION_TYPE_ALL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROJECTION_TYPE_AUTOMOTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROJECTION_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final PROP_THEME_INTERVAL:Ljava/lang/String; = "persist.sys.theme.interval"

.field private static final TAG:Ljava/lang/String; = "UiModeManager"

.field public static final THEME_ANIMATION_INTERVAL:J

.field public static final THEME_TIMEOUT_DELAY:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

.field private final mProjectionStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            "Landroid/app/UiModeManager$InnerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/IUiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.sys.theme.interval"

    const-wide/16 v1, 0x1f4

    .line 966
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/UiModeManager;->THEME_ANIMATION_INTERVAL:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    .line 968
    sput-wide v0, Landroid/app/UiModeManager;->THEME_TIMEOUT_DELAY:J

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Landroid/app/UiModeManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    .line 273
    new-instance v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>(Landroid/app/UiModeManager$1;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const-string/jumbo v0, "uimode"

    .line 285
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    .line 286
    iput-object p1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 850
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "UiModeManager"

    const-string p2, "Attempted to add listener that was already added."

    .line 852
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v0

    return-void

    .line 855
    :cond_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_1

    .line 856
    new-instance v1, Landroid/app/UiModeManager$InnerListener;

    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    :try_start_1
    iget-object p2, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {p2, v1, p1}, Landroid/app/IUiModeManager;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 860
    iget-object p1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 862
    :try_start_2
    iget-object p2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {p2, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 863
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 866
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public applyDayNightMode(I)V
    .locals 1

    .line 1019
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1021
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->applyDayNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1023
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public applyDayNightModeEx(IZ)V
    .locals 1

    .line 1029
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1031
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IUiModeManager;->applyDayNightModeEx(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1033
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public applyOverrideNightMode(I)V
    .locals 1

    .line 1062
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1064
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->applyOverrideNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1066
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public applyThemeMode(I)V
    .locals 1

    .line 1000
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1002
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->applyThemeMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1004
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public applyThemeStyle(Ljava/lang/String;)V
    .locals 1

    .line 1009
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1011
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->applyThemeStyle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1013
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public disableCarMode(I)V
    .locals 2

    .line 427
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_1

    .line 430
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 429
    :goto_0
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 432
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public enableCarMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0, p1}, Landroid/app/UiModeManager;->enableCarMode(II)V

    return-void
.end method

.method public enableCarMode(II)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_1

    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_0
    invoke-interface {v0, p2, p1, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 380
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public getActiveProjectionTypes()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 825
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 827
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getActiveProjectionTypes()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 829
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentModeType()I
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCustomNightModeEnd()Ljava/time/LocalTime;
    .locals 4

    .line 670
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 672
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 674
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 677
    :cond_0
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getCustomNightModeStart()Ljava/time/LocalTime;
    .locals 4

    .line 635
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 637
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 639
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 642
    :cond_0
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getDayNightAutoMode()I
    .locals 1

    .line 990
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 992
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getDayNightAutoMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 994
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDayNightMode()I
    .locals 1

    .line 980
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 982
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getDayNightMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 984
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNightMode()I
    .locals 1

    .line 561
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 565
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getProjectingPackages(I)Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 809
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getProjectingPackages(I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 811
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 814
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getThemeMode()I
    .locals 1

    .line 970
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 972
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getThemeMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 974
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTwilightState(Landroid/location/Location;J)[J
    .locals 1

    .line 1050
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1052
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IUiModeManager;->getTwilightState(Landroid/location/Location;J)[J

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1054
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 1058
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public isNightModeLocked()Z
    .locals 1

    .line 600
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 602
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->isNightModeLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isThemeWorking()Z
    .locals 1

    .line 1039
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 1041
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->isThemeWorking()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1043
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUiModeLocked()Z
    .locals 1

    .line 578
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 580
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->isUiModeLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 582
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public releaseProjection(I)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 784
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 786
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->releaseProjection(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 788
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeOnProjectionStateChangedListener(Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 880
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$InnerListener;

    if-nez v1, :cond_0

    const-string p1, "UiModeManager"

    const-string v1, "Attempted to remove listener that was not added."

    .line 883
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    monitor-exit v0

    return-void

    .line 886
    :cond_0
    iget-object v2, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 888
    :try_start_1
    invoke-interface {v2, v1}, Landroid/app/IUiModeManager;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 890
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 893
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    iget-object p1, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {p1, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 895
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public requestProjection(I)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 755
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 757
    :try_start_0
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v2, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 758
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-interface {v0, v1, p1, v2}, Landroid/app/IUiModeManager;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 760
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationNightMode(I)V
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setApplicationNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 540
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setCustomNightModeEnd(Ljava/time/LocalTime;)V
    .locals 5

    .line 688
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 690
    :try_start_0
    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 692
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setCustomNightModeStart(Ljava/time/LocalTime;)V
    .locals 5

    .line 653
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 655
    :try_start_0
    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 657
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 0

    return-void
.end method

.method public setNightModeActivated(Z)Z
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 619
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeActivated(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
