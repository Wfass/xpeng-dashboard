.class public Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery_Processor;
.super Ljava/lang/Object;
.source "OtaQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 1

    const-string v0, "is.latest.ota.version"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "is.latest.ota.version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;->isLatestVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
