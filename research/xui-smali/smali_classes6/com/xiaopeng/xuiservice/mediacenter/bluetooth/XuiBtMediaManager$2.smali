.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;
.super Ljava/lang/Object;
.source "XuiBtMediaManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 402
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 405
    const-string v0, "XuiBtMediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onA2dpStateChanged prevState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "a2dpAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &mAutoSwitchAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    .line 406
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$300(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-ne p2, p3, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_1

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$500(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$700(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Ljava/lang/String;II)V

    .line 417
    return-void
.end method

.method public onAdapterStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 438
    const-string v0, "XuiBtMediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdapterStateChanged preState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/16 v0, 0xc

    if-ge p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$1000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$1100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;->pauseRender()Z

    move-result v0

    .line 442
    .local v0, "success":Z
    const-string v1, "XuiBtMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt enable to pauseRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 421
    const-string v0, "XuiBtMediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHfpStateChanged prevState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "hfpAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    if-ne p2, p3, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    if-lt p3, v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$400(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$802(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$800(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$900(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Ljava/lang/String;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$600(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    .line 434
    return-void
.end method
