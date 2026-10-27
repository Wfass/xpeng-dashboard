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
    .locals 15

    .line 23
    new-instance v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messages:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 24
    new-instance v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v3, "messageBytes"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messageBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 25
    new-instance v3, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v5, "spans"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spans:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 26
    new-instance v5, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v7, "spanBytes"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 27
    new-instance v7, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v9, "spansDropped"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansDropped:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 28
    new-instance v9, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v11, "spansPending"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 29
    new-instance v11, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const-string v13, "spanBytesPending"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytesPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const/4 v13, 0x7

    new-array v13, v13, [Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 22
    sput-object v13, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->$VALUES:[Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

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

    .line 22
    const-class v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    return-object p0
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
