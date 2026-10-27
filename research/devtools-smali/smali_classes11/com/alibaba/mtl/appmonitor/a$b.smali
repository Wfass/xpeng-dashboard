.class public Lcom/alibaba/mtl/appmonitor/a$b;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 6
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
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    .line 390
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V
    .locals 9
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

    .line 402
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->as()V

    .line 407
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 408
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->aw:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 409
    invoke-static {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    :cond_1
    const-string v1, "AppMonitorDelegate"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "commitCount module: "

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string v5, " monitorPoint: "

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string v5, " value: "

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 411
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    .line 410
    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->at()V

    .line 413
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->u()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

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

.method public static f(I)V
    .locals 1

    .line 358
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->f(I)V

    .line 359
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/a;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 360
    return-void
.end method

.method public static h(I)V
    .locals 2

    .line 366
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->A()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 367
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aP:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
