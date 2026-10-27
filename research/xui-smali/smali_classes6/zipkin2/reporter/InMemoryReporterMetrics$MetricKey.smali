.class final enum Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;
.super Ljava/lang/Enum;
.source "InMemoryReporterMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/InMemoryReporterMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MetricKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum messageBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum messages:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum spanBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum spanBytesPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum spans:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum spansDropped:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

.field public static final enum spansPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messages:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 24
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "messageBytes"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messageBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 25
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "spans"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spans:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 26
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "spanBytes"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 27
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "spansDropped"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansDropped:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 28
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "spansPending"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 29
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "spanBytesPending"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytesPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messages:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v2

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messageBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v3

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spans:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v4

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v5

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansDropped:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v6

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v7

    sget-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytesPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v1, v0, v8

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->$VALUES:[Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    return-object v0
.end method

.method public static values()[Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;
    .locals 1

    .line 22
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->$VALUES:[Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-virtual {v0}, [Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    return-object v0
.end method
