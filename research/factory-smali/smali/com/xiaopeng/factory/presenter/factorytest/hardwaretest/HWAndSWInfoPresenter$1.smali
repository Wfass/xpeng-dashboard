.class Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;
.super Ljava/lang/Object;
.source "HWAndSWInfoPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->requestCarCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/http/ICallback<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->access$000(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->access$000(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$HwParam;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 126
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 114
    const-string v0, "SN:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SN:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "\n"

    const-string v2, "SN:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "buf":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->access$000(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->access$000(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$HwParam;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_00:[B

    .line 117
    invoke-static {v0}, Lcom/xiaopeng/factory/utils/DataHelp;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 116
    invoke-static {v2, v3, v4}, Lcom/xiaopeng/factory/utils/DmUtil;->responseWithValue([B[B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 119
    :cond_0
    return-void
.end method
