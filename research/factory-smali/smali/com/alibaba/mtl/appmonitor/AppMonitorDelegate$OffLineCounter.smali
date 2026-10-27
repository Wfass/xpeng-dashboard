.class public Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$OffLineCounter;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffLineCounter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 12
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 467
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->w()V

    .line 472
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 473
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 474
    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    :cond_1
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "commitOffLineCount module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, " value: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 477
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 476
    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->x()V

    .line 479
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v4

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v5

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-wide v9, p2

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 484
    :cond_2
    goto :goto_1

    .line 468
    :cond_3
    :goto_0
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 485
    :goto_1
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 442
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 443
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1
    .param p0, "statisticsInterval"    # I

    .line 434
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->setStatisticsInterval(I)V

    .line 435
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->c:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 436
    return-void
.end method
