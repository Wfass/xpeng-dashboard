.class Lcom/xiaopeng/datalog/StatEvent$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/StatEvent;->toJson()Ljava/lang/String;
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
.field final synthetic this$0:Lcom/xiaopeng/datalog/StatEvent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/StatEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/datalog/StatEvent$1;->this$0:Lcom/xiaopeng/datalog/StatEvent;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
