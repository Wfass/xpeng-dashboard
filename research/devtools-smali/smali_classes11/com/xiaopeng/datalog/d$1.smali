.class Lcom/xiaopeng/datalog/d$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/d;->toJson()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic qa:Lcom/xiaopeng/datalog/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/d;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/datalog/d$1;->qa:Lcom/xiaopeng/datalog/d;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
