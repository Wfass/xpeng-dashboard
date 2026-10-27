.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$8;
.super Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;
.source "KaraokeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 387
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$8;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public MicDevChangeCallBack(I)V
    .locals 4
    .param p1, "event"    # I

    .line 390
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IKaraokeEventListener MicDevChangeCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, "m":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 408
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IKaraokeEventListener onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public volumeEffectCallBack(II)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "value"    # I

    .line 399
    const-string v0, "KaraokeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IKaraokeEventListener MicDevChangeCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, "m":Landroid/os/Message;
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$1100()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$KaraokeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
