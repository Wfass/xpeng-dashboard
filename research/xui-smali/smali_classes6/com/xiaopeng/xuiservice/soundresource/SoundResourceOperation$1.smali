.class Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;
.super Ljava/lang/Object;
.source "SoundResourceOperation.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;->this$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 36
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;->this$0:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;->access$000(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 37
    return-void
.end method

.method static synthetic lambda$onEvent$1(I)V
    .locals 3
    .param p0, "type"    # I

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResource(I)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 43
    .local v0, "selected":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResourceByOperationId(Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic lambda$onEvent$2(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->restoreToLastBootSound(Ljava/lang/String;)I

    .line 52
    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 60
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 28
    const v0, 0x107bec

    if-eq p3, v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 40
    :cond_1
    const-string v0, "SoundResourceOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CODE_RESOURCE_SELECTION_CHANGED,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$1$qjptOEfQLIzEpuCTW1UCqOzUQQo;

    invoke-direct {v1, p3}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$1$qjptOEfQLIzEpuCTW1UCqOzUQQo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "SoundResourceOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CODE_RESOURCE_EXPIRED,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$1$O-tsjCG_Wo4cVUSnsWW8lXDl4Os;

    invoke-direct {v1, p2}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$1$O-tsjCG_Wo4cVUSnsWW8lXDl4Os;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 33
    :cond_3
    const-string v0, "SoundResourceOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CODE_RESOURCE_ADD,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$1$Hxfh8mUFn0kimHcRuHlOwA3AmVo;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/soundresource/-$$Lambda$SoundResourceOperation$1$Hxfh8mUFn0kimHcRuHlOwA3AmVo;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 38
    nop

    .line 55
    :goto_0
    return-void
.end method
