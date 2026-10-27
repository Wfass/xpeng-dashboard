.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil$ReportCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

.field private final synthetic f$1:J

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$1:J

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReportCallback(Z)V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$1:J

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationKeyValueService$S8uyZHdFgA5W415KlCxCO9RL4kA;->f$3:Ljava/lang/String;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->lambda$syncSaveSingle$3(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
