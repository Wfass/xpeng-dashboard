.class final Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;
.super Ljava/util/HashMap;
.source "PowerUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;
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

    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "kwh/100mi"

    const-string v1, "kwh/100km"

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
