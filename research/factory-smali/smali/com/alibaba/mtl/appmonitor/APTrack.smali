.class public Lcom/alibaba/mtl/appmonitor/APTrack;
.super Ljava/lang/Object;
.source "APTrack.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appkey"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/APTrack;->a:Ljava/util/Map;

    .line 18
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/APTrack;->a:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->APPKEY:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/appmonitor/APTrack;)Ljava/util/Map;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/alibaba/mtl/appmonitor/APTrack;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 141
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/APTrack$5;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;D)V

    .line 154
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p4, "value"    # D

    .line 216
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$7;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/mtl/appmonitor/APTrack$7;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    .line 229
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p4, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 245
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/APTrack$8;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 258
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "value"    # D

    .line 169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/mtl/appmonitor/APTrack$6;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 182
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/APTrack$3;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/mtl/appmonitor/APTrack$4;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/APTrack$1;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/APTrack$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/APTrack$2;-><init>(Lcom/alibaba/mtl/appmonitor/APTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
