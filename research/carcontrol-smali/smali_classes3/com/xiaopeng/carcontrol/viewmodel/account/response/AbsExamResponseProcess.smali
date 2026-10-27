.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;
.super Ljava/lang/Object;
.source "AbsExamResponseProcess.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;"
    }
.end annotation


# static fields
.field private static final HTTP_OK:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "X_EXAM_ExamResponseProcess"


# instance fields
.field protected mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mGson:Lcom/google/gson/Gson;


# direct methods
.method protected constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->mGson:Lcom/google/gson/Gson;

    const-string v0, "Please check the callback!"

    .line 29
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iResponse"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v1

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iResponse"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 36
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getRawResponse()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get exam raw response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getRawResponse()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_ExamResponseProcess"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->parseResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->code()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->data()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    const/4 v0, -0x2

    const-string v1, "Response data is null."

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process exam response data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->processExamSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->code()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http response is not okplease check the code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->code()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;->onExamFailure(ILjava/lang/String;)V

    :goto_0
    return-void

    .line 37
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/response/AbsExamResponseProcess;->mExamCallBack:Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;

    const/4 v0, -0x1

    const-string v1, "Response is null."

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/response/ResponseCallback;->onExamFailure(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract processExamSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation runtime Ljavax/validation/constraints/NotNull;
    .end annotation
.end method
