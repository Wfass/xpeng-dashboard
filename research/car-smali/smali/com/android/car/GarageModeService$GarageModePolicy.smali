.class final Lcom/android/car/GarageModeService$GarageModePolicy;
.super Ljava/lang/Object;
.source "GarageModeService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/GarageModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GarageModePolicy"
.end annotation


# static fields
.field private static final TIME_UNITS_LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/car/GarageModeService$GarageModePolicy;->TIME_UNITS_LOOKUP:Ljava/util/Map;

    .line 306
    sget-object v0, Lcom/android/car/GarageModeService$GarageModePolicy;->TIME_UNITS_LOOKUP:Ljava/util/Map;

    const-string v1, "m"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/car/GarageModeService$GarageModePolicy;->TIME_UNITS_LOOKUP:Ljava/util/Map;

    const-string v1, "h"

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/car/GarageModeService$GarageModePolicy;->TIME_UNITS_LOOKUP:Ljava/util/Map;

    const-string v1, "d"

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 12
    .param p1, "policy"    # [Ljava/lang/String;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    if-eqz p1, :cond_7

    array-length v0, p1

    if-eqz v0, :cond_7

    .line 317
    array-length v0, p1

    new-array v0, v0, [Lcom/android/car/GarageModeService$WakeupTime;

    .line 318
    .local v0, "parsedWakeupTime":[Lcom/android/car/GarageModeService$WakeupTime;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 319
    aget-object v3, p1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "splitString":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 324
    const/4 v4, 0x0

    .line 325
    .local v4, "wakeupTimeMs":I
    const/4 v5, 0x0

    .line 326
    .local v5, "numAttempts":I
    aget-object v6, v3, v1

    .line 327
    .local v6, "wakeupTime":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 330
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, "wakeupTimeValue":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 336
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 337
    .local v9, "timeCount":I
    if-lez v9, :cond_2

    .line 342
    sget-object v10, Lcom/android/car/GarageModeService$GarageModePolicy;->TIME_UNITS_LOOKUP:Ljava/util/Map;

    .line 343
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 342
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 344
    .local v10, "multiplier":Ljava/lang/Integer;
    if-eqz v10, :cond_1

    .line 348
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    mul-int/2addr v9, v11

    .line 351
    .end local v4    # "wakeupTimeMs":I
    .end local v10    # "multiplier":Ljava/lang/Integer;
    .local v9, "wakeupTimeMs":I
    nop

    .line 353
    :try_start_1
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v4

    .line 354
    if-lez v5, :cond_0

    .line 360
    nop

    .line 362
    new-instance v4, Lcom/android/car/GarageModeService$WakeupTime;

    invoke-direct {v4, v9, v5}, Lcom/android/car/GarageModeService$WakeupTime;-><init>(II)V

    aput-object v4, v0, v2

    .line 318
    .end local v3    # "splitString":[Ljava/lang/String;
    .end local v5    # "numAttempts":I
    .end local v6    # "wakeupTime":Ljava/lang/String;
    .end local v7    # "wakeupTimeValue":Ljava/lang/String;
    .end local v9    # "wakeupTimeMs":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .restart local v3    # "splitString":[Ljava/lang/String;
    .restart local v5    # "numAttempts":I
    .restart local v6    # "wakeupTime":Ljava/lang/String;
    .restart local v7    # "wakeupTimeValue":Ljava/lang/String;
    .restart local v9    # "wakeupTimeMs":I
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of attempts must be > 0: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad number of attempts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 345
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "wakeupTimeMs":I
    .local v9, "timeCount":I
    .restart local v10    # "multiplier":Ljava/lang/Integer;
    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad wakeup time units: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    .end local v10    # "multiplier":Ljava/lang/Integer;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wakeup time must be > 0: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 349
    .end local v9    # "timeCount":I
    :catch_1
    move-exception v1

    .line 350
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad wakeup time value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 333
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing wakeup time value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v7    # "wakeupTimeValue":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing wakeup time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    .end local v4    # "wakeupTimeMs":I
    .end local v5    # "numAttempts":I
    .end local v6    # "wakeupTime":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad policy format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .end local v2    # "i":I
    .end local v3    # "splitString":[Ljava/lang/String;
    :cond_6
    iput-object v0, p0, Lcom/android/car/GarageModeService$GarageModePolicy;->mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;

    .line 365
    return-void

    .line 314
    .end local v0    # "parsedWakeupTime":[Lcom/android/car/GarageModeService$WakeupTime;
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must include valid policy."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNextWakeUpTime(I)I
    .locals 3
    .param p1, "index"    # I

    .line 368
    iget-object v0, p0, Lcom/android/car/GarageModeService$GarageModePolicy;->mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lcom/android/car/GarageModeService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Could not parse policy."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v1

    .line 373
    :cond_0
    move v0, p1

    move p1, v1

    .local v0, "index":I
    .local p1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/car/GarageModeService$GarageModePolicy;->mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/car/GarageModeService$GarageModePolicy;->mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/android/car/GarageModeService$WakeupTime;->mNumAttempts:I

    if-ge v0, v2, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/car/GarageModeService$GarageModePolicy;->mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/car/GarageModeService$WakeupTime;->mWakeupTime:I

    return v1

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/car/GarageModeService$GarageModePolicy;->mWakeupTime:[Lcom/android/car/GarageModeService$WakeupTime;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/android/car/GarageModeService$WakeupTime;->mNumAttempts:I

    sub-int/2addr v0, v2

    .line 373
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 381
    .end local p1    # "i":I
    :cond_2
    invoke-static {}, Lcom/android/car/GarageModeService;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v2, "No more garage mode wake ups scheduled; been sleeping too long."

    invoke-static {p1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v1
.end method
