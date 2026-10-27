.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final networkRequest:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1;
    .param p2, "name"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 31
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 34
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->networkRequest:Landroid/net/NetworkRequest;

    .line 37
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->update(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->update(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected fetch()Ljava/lang/Boolean;
    .locals 5

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 56
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 57
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subtype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 58
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->fetch()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 72
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method protected onStartWatch()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->networkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 64
    return-void
.end method

.method protected onStopWatch()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 69
    return-void
.end method
