.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionSelectResource.java"


# instance fields
.field private final resourceId:Ljava/lang/String;

.field private final resourceType:I

.field private final select:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "resourceType"    # I
    .param p3, "select"    # Z

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->resourceId:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->resourceType:I

    .line 20
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->select:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->select:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->selectOperationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->unselectOperationResource(Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$sSUxq9AGnKWCC0Xb0pPwHyPOBNE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$sSUxq9AGnKWCC0Xb0pPwHyPOBNE;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{resourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->resourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
