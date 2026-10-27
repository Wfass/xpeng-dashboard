.class Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;
.super Lcom/qiyi/video/qys/IQYSCallback$Stub;
.source "IQYSNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

.field final synthetic val$callback:Lcom/qiyi/video/client/IQYSService$Callback;

.field final synthetic val$request:Lcom/qiyi/video/qys/IQYSRequest;


# direct methods
.method constructor <init>(Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;Lcom/qiyi/video/client/IQYSService$Callback;Lcom/qiyi/video/qys/IQYSRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    .line 189
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->this$0:Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    iput-object p2, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->val$callback:Lcom/qiyi/video/client/IQYSService$Callback;

    iput-object p3, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->val$request:Lcom/qiyi/video/qys/IQYSRequest;

    invoke-direct {p0}, Lcom/qiyi/video/qys/IQYSCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V
    .locals 4
    .param p1, "iqysResponse"    # Lcom/qiyi/video/qys/IQYSResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    const-string v0, "IQYSNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeAsync onResponse() called with: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "NULL"

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, "NULL"

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->val$callback:Lcom/qiyi/video/client/IQYSService$Callback;

    if-eqz v0, :cond_3

    .line 194
    if-eqz p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->val$request:Lcom/qiyi/video/qys/IQYSRequest;

    iput-object v0, p1, Lcom/qiyi/video/qys/IQYSResponse;->mRequest:Lcom/qiyi/video/qys/IQYSRequest;

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->this$0:Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->val$callback:Lcom/qiyi/video/client/IQYSService$Callback;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;->this$0:Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    invoke-virtual {v1, v0}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    return-void
.end method
