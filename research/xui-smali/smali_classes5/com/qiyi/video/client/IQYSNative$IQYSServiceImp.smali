.class Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;
.super Landroid/os/Handler;
.source "IQYSNative.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/client/IQYSNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IQYSServiceImp"
.end annotation


# static fields
.field private static final MSG_CALLBACK:I = 0x64


# instance fields
.field private final mConnection:Lcom/qiyi/video/client/IQYSConnection;


# direct methods
.method private constructor <init>(Lcom/qiyi/video/client/IQYSConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/qiyi/video/client/IQYSConnection;

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/client/IQYSNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qiyi/video/client/IQYSConnection;
    .param p2, "x1"    # Lcom/qiyi/video/client/IQYSNative$1;

    .line 151
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;-><init>(Lcom/qiyi/video/client/IQYSConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;)Lcom/qiyi/video/client/IQYSConnection;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    .line 151
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    return-object v0
.end method

.method private createNoServiceResponse(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;
    .locals 3
    .param p1, "message"    # Lcom/qiyi/video/qys/IQYSRequest;

    .line 235
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 236
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/4 v1, -0x3

    iput v1, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 237
    iput-object p1, v0, Lcom/qiyi/video/qys/IQYSResponse;->mRequest:Lcom/qiyi/video/qys/IQYSRequest;

    .line 238
    new-instance v1, Lcom/qiyi/video/qys/IQYSString;

    const-string v2, "Service is disconnected, please retry register again and use the newest IQYSService instance."

    invoke-direct {v1, v2}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 239
    return-object v0
.end method

.method private createRemoteFailureResponse(Lcom/qiyi/video/qys/IQYSRequest;Ljava/lang/String;)Lcom/qiyi/video/qys/IQYSResponse;
    .locals 4
    .param p1, "message"    # Lcom/qiyi/video/qys/IQYSRequest;
    .param p2, "eMessage"    # Ljava/lang/String;

    .line 246
    new-instance v0, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v0}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 247
    .local v0, "response":Lcom/qiyi/video/qys/IQYSResponse;
    const/4 v1, -0x5

    iput v1, v0, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 248
    iput-object p1, v0, Lcom/qiyi/video/qys/IQYSResponse;->mRequest:Lcom/qiyi/video/qys/IQYSRequest;

    .line 249
    new-instance v1, Lcom/qiyi/video/qys/IQYSString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service connection is bad, msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 250
    return-object v0
.end method


# virtual methods
.method public executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V
    .locals 7
    .param p1, "request"    # Lcom/qiyi/video/qys/IQYSRequest;
    .param p2, "callback"    # Lcom/qiyi/video/client/IQYSService$Callback;

    .line 177
    const-string v0, "IQYSNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeAsync called with: cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection;->getService()Lcom/qiyi/video/qys/IQYS;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, "service":Lcom/qiyi/video/qys/IQYS;
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x64

    if-nez v0, :cond_1

    .line 180
    if-eqz p2, :cond_2

    .line 181
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->createNoServiceResponse(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;

    move-result-object v5

    .line 182
    .local v5, "response":Lcom/qiyi/video/qys/IQYSResponse;
    invoke-virtual {p0, v4}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 183
    .local v4, "message":Landroid/os/Message;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object v5, v3, v1

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    invoke-virtual {p0, v4}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->sendMessage(Landroid/os/Message;)Z

    .line 185
    const-string v1, "IQYSNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeAsync onResponse() called with: code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    goto :goto_1

    .line 189
    :cond_1
    :try_start_0
    new-instance v5, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp$1;-><init>(Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;Lcom/qiyi/video/client/IQYSService$Callback;Lcom/qiyi/video/qys/IQYSRequest;)V

    invoke-interface {v0, p1, v5}, Lcom/qiyi/video/qys/IQYS;->executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/qys/IQYSCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_1

    .line 203
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Landroid/os/RemoteException;
    if-eqz p2, :cond_2

    .line 205
    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->createRemoteFailureResponse(Lcom/qiyi/video/qys/IQYSRequest;Ljava/lang/String;)Lcom/qiyi/video/qys/IQYSResponse;

    move-result-object v6

    .line 206
    .local v6, "response":Lcom/qiyi/video/qys/IQYSResponse;
    invoke-virtual {p0, v4}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 207
    .restart local v4    # "message":Landroid/os/Message;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object v6, v3, v1

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    invoke-virtual {p0, v4}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->sendMessage(Landroid/os/Message;)Z

    .line 209
    const-string v1, "IQYSNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeAsync onResponse() called with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_2
    :goto_1
    return-void
.end method

.method public executeSync(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;
    .locals 5
    .param p1, "request"    # Lcom/qiyi/video/qys/IQYSRequest;

    .line 217
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->mConnection:Lcom/qiyi/video/client/IQYSConnection;

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection;->getService()Lcom/qiyi/video/qys/IQYS;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "service":Lcom/qiyi/video/qys/IQYS;
    :goto_0
    if-nez v0, :cond_1

    .line 219
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->createNoServiceResponse(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/qiyi/video/qys/IQYS;->executeSync(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;

    move-result-object v1

    .line 223
    .local v1, "response":Lcom/qiyi/video/qys/IQYSResponse;
    if-eqz v1, :cond_2

    .line 224
    iput-object p1, v1, Lcom/qiyi/video/qys/IQYSResponse;->mRequest:Lcom/qiyi/video/qys/IQYSRequest;

    .line 226
    :cond_2
    const-string v2, "IQYSNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeSync onResponse() called with: code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v4, "NULL"

    goto :goto_1

    :cond_3
    iget v4, v1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const-string v4, "NULL"

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-object v1

    .line 228
    .end local v1    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->createRemoteFailureResponse(Lcom/qiyi/video/qys/IQYSRequest;Ljava/lang/String;)Lcom/qiyi/video/qys/IQYSResponse;

    move-result-object v2

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 166
    .local v0, "arg":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/qiyi/video/client/IQYSService$Callback;

    .line 167
    .local v1, "callback":Lcom/qiyi/video/client/IQYSService$Callback;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/qiyi/video/qys/IQYSResponse;

    .line 168
    .local v2, "response":Lcom/qiyi/video/qys/IQYSResponse;
    invoke-interface {v1, v2}, Lcom/qiyi/video/client/IQYSService$Callback;->onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 170
    .end local v0    # "arg":[Ljava/lang/Object;
    .end local v1    # "callback":Lcom/qiyi/video/client/IQYSService$Callback;
    .end local v2    # "response":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_0
    return-void
.end method
