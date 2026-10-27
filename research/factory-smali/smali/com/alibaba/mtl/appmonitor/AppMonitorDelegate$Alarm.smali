.class public Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alarm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p5, "exta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, p0

    move-object v10, p1

    .line 321
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 325
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->A()V

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 327
    const-string v1, "_status"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->i:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 329
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->IS_DEBUG:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v9, v10, v1, v0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    :cond_1
    const-string v0, "AppMonitorDelegate"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "commitFail module:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v10, v1, v2

    const/4 v2, 0x4

    const-string v3, " errorCode:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    const-string v3, "errorMsg:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->B()V

    .line 335
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v2

    move-object v3, v9

    move-object v4, v10

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 338
    :cond_2
    const-string v0, "log discard !"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    :goto_0
    goto :goto_2

    .line 322
    :cond_3
    :goto_1
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 343
    :goto_2
    return-void
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p4, "exta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p3, "exta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->A()V

    .line 283
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->IS_DEBUG:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 284
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    const-string v0, "AppMonitorDelegate"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "commitSuccess module:"

    aput-object v4, v2, v3

    aput-object p0, v2, v1

    const/4 v1, 0x2

    const-string v3, " monitorPoint:"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->B()V

    .line 287
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v3

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v4

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "log discard !"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    :goto_0
    goto :goto_2

    .line 279
    :cond_3
    :goto_1
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 294
    :goto_2
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p2, "exta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 243
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 244
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1
    .param p0, "statisticsInterval"    # I

    .line 235
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->setStatisticsInterval(I)V

    .line 236
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 237
    return-void
.end method
