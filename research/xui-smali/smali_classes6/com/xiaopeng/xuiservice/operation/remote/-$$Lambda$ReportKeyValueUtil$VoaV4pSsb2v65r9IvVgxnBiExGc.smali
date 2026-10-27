.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$ReportKeyValueUtil$VoaV4pSsb2v65r9IvVgxnBiExGc;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/ReportKeyValueUtil;->lambda$reportSingle$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
