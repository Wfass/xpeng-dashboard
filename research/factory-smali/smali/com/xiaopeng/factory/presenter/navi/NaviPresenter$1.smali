.class Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;
.super Ljava/lang/Object;
.source "NaviPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->genUuid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$000(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;Z)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$100(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;)V

    .line 110
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 6
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 86
    const-string v0, "NaviPresenter"

    const-string v1, "genUuid onSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/factory/bean/http/UuidBean;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/factory/bean/http/UuidBean;

    .line 89
    .local v0, "uuidBean":Lcom/xiaopeng/factory/bean/http/UuidBean;
    const-string v3, "NaviPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genUuid onSuccess: uuidBean = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/http/UuidBean;->getCode()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/http/UuidBean;->getData()Lcom/xiaopeng/factory/bean/http/UuidBean$UuidData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/factory/bean/http/UuidBean$UuidData;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->isUuidValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/mnt/vendor/private/uuid"

    invoke-static {v3, v1}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$000(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;Z)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-static {v3, v2}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$000(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;Z)V

    .line 97
    .end local v1    # "uuid":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$000(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;Z)V

    .line 100
    .end local v0    # "uuidBean":Lcom/xiaopeng/factory/bean/http/UuidBean;
    :goto_1
    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-static {v0, v2}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$000(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;Z)V

    .line 103
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->access$100(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;)V

    .line 104
    return-void
.end method
