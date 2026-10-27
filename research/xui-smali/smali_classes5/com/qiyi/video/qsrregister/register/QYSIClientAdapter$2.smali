.class Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;
.super Ljava/lang/Object;
.source "QYSIClientAdapter.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->execScheme(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;


# direct methods
.method constructor <init>(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    .line 66
    iput-object p1, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 69
    const-string v0, "QYSIClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-static {v0}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->access$000(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)Lcom/qiyi/video/qsrregister/listener/QYSListener;

    move-result-object v0

    .line 71
    .local v0, "listener":Lcom/qiyi/video/qsrregister/listener/QYSListener;
    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-static {v1, p1}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->access$100(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;Lcom/qiyi/video/qys/IQYSResponse;)Lcom/qiyi/video/qsrbase/QYSExecType;

    move-result-object v1

    .line 75
    .local v1, "type":Lcom/qiyi/video/qsrbase/QYSExecType;
    iget v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 76
    sget-object v2, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_OK:Lcom/qiyi/video/qsrbase/QYSExecResult;

    iget-object v3, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-static {v3, p1, v1}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->access$200(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;Lcom/qiyi/video/qys/IQYSResponse;Lcom/qiyi/video/qsrbase/QYSExecType;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/qiyi/video/qsrregister/listener/QYSListener;->onQYSExecCallback(Lcom/qiyi/video/qsrbase/QYSExecType;Lcom/qiyi/video/qsrbase/QYSExecResult;Ljava/util/List;)V

    goto :goto_0

    .line 78
    :cond_1
    sget-object v2, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_ERROR:Lcom/qiyi/video/qsrbase/QYSExecResult;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiyi/video/qsrregister/listener/QYSListener;->onQYSExecCallback(Lcom/qiyi/video/qsrbase/QYSExecType;Lcom/qiyi/video/qsrbase/QYSExecResult;Ljava/util/List;)V

    .line 80
    :goto_0
    return-void
.end method
