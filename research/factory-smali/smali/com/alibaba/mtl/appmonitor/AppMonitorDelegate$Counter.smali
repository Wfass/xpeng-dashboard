.class public Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p4, "exta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 390
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 11
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p5, "exta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, p0

    move-object v10, p1

    .line 402
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->y()V

    .line 407
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 408
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 409
    invoke-static {v0, v9, v10}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "commitCount module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v10, v1, v2

    const/4 v2, 0x4

    const-string v3, " value: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 411
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 410
    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->z()V

    .line 413
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v2

    move-object v3, v9

    move-object v4, v10

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 418
    :cond_2
    goto :goto_1

    .line 403
    :cond_3
    :goto_0
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 419
    :goto_1
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 366
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 367
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1
    .param p0, "statisticsInterval"    # I

    .line 358
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->setStatisticsInterval(I)V

    .line 359
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->b:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 360
    return-void
.end method
