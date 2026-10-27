.class Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;
.super Ljava/util/HashMap;
.source "LengthUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;
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

    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const-string v0, "km"

    const-string v1, "mi"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "mi"

    const-string v1, "km"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "m"

    const-string v1, "ft"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "ft"

    const-string v1, "m"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "cm"

    const-string v1, "inch"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "inch"

    const-string v1, "cm"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "mm"

    const-string v1, "mil"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "mil"

    const-string v1, "mm"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
