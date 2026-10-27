.class public Lcom/xiaopeng/xuiservice/egg/ExecInterval;
.super Lcom/xiaopeng/xuiservice/egg/Limit;
.source "ExecInterval.java"


# instance fields
.field public final interval:Ljava/lang/String;

.field public final intervalMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "interval"    # Ljava/lang/String;
    .param p2, "intervalMs"    # J
    .param p4, "scope"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/egg/Limit;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->interval:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->intervalMs:J

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{interval=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->interval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scope=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/ExecInterval;->scope:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
