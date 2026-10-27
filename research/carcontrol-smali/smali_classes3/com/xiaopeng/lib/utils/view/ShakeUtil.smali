.class public Lcom/xiaopeng/lib/utils/view/ShakeUtil;
.super Ljava/lang/Object;
.source "ShakeUtil.java"


# static fields
.field private static mHashMap:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized canExecute(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 20
    sget-object v3, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 23
    sget-object v4, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized canExecuteLong(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 34
    sget-object v3, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 37
    sget-object v4, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized canExecuteLong(II)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "duration"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 48
    sget-object v3, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 51
    sget-object v3, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
