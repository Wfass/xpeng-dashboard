.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .line 895
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .line 873
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 874
    return v1

    .line 876
    :cond_0
    nop

    .line 878
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/IMonitor;->stat_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    .line 882
    move v0, v1

    :goto_0
    return v0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 993
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    .line 994
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "value"    # D

    .line 1009
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    return-void

    .line 1012
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    .line 1022
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1078
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    return-void

    .line 1081
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1091
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 1092
    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionNames"    # [Ljava/lang/String;
    .param p3, "dimensionValues"    # [Ljava/lang/String;
    .param p4, "measureNames"    # [Ljava/lang/String;
    .param p5, "measureValues"    # [Ljava/lang/String;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1037
    move-object/from16 v4, p5

    const-string v0, "AppMonitor"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "[commit from jni]"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0, v6}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    nop

    .line 1039
    nop

    .line 1040
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v6, v1

    array-length v7, v2

    if-ne v6, v7, :cond_0

    .line 1041
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 1042
    move v7, v8

    :goto_0
    array-length v9, v2

    if-ge v7, v9, :cond_1

    .line 1043
    aget-object v9, v1, v7

    aget-object v10, v2, v7

    invoke-virtual {v6, v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1042
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    move-object v6, v0

    :cond_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    array-length v7, v3

    array-length v9, v4

    if-ne v7, v9, :cond_4

    .line 1047
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v7

    .line 1048
    move v9, v8

    :goto_1
    array-length v0, v4

    if-ge v9, v0, :cond_3

    .line 1049
    const-wide/16 v10, 0x0

    .line 1050
    aget-object v0, v4, v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1052
    :try_start_0
    aget-object v0, v4, v9

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    nop

    .line 1057
    move-wide v10, v12

    goto :goto_2

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    const-string v0, "AppMonitor"

    new-array v12, v5, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "measure\'s value cannot convert to double. measurevalue:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v4, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {v0, v12}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    :cond_2
    :goto_2
    aget-object v0, v3, v9

    invoke-virtual {v7, v0, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1048
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1062
    :cond_3
    move-object v0, v7

    goto :goto_3

    .line 1060
    :cond_4
    const-string v7, "AppMonitor"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v9, "measure is null ,or lenght not match"

    aput-object v9, v5, v8

    invoke-static {v7, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    :goto_3
    move-object v5, p0

    move-object/from16 v7, p1

    invoke-static {v5, v7, v6, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1063
    return-void
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .line 947
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->createTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 966
    new-instance v0, Lcom/alibaba/mtl/appmonitor/Transaction;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    return-object v0
.end method

.method public static createTransaction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "appkey"    # Ljava/lang/String;

    .line 979
    new-instance v6, Lcom/alibaba/mtl/appmonitor/Transaction;

    sget-object v0, Lcom/alibaba/mtl/appmonitor/a/f;->d:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/Transaction;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/String;)V

    return-object v6
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;

    .line 921
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    return-void

    .line 924
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 935
    return-void
.end method

.method public static setSampling(I)V
    .locals 2
    .param p0, "sampling"    # I

    .line 848
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    return-void

    .line 851
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$2;-><init>(I)V

    .line 861
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 862
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .line 827
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    return-void

    .line 830
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat$1;-><init>(I)V

    .line 840
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method
