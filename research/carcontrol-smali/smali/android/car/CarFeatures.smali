.class public final Landroid/car/CarFeatures;
.super Ljava/lang/Object;
.source "CarFeatures.java"


# static fields
.field public static FEATURE_CAR_USER_NOTICE_SERVICE:Ljava/lang/String; = "com.android.car.user.CarUserNoticeService"


# instance fields
.field private final mCachedFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method isFeatureEnabled(Landroid/car/ICar;Ljava/lang/String;)Z
    .locals 3

    .line 58
    iget-object v0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 63
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    invoke-interface {p1, p2}, Landroid/car/ICar;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 67
    iget-object v0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :try_start_2
    iget-object v1, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    .line 63
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method resetCache()V
    .locals 2

    .line 79
    iget-object v0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
