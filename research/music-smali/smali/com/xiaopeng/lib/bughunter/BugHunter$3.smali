.class final Lcom/xiaopeng/lib/bughunter/BugHunter$3;
.super Ljava/lang/Object;
.source "BugHunter.java"

# interfaces
.implements Laoz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/BugHunter;->initCaton(Landroid/content/Context;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/BugHunter$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;Z[J)V
    .locals 16

    move-object/from16 v1, p0

    .line 397
    iget-object v0, v1, Lcom/xiaopeng/lib/bughunter/BugHunter$3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 398
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    .line 400
    invoke-static {v0, v11}, Lcom/xiaopeng/lib/bughunter/BugHunter;->wrapStackTracesString([Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 401
    aget-wide v14, p3, v13

    const/4 v2, 0x1

    .line 402
    aget-wide v8, p3, v2

    .line 404
    sget-boolean v2, Lapb;->b:Z

    if-eqz v2, :cond_0

    .line 405
    iget-object v3, v1, Lcom/xiaopeng/lib/bughunter/BugHunter$3;->a:Landroid/content/Context;

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v5, p1

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$000(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    .line 410
    const-class v0, Lany;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-string v4, "libBugHunter"

    if-eqz v0, :cond_1

    .line 413
    :try_start_0
    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<<< error, get IDataLog module occurred an exception, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "<<<< error, can not get DataLogModuleEntry"

    .line 419
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_2

    .line 429
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$500()Z

    move-result v3

    if-nez v3, :cond_3

    .line 430
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    const-string v4, "perf_caton"

    .line 431
    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "P00010"

    .line 432
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "B001"

    .line 433
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "appName"

    .line 434
    invoke-interface {v4, v5, v10}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/lib/bughunter/BugHunter$3;->a:Landroid/content/Context;

    .line 435
    invoke-static {v5, v10}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appVer"

    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "anr"

    move/from16 v6, p2

    .line 436
    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "md5"

    .line 437
    invoke-interface {v4, v5, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    .line 438
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "elapseTime"

    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    .line 439
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "stackInfo"

    invoke-interface {v4, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "memInfo"

    .line 440
    invoke-interface {v4, v5, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 441
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "catonType"

    invoke-interface {v2, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 442
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getFullSystemVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cduVer"

    invoke-interface {v2, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 443
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "igOnState"

    invoke-interface {v2, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 444
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "igOnTime"

    invoke-interface {v2, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 445
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->e()I

    move-result v4

    .line 445
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "screenDisplayState"

    invoke-interface {v2, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 447
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v4

    .line 448
    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/d;->f()J

    move-result-wide v4

    .line 447
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "screenDisplayChangeTime"

    invoke-interface {v2, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 449
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    goto :goto_3

    :cond_2
    const-string v0, "<<<< upload caton log fail, can not get IDataLog module!"

    .line 453
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3
    :goto_3
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 458
    iget-object v2, v1, Lcom/xiaopeng/lib/bughunter/BugHunter$3;->a:Landroid/content/Context;

    .line 459
    invoke-static {v2, v10}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v10

    move-wide v5, v14

    move-object v7, v12

    .line 458
    invoke-static/range {v2 .. v9}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 466
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$200()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/sdcard/Log/caton"

    .line 467
    invoke-static {v2, v10, v0}, Lcom/xiaopeng/lib/bughunter/BugHunter;->access$400(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_4
    return-void
.end method
