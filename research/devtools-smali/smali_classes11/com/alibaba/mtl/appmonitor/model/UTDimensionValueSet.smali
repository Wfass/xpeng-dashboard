.class public Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;
.super Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
.source "UTDimensionValueSet.java"


# static fields
.field private static final bF:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/mtl/log/model/LogField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->bF:Ljava/util/Set;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()Ljava/lang/Integer;
    .locals 2

    .line 34
    nop

    .line 35
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->map:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->dT:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/f/a;->a(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->a([Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public clean()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->clean()V

    .line 56
    return-void
.end method
