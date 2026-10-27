.class public Lcom/alibaba/mtl/appmonitor/a/c;
.super Lcom/alibaba/mtl/appmonitor/a/d;
.source "DurationEvent.java"


# static fields
.field private static final aB:Ljava/lang/Long;


# instance fields
.field private aC:Lcom/alibaba/mtl/appmonitor/model/b;

.field private aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field private aE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation
.end field

.field private aF:Ljava/lang/Long;

.field private az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-wide/32 v0, 0x493e0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a/c;->aB:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->d(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 96
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aF:Ljava/lang/Long;

    .line 66
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v2

    const-class v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aF:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 67
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 3

    .line 127
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/d;->a([Ljava/lang/Object;)V

    .line 128
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 129
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    .line 131
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/c;->Y()Lcom/alibaba/mtl/appmonitor/model/c;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/c;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/b;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aC:Lcom/alibaba/mtl/appmonitor/model/b;

    .line 132
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aC:Lcom/alibaba/mtl/appmonitor/model/b;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/b;->V()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 133
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object p1

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 134
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aC:Lcom/alibaba/mtl/appmonitor/model/b;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/b;->V()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {p1, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->c(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 136
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object p1

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 137
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 76
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    const-string v4, "DurationEvent"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "statEvent consumeTime. module:"

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/alibaba/mtl/appmonitor/a/c;->o:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, " monitorPoint:"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/alibaba/mtl/appmonitor/a/c;->p:Ljava/lang/String;

    aput-object v8, v5, v6

    const/4 v6, 0x4

    const-string v8, " measureName:"

    aput-object v8, v5, v6

    const/4 v6, 0x5

    aput-object p1, v5, v6

    const/4 v6, 0x6

    const-string v8, " time:"

    aput-object v8, v5, v6

    const/4 v6, 0x7

    long-to-double v2, v2

    .line 79
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->Q()D

    move-result-wide v8

    sub-double v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v6

    .line 78
    invoke-static {v4, v5}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->Q()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->c(D)V

    .line 81
    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->g(Z)V

    .line 82
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v2, p1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->a(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 83
    iget-object p1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aC:Lcom/alibaba/mtl/appmonitor/model/b;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/b;->W()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->c(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    return v7

    .line 87
    :cond_0
    return v1
.end method

.method public c()Z
    .locals 13

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aC:Lcom/alibaba/mtl/appmonitor/model/b;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/b;->W()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->M()Ljava/util/List;

    move-result-object v2

    .line 37
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 39
    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    .line 40
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 41
    if-eqz v6, :cond_1

    .line 42
    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/Measure;->H()Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/Measure;->H()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/alibaba/mtl/appmonitor/a/c;->aB:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    .line 43
    :goto_1
    iget-object v9, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 44
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->P()Z

    move-result v9

    if-nez v9, :cond_1

    .line 45
    long-to-double v9, v0

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->Q()D

    move-result-wide v11

    sub-double/2addr v9, v11

    cmpl-double v6, v9, v7

    if-lez v6, :cond_1

    .line 46
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :cond_2
    return v3
.end method

.method public clean()V
    .locals 4

    .line 108
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->clean()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aC:Lcom/alibaba/mtl/appmonitor/model/b;

    .line 110
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aF:Ljava/lang/Long;

    .line 111
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 112
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    if-eqz v1, :cond_1

    .line 116
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 117
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-eqz v1, :cond_2

    .line 120
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->y()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Lcom/alibaba/mtl/appmonitor/c/b;)V

    .line 121
    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 123
    :cond_2
    return-void
.end method

.method public s()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->aD:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    return-object v0
.end method

.method public t()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a/c;->az:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method
