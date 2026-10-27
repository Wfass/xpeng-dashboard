.class public final Lcom/android/car/CarServiceUtils;
.super Ljava/lang/Object;
.source "CarServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarServiceUtils$SyncRunnable;
    }
.end annotation


# static fields
.field private static final CAR_CONNECT_STATUS_PROPERTY:Ljava/lang/String; = "sys.car_connect.status"

.field private static final PACKAGE_NOT_FOUND:Ljava/lang/String; = "Package not found:"

.field private static volatile sIsCduConnectedToCar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/car/CarServiceUtils;->sIsCduConnectedToCar:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 52
    if-eqz p1, :cond_2

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 63
    nop

    .line 64
    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 68
    .local v1, "uid":I
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_0

    .line 72
    return-void

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong package name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", The package does not belong to caller\'s uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v1    # "uid":I
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "CAR.SERVICE"

    invoke-static {v3, v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 53
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 229
    .local p0, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 230
    const-string v0, "null"

    return-object v0

    .line 232
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 233
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    const-string v1, "[]"

    return-object v1

    .line 237
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 241
    .local v2, "e":I
    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 243
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 245
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .end local v2    # "e":I
    goto :goto_0
.end method

.method public static isCduConnectedToCar()Z
    .locals 2

    .line 220
    sget-boolean v0, Lcom/android/car/CarServiceUtils;->sIsCduConnectedToCar:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    const-string v0, "sys.car_connect.status"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/car/CarServiceUtils;->sIsCduConnectedToCar:Z

    .line 225
    sget-boolean v1, Lcom/android/car/CarServiceUtils;->sIsCduConnectedToCar:Z

    return v1
.end method

.method public static runOnLooper(Landroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public static runOnLooperSync(Landroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/car/CarServiceUtils$SyncRunnable;

    invoke-direct {v1, p1}, Lcom/android/car/CarServiceUtils$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .local v1, "sr":Lcom/android/car/CarServiceUtils$SyncRunnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-virtual {v1}, Lcom/android/car/CarServiceUtils$SyncRunnable;->waitForComplete()V

    .line 120
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "sr":Lcom/android/car/CarServiceUtils$SyncRunnable;
    :goto_0
    return-void
.end method

.method public static runOnMain(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 80
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/car/CarServiceUtils;->runOnLooper(Landroid/os/Looper;Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public static runOnMainSync(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/car/CarServiceUtils;->runOnLooperSync(Landroid/os/Looper;Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public static toByteArray(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 178
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-eqz p0, :cond_1

    .line 179
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    .local v0, "size":I
    new-array v1, v0, [B

    .line 181
    .local v1, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 182
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 186
    .end local v0    # "size":I
    .end local v1    # "array":[B
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toFloatArray(Ljava/util/List;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .line 152
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p0, :cond_1

    .line 153
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    .local v0, "size":I
    new-array v1, v0, [F

    .line 155
    .local v1, "array":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 160
    .end local v0    # "size":I
    .end local v1    # "array":[F
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toIntArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 165
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_1

    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    .local v0, "size":I
    new-array v1, v0, [I

    .line 168
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 173
    .end local v0    # "size":I
    .end local v1    # "array":[I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toIntArray([Ljava/lang/Integer;)[I
    .locals 4
    .param p0, "input"    # [Ljava/lang/Integer;

    .line 191
    if-eqz p0, :cond_1

    .line 192
    array-length v0, p0

    .line 193
    .local v0, "len":I
    new-array v1, v0, [I

    .line 194
    .local v1, "arr":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 195
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 199
    .end local v0    # "len":I
    .end local v1    # "arr":[I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toLongArray([Ljava/lang/Long;)[J
    .locals 5
    .param p0, "input"    # [Ljava/lang/Long;

    .line 204
    if-eqz p0, :cond_1

    .line 205
    array-length v0, p0

    .line 206
    .local v0, "len":I
    new-array v1, v0, [J

    .line 207
    .local v1, "arr":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 208
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 212
    .end local v0    # "len":I
    .end local v1    # "arr":[J
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
