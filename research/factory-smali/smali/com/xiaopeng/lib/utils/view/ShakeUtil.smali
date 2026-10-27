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
    .locals 10
    .param p0, "id"    # I

    const-class v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;

    monitor-enter v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 19
    .local v2, "mill":J
    const-wide/16 v4, 0x0

    .line 20
    .local v4, "oldMill":J
    sget-object v6, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    move-wide v4, v6

    .line 21
    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    sget-object v6, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    monitor-exit v0

    return v1

    .line 16
    .end local v1    # "flag":Z
    .end local v2    # "mill":J
    .end local v4    # "oldMill":J
    .end local p0    # "id":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized canExecuteLong(I)Z
    .locals 10
    .param p0, "id"    # I

    const-class v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;

    monitor-enter v0

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    .local v2, "mill":J
    const-wide/16 v4, 0x0

    .line 34
    .local v4, "oldMill":J
    sget-object v6, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    move-wide v4, v6

    .line 35
    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 37
    sget-object v6, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    monitor-exit v0

    return v1

    .line 30
    .end local v1    # "flag":Z
    .end local v2    # "mill":J
    .end local v4    # "oldMill":J
    .end local p0    # "id":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized canExecuteLong(II)Z
    .locals 10
    .param p0, "id"    # I
    .param p1, "duration"    # I

    const-class v0, Lcom/xiaopeng/lib/utils/view/ShakeUtil;

    monitor-enter v0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    .local v2, "mill":J
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "oldMill":J
    sget-object v6, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    move-wide v4, v6

    .line 49
    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    int-to-long v8, p1

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 51
    sget-object v6, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->mHashMap:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    monitor-exit v0

    return v1

    .line 44
    .end local v1    # "flag":Z
    .end local v2    # "mill":J
    .end local v4    # "oldMill":J
    .end local p0    # "id":I
    .end local p1    # "duration":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
