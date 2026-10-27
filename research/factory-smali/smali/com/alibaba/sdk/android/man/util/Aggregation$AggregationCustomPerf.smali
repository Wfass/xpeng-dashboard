.class Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/util/Aggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AggregationCustomPerf"
.end annotation


# instance fields
.field private count:I

.field private duration:J

.field private eventLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/sdk/android/man/util/Aggregation;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/man/util/Aggregation;Ljava/lang/String;)V
    .locals 2

    .line 227
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->this$0:Lcom/alibaba/sdk/android/man/util/Aggregation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const-string p1, ""

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->eventLabel:Ljava/lang/String;

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->duration:J

    .line 225
    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->count:I

    .line 228
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->eventLabel:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public addCustomPerf(J)V
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->duration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->duration:J

    .line 233
    iget p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->count:I

    .line 234
    return-void
.end method

.method public send()V
    .locals 8

    .line 237
    iget v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->count:I

    if-eqz v0, :cond_0

    .line 238
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->duration:J

    iget v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->count:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 239
    const-string v2, "UT"

    const v3, 0x1042a

    iget-object v4, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->eventLabel:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->count:I

    .line 240
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-static/range {v2 .. v7}, Lcom/alibaba/sdk/android/man/util/EventCommitTool;->commitEventToUT(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    :cond_0
    return-void
.end method
