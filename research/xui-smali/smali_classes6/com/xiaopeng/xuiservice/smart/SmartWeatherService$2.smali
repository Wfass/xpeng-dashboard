.class Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;
.super Ljava/lang/Object;
.source "SmartWeatherService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 307
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 308
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure, errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :try_start_1
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;->onErrorEvent(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    :cond_0
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFailure exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 310
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "resp"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 279
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 280
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$202(Z)Z

    .line 287
    :try_start_1
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V

    .line 291
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$500()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;->onChangeEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$500()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;->onErrorEvent(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :cond_1
    :goto_0
    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartWeatherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 282
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
