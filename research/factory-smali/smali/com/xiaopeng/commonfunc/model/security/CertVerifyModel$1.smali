.class Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;
.super Ljava/lang/Object;
.source "CertVerifyModel.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;->verifyCert(Lcom/xiaopeng/lib/http/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;

.field final synthetic val$callback:Lcom/xiaopeng/lib/http/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;

    .line 215
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 218
    const-string v0, "CertVerifyModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const-string v0, "CertVerifyModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method
