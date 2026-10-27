.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConditionNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;->this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network onAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;->this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;->this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->fetch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->access$000(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network onLost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1$1;->this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;->access$100(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork$1$1;Ljava/lang/Object;)V

    .line 50
    return-void
.end method
