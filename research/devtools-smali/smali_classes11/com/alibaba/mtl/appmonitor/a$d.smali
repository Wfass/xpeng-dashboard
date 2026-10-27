.class public Lcom/alibaba/mtl/appmonitor/a$d;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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

    .line 596
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;DLjava/util/Map;)V

    .line 597
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;DLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 610
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 614
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->ao()V

    .line 615
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->aw:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 616
    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    :cond_1
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "statEvent commit. module: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v4, 0x2

    const-string v5, " monitorPoint: "

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/c;->Y()Lcom/alibaba/mtl/appmonitor/model/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/c;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/b;

    move-result-object v0

    .line 619
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->ap()V

    .line 620
    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/b;->W()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->M()Ljava/util/List;

    move-result-object v0

    .line 622
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 623
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v1, v0, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->a(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p3

    .line 626
    invoke-static {p0, p1, p2, p3, p5}, Lcom/alibaba/mtl/appmonitor/a$d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/Map;)V

    .line 632
    :cond_2
    goto :goto_1

    .line 611
    :cond_3
    :goto_0
    const-string p0, "AppMonitorDelegate"

    const-string p1, "module & monitorPoint must not null"

    invoke-static {p0, p1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    return-void

    .line 630
    :catch_0
    move-exception p0

    .line 631
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 633
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 646
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 650
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->ao()V

    .line 651
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 652
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->aw:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    if-eqz p2, :cond_1

    .line 656
    invoke-virtual {p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v9

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 653
    :goto_0
    invoke-static {v1, p0, p1, v9}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 657
    :cond_2
    const-string v1, "statEvent commit success"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "statEvent commit. module: "

    aput-object v9, v7, v6

    aput-object p0, v7, v5

    const-string v5, " monitorPoint: "

    aput-object v5, v7, v3

    aput-object p1, v7, v2

    invoke-static {v1, v7}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->ap()V

    .line 659
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->u()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v1

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/mtl/appmonitor/a/e;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/util/Map;)V

    goto :goto_1

    .line 662
    :cond_3
    const-string v1, "statEvent commit failed,log discard"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, " ,. module: "

    aput-object v8, v7, v6

    aput-object p0, v7, v5

    const-string v0, " monitorPoint: "

    aput-object v0, v7, v3

    aput-object p1, v7, v2

    invoke-static {v1, v7}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    :goto_1
    goto :goto_3

    .line 647
    :cond_4
    :goto_2
    const-string v0, "AppMonitorDelegate"

    const-string v1, "module & monitorPoint must not null"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 667
    :goto_3
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 532
    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->aw:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 533
    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent begin. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->u()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_1
    goto :goto_0

    .line 539
    :catch_0
    move-exception p0

    .line 540
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 542
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 553
    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->aw:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 554
    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    const-string v0, "AppMonitorDelegate"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statEvent end. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->u()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_1
    goto :goto_0

    .line 559
    :catch_0
    move-exception p0

    .line 560
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/b/b;->a(Ljava/lang/Throwable;)V

    .line 562
    :goto_0
    return-void
.end method

.method public static f(I)V
    .locals 1

    .line 500
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/a/f;->f(I)V

    .line 501
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0}, Lcom/alibaba/mtl/appmonitor/a;->a(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 502
    return-void
.end method

.method public static h(I)V
    .locals 2

    .line 508
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->A()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 509
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->aR:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d/j;->a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
