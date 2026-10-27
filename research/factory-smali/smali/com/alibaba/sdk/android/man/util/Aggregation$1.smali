.class Lcom/alibaba/sdk/android/man/util/Aggregation$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/util/Aggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2eea859ef0L


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/man/util/Aggregation;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/util/Aggregation;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$1;->this$0:Lcom/alibaba/sdk/android/man/util/Aggregation;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;",
            ">;)Z"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/man/util/Aggregation$1;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
