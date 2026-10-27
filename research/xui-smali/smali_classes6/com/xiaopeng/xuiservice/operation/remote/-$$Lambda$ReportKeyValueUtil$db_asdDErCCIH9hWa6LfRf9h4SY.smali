.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;->f$2:Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$db_asdDErCCIH9hWa6LfRf9h4SY;->f$2:Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;->lambda$reportMultiple$1(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;)V

    return-void
.end method
