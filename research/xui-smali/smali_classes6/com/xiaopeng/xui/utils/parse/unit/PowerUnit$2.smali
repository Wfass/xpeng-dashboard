.class Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;
.super Ljava/util/HashMap;
.source "PowerUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;
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
    const-string v0, "kwh/100km"

    const-string v1, "kwh/100mi"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "kwh/100mi"

    const-string v1, "kwh/100km"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
