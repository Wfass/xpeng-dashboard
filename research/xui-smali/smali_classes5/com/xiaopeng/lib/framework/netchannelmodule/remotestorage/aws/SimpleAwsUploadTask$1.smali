.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;
.super Ljava/lang/Object;
.source "SimpleAwsUploadTask.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->sendByIHttp(Lcom/google/gson/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    .line 148
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x301

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 149
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 6
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 131
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "responseStr":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "resObj":Lorg/json/JSONObject;
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 135
    const-string v3, "http://"

    const-string v4, "https://"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 136
    const-string v3, "NetChannel-SimpleAwsUploadTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "responseStr":Ljava/lang/String;
    .end local v1    # "resObj":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v3, 0x301

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    .line 140
    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 143
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
