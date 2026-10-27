.class final Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;
.super Ljava/util/HashMap;
.source "LengthUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "cm"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "mm"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x41388e8000000000L    # 1609344.0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "mi"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x40730ccccccccccdL    # 304.8

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "ft"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x4039666666666666L    # 25.4

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "inch"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x3f9a027525460aa6L    # 0.0254

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "mil"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
