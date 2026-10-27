.class final Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "km"

    const-string v1, "mi"

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "m"

    const-string v1, "ft"

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cm"

    const-string v1, "inch"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mm"

    const-string v1, "mil"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
