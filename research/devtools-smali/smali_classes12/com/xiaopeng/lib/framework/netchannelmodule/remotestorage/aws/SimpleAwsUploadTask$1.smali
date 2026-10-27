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

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    .line 147
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x301

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 148
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 131
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    const-string v0, "https://"

    const-string v1, "http://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    goto :goto_0

    .line 138
    :catch_0
    move-exception p1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v2, 0x301

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 142
    :goto_0
    return-void
.end method
