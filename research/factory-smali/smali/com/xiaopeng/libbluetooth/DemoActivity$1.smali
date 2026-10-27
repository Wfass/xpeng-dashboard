.class Lcom/xiaopeng/libbluetooth/DemoActivity$1;
.super Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;
.source "DemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/DemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/DemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/DemoActivity;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindSuccess()V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$100(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$100(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->startScanDeviceEx()Z

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$100(Lcom/xiaopeng/libbluetooth/DemoActivity;)Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v1, v1, Lcom/xiaopeng/libbluetooth/DemoActivity;->count:[I

    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v2, v2, Lcom/xiaopeng/libbluetooth/DemoActivity;->name:[Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v3, v3, Lcom/xiaopeng/libbluetooth/DemoActivity;->address:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v4, v4, Lcom/xiaopeng/libbluetooth/DemoActivity;->cod:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->getPairedList([I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    .line 34
    invoke-static {}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v2, v2, Lcom/xiaopeng/libbluetooth/DemoActivity;->count:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    move v0, v3

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v1, v1, Lcom/xiaopeng/libbluetooth/DemoActivity;->count:[I

    aget v1, v1, v3

    if-ge v0, v1, :cond_0

    .line 36
    invoke-static {}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v4, v4, Lcom/xiaopeng/libbluetooth/DemoActivity;->address:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/libbluetooth/DemoActivity$1;->this$0:Lcom/xiaopeng/libbluetooth/DemoActivity;

    iget-object v4, v4, Lcom/xiaopeng/libbluetooth/DemoActivity;->name:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onScanCallback(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "cod"    # I
    .param p4, "rssi"    # I
    .param p5, "complete"    # Z

    .line 25
    invoke-static {}, Lcom/xiaopeng/libbluetooth/DemoActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",complete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
