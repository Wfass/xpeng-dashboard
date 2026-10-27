.class public Lcom/android/car/CarLocationService;
.super Landroid/content/BroadcastReceiver;
.source "CarLocationService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarLocationService$CarPropertyEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final FILENAME:Ljava/lang/String; = "location_cache.json"

.field private static final GRANULARITY_ONE_DAY_MS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "CarLocationService"

.field private static final TTL_THIRTY_DAYS_MS:J = 0x9a7ec800L


# instance fields
.field private final mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private final mCarPropertyEventListener:Lcom/android/car/CarLocationService$CarPropertyEventListener;

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mTaskCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPowerManagementService"    # Lcom/android/car/CarPowerManagementService;
    .param p3, "carPropertyService"    # Lcom/android/car/CarPropertyService;

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    .line 77
    const-string v0, "constructed"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/car/CarLocationService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 80
    iput-object p3, p0, Lcom/android/car/CarLocationService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 81
    new-instance v0, Lcom/android/car/CarLocationService$CarPropertyEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarLocationService$CarPropertyEventListener;-><init>(Lcom/android/car/CarLocationService;Lcom/android/car/CarLocationService$1;)V

    iput-object v0, p0, Lcom/android/car/CarLocationService;->mCarPropertyEventListener:Lcom/android/car/CarLocationService$CarPropertyEventListener;

    .line 82
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/CarLocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 54
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->storeLocation()V

    return-void
.end method

.method private deleteCacheFile()V
    .locals 2

    .line 288
    const-string v0, "Deleting cache file"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    const-string v1, "location_cache.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 290
    return-void
.end method

.method public static synthetic lambda$asyncOperation$4(Lcom/android/car/CarLocationService;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/Runnable;

    .line 304
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_1
    iget v2, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    if-nez v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 310
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    .line 311
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 313
    :cond_0
    monitor-exit v1

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 306
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_2
    iget v3, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    if-nez v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 310
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    .line 311
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 313
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public static synthetic lambda$onPrepareShutdown$0(Lcom/android/car/CarLocationService;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->storeLocation()V

    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/android/car/CarLocationService;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->loadLocation()V

    return-void
.end method

.method public static synthetic lambda$onReceive$2(Lcom/android/car/CarLocationService;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    return-void
.end method

.method public static synthetic lambda$onReceive$3(Lcom/android/car/CarLocationService;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    return-void
.end method

.method private loadLocation()V
    .locals 9

    .line 219
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->readLocationFromCacheFile()Landroid/location/Location;

    move-result-object v0

    .line 220
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read location from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 222
    .local v1, "currentTime":J
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 223
    const-string v3, "Location expired."

    invoke-static {v3}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 227
    .local v3, "elapsedTime":J
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 228
    invoke-virtual {v0}, Landroid/location/Location;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    iget-object v5, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    const-string v6, "location"

    .line 230
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 231
    .local v5, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->injectLocation(Landroid/location/Location;)Z

    move-result v6

    .line 232
    .local v6, "success":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Injected location "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 235
    .end local v3    # "elapsedTime":J
    .end local v5    # "locationManager":Landroid/location/LocationManager;
    .end local v6    # "success":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 322
    return-void
.end method

.method private readLocationFromCacheFile()Landroid/location/Location;
    .locals 7

    .line 238
    new-instance v0, Landroid/location/Location;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    const-string v3, "location_cache.json"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 241
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 242
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 243
    .local v3, "reader":Landroid/util/JsonReader;
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 244
    :goto_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 245
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "name":Ljava/lang/String;
    const-string v5, "provider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :cond_0
    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    goto/16 :goto_1

    .line 250
    :cond_1
    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_1

    .line 252
    :cond_2
    const-string v5, "altitude"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setAltitude(D)V

    goto/16 :goto_1

    .line 254
    :cond_3
    const-string v5, "speed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 255
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setSpeed(F)V

    goto/16 :goto_1

    .line 256
    :cond_4
    const-string v5, "bearing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 257
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setBearing(F)V

    goto :goto_1

    .line 258
    :cond_5
    const-string v5, "accuracy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 259
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 260
    :cond_6
    const-string v5, "verticalAccuracy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 261
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_1

    .line 262
    :cond_7
    const-string v5, "speedAccuracy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 263
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    goto :goto_1

    .line 264
    :cond_8
    const-string v5, "bearingAccuracy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 265
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_1

    .line 266
    :cond_9
    const-string v5, "isFromMockProvider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 267
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    goto :goto_1

    .line 268
    :cond_a
    const-string v5, "captureTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 269
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setTime(J)V

    goto :goto_1

    .line 271
    :cond_b
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    .line 273
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 274
    :cond_c
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 275
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 276
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "reader":Landroid/util/JsonReader;
    goto :goto_2

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "CarLocationService"

    const-string v4, "Unexpected format"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 279
    :catch_1
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "CarLocationService"

    const-string v4, "Unable to read from disk"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 277
    :catch_2
    move-exception v2

    .line 278
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "CarLocationService"

    const-string v4, "Location cache file not found."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 284
    :goto_3
    return-object v0
.end method

.method private storeLocation()V
    .locals 10

    .line 154
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 158
    .local v0, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .local v1, "location":Landroid/location/Location;
    nop

    .line 161
    nop

    .line 163
    if-nez v1, :cond_0

    .line 164
    const-string v2, "Not storing null location"

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    goto/16 :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 168
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    const-string v4, "location_cache.json"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 169
    .local v2, "atomicFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 171
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 172
    new-instance v4, Landroid/util/JsonWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 173
    .local v4, "jsonWriter":Landroid/util/JsonWriter;
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 174
    const-string v5, "provider"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 175
    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 176
    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 177
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    const-string v5, "altitude"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 180
    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    const-string v5, "speed"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 183
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    const-string v5, "bearing"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 186
    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 187
    const-string v5, "accuracy"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 189
    :cond_4
    invoke-virtual {v1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 190
    const-string v5, "verticalAccuracy"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 191
    invoke-virtual {v1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v6

    float-to-double v6, v6

    .line 190
    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 193
    :cond_5
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    const-string v5, "speedAccuracy"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 195
    invoke-virtual {v1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v6

    float-to-double v6, v6

    .line 194
    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 197
    :cond_6
    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 198
    const-string v5, "bearingAccuracy"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 199
    invoke-virtual {v1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v6

    float-to-double v6, v6

    .line 198
    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 201
    :cond_7
    invoke-virtual {v1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 202
    const-string v5, "isFromMockProvider"

    invoke-virtual {v4, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 204
    :cond_8
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 206
    .local v5, "currentTime":J
    const-string v7, "captureTime"

    invoke-virtual {v4, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v7

    const-wide/32 v8, 0x5265c00

    rem-long v8, v5, v8

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 208
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 209
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V

    .line 210
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    .end local v4    # "jsonWriter":Landroid/util/JsonWriter;
    .end local v5    # "currentTime":J
    goto :goto_0

    .line 211
    :catch_0
    move-exception v4

    .line 212
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "CarLocationService"

    const-string v6, "Unable to write to disk"

    invoke-static {v5, v6, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 216
    .end local v2    # "atomicFile":Landroid/util/AtomicFile;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 159
    .end local v1    # "location":Landroid/location/Location;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarLocationService"

    const-string v3, "Got Unexpected exception"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return-void
.end method


# virtual methods
.method asyncOperation(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget v1, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    if-ne v1, v2, :cond_0

    .line 297
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CarLocationServiceThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 298
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 299
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    .line 301
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/-$$Lambda$CarLocationService$C15xtACPu-qfX_1TC9r1wzgyZgI;

    invoke-direct {v1, p0, p1}, Lcom/android/car/-$$Lambda$CarLocationService$C15xtACPu-qfX_1TC9r1wzgyZgI;-><init>(Lcom/android/car/CarLocationService;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void

    .line 301
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 107
    const-string v0, "CarLocationService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPropertyService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public getWakeupTime()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 5

    .line 86
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v2, p0, Lcom/android/car/CarLocationService;->mCarPropertyEventListener:Lcom/android/car/CarLocationService$CarPropertyEventListener;

    const v3, 0x11400409

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v1, p0}, Lcom/android/car/CarPowerManagementService;->registerPowerEventProcessingHandler(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 95
    return-void
.end method

.method public onPowerOn(Z)V
    .locals 0
    .param p1, "displayOn"    # Z

    .line 120
    return-void
.end method

.method public onPrepareShutdown(Z)J
    .locals 2
    .param p1, "shuttingDown"    # Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareShutdown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/android/car/-$$Lambda$CarLocationService$fYB_z_EWC-eBt3-g8vbkAwg9Xpo;

    invoke-direct {v0, p0}, Lcom/android/car/-$$Lambda$CarLocationService$fYB_z_EWC-eBt3-g8vbkAwg9Xpo;-><init>(Lcom/android/car/CarLocationService;)V

    invoke-virtual {p0, v0}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    if-ne v0, v1, :cond_0

    .line 132
    new-instance v1, Lcom/android/car/-$$Lambda$CarLocationService$qmNEicprx6IBpqW77REQuhk132M;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarLocationService$qmNEicprx6IBpqW77REQuhk132M;-><init>(Lcom/android/car/CarLocationService;)V

    invoke-virtual {p0, v1}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    const-string v2, "location"

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 136
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v2, "android.location.MODE_CHANGED"

    if-ne v0, v2, :cond_2

    .line 137
    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    .line 138
    .local v2, "locationEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocationEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 139
    if-nez v2, :cond_1

    .line 140
    new-instance v3, Lcom/android/car/-$$Lambda$CarLocationService$Dg7ZkmZMf3AKD__x5X4v1O47wiI;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CarLocationService$Dg7ZkmZMf3AKD__x5X4v1O47wiI;-><init>(Lcom/android/car/CarLocationService;)V

    invoke-virtual {p0, v3}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    .line 142
    .end local v2    # "locationEnabled":Z
    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    if-ne v0, v2, :cond_3

    .line 143
    const-string v2, "gps"

    .line 144
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 145
    .local v2, "gpsEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isProviderEnabled(\'gps\'): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 146
    if-nez v2, :cond_3

    .line 147
    new-instance v3, Lcom/android/car/-$$Lambda$CarLocationService$JeNiCtPkrkVS6eVl7YsbCaBLJVI;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CarLocationService$JeNiCtPkrkVS6eVl7YsbCaBLJVI;-><init>(Lcom/android/car/CarLocationService;)V

    invoke-virtual {p0, v3}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    .line 151
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .end local v2    # "gpsEnabled":Z
    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 99
    const-string v0, "release"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarPropertyEventListener:Lcom/android/car/CarLocationService$CarPropertyEventListener;

    const v2, 0x11400409

    invoke-virtual {v0, v2, v1}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    return-void
.end method
