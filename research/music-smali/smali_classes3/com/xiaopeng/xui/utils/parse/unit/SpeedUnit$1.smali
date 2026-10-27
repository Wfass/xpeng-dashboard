.class final Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit$1;
.super Ljava/util/HashMap;
.source "SpeedUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;
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

    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "km/h"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v0, 0x3ff9bfdf7e8038a0L    # 1.609344

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "mph"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
