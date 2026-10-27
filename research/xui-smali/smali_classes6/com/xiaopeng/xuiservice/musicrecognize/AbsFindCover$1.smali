.class Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;
.super Ljava/lang/Object;
.source "AbsFindCover.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;->httpRequest(Ljava/lang/String;Ljava/util/Map;Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;->this$0:Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;->val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;->val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;->onFail(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 59
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 60
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$1;->val$callback:Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/AbsFindCover$HttpCallback;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbsFindCover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResponse failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
