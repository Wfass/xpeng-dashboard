.class public Lcom/xiaopeng/aar/server/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    }
.end annotation


# instance fields
.field private final autoUnSubscribeWhenNaPaDied:Z

.field private final interceptSendWhenNotSubscribed:Z

.field private final keepAlive:Z

.field private final logLength:I

.field private final logLevel:I

.field private final sendAsync:Z

.field private final targetPackage:Ljava/lang/String;

.field private final targetPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useMock:Z

.field private final waitInit:Z

.field private final waitTimeout:I


# direct methods
.method private constructor <init>(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$000(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->waitInit:Z

    .line 30
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$100(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->waitTimeout:I

    .line 31
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$200(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->keepAlive:Z

    .line 32
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$300(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->useMock:Z

    .line 33
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$400(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->autoUnSubscribeWhenNaPaDied:Z

    .line 34
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$500(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->interceptSendWhenNotSubscribed:Z

    .line 35
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$600(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->logLevel:I

    .line 36
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$700(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->targetPackage:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$800(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->targetPackageMap:Ljava/util/Map;

    .line 38
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$900(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->sendAsync:Z

    .line 39
    invoke-static {p1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->access$1000(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->logLength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/ServerConfig$Builder;Lcom/xiaopeng/aar/server/ServerConfig$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/server/ServerConfig;-><init>(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getLogLength()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->logLength:I

    return v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->logLevel:I

    return v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPackages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->targetPackageMap:Ljava/util/Map;

    return-object v0
.end method

.method public getWaitTimeout()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->waitTimeout:I

    return v0
.end method

.method public isAutoUnSubscribeWhenNaPaDied()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->autoUnSubscribeWhenNaPaDied:Z

    return v0
.end method

.method public isInterceptSendWhenNotSubscribed()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->interceptSendWhenNotSubscribed:Z

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->keepAlive:Z

    return v0
.end method

.method public isSendAsync()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->sendAsync:Z

    return v0
.end method

.method public isUseMock()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->useMock:Z

    return v0
.end method

.method public isWaitInit()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig;->waitInit:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerConfig{waitInit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->waitInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->waitTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->keepAlive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useMock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->useMock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoUnSubscribeWhenNaPaDied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->autoUnSubscribeWhenNaPaDied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interceptSendWhenNotSubscribed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->interceptSendWhenNotSubscribed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->logLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendAsync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->sendAsync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/aar/server/ServerConfig;->logLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
