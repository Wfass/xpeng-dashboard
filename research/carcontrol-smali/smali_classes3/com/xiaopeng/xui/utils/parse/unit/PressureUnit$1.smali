.class final Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit$1;
.super Ljava/util/HashMap;
.source "PressureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;
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

    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "bar"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "kPa"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x3fb1a68c52be7bc2L    # 0.0689475729

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "psi"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
