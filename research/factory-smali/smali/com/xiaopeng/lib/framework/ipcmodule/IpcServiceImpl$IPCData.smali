.class Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;
.super Ljava/lang/Object;
.source "IpcServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPCData"
.end annotation


# instance fields
.field private appIds:Ljava/lang/String;

.field private data:Lcom/xiaopeng/ipc/IpcMessage;

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->this$0:Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$1;

    .line 327
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;-><init>(Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;)V

    return-void
.end method


# virtual methods
.method public getAppIds()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->appIds:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/xiaopeng/ipc/IpcMessage;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->data:Lcom/xiaopeng/ipc/IpcMessage;

    return-object v0
.end method

.method public setAppIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "appIds"    # Ljava/lang/String;

    .line 347
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->appIds:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setData(Lcom/xiaopeng/ipc/IpcMessage;)V
    .locals 0
    .param p1, "data"    # Lcom/xiaopeng/ipc/IpcMessage;

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->data:Lcom/xiaopeng/ipc/IpcMessage;

    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPCData{data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->data:Lcom/xiaopeng/ipc/IpcMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appIds=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl$IPCData;->appIds:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
