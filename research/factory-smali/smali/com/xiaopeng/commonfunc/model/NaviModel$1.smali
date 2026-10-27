.class Lcom/xiaopeng/commonfunc/model/NaviModel$1;
.super Ljava/lang/Object;
.source "NaviModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/NaviModel;->genUuid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/NaviModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/NaviModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/NaviModel;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/NaviModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/NaviModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->access$100(Lcom/xiaopeng/commonfunc/model/NaviModel;)V

    .line 95
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 76
    const-string v0, "NaviModel"

    const-string v1, "genUuid onSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;

    .line 79
    .local v0, "uuidBean":Lcom/xiaopeng/commonfunc/bean/http/UuidBean;
    const-string v2, "NaviModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genUuid onSuccess: uuidBean = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;->getCode()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;->getData()Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/NaviModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/NaviModel;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/commonfunc/model/NaviModel;->isUuidValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/commonfunc/model/NaviModel;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "NaviModel"

    const-string v3, "get uuid success "

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string v2, "generate navigation activation UUID"

    const-string v3, "success"

    invoke-static {v2, v3}, Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "uuidBean":Lcom/xiaopeng/commonfunc/bean/http/UuidBean;
    .end local v1    # "uuid":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/NaviModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->access$100(Lcom/xiaopeng/commonfunc/model/NaviModel;)V

    .line 90
    return-void
.end method
