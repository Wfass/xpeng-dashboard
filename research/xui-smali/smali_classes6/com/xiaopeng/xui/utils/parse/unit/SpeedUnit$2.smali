.class Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit$2;
.super Ljava/util/HashMap;
.source "SpeedUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v0, "km/h"

    const-string v1, "mph"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "mph"

    const-string v1, "km/h"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
