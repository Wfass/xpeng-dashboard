.class Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$1;
.super Ljava/lang/Object;
.source "QYSIClientAdapter.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSManager$RegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->register(Lcom/qiyi/video/qsrregister/listener/QYSListener;)V
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

    .line 39
    iput-object p1, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$1;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterFailure(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$1;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-static {v0}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->access$000(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)Lcom/qiyi/video/qsrregister/listener/QYSListener;

    move-result-object v0

    .line 51
    .local v0, "l":Lcom/qiyi/video/qsrregister/listener/QYSListener;
    if-eqz v0, :cond_0

    .line 52
    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->BIND:Lcom/qiyi/video/qsrbase/QYSExecType;

    sget-object v2, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_ERROR:Lcom/qiyi/video/qsrbase/QYSExecResult;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiyi/video/qsrregister/listener/QYSListener;->onQYSExecCallback(Lcom/qiyi/video/qsrbase/QYSExecType;Lcom/qiyi/video/qsrbase/QYSExecResult;Ljava/util/List;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onRegisterSuccess(Lcom/qiyi/video/client/IQYSService;)V
    .locals 4
    .param p1, "iqysService"    # Lcom/qiyi/video/client/IQYSService;

    .line 42
    iget-object v0, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$1;->this$0:Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    invoke-static {v0}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->access$000(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)Lcom/qiyi/video/qsrregister/listener/QYSListener;

    move-result-object v0

    .line 43
    .local v0, "l":Lcom/qiyi/video/qsrregister/listener/QYSListener;
    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->BIND:Lcom/qiyi/video/qsrbase/QYSExecType;

    sget-object v2, Lcom/qiyi/video/qsrbase/QYSExecResult;->RESULT_OK:Lcom/qiyi/video/qsrbase/QYSExecResult;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiyi/video/qsrregister/listener/QYSListener;->onQYSExecCallback(Lcom/qiyi/video/qsrbase/QYSExecType;Lcom/qiyi/video/qsrbase/QYSExecResult;Ljava/util/List;)V

    .line 46
    :cond_0
    return-void
.end method
