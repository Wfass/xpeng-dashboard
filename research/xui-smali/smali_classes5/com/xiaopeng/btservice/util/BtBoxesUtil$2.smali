.class Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;
.super Ljava/lang/Object;
.source "BtBoxesUtil.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/btservice/util/BtBoxesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;


# direct methods
.method constructor <init>(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied.nForeService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v2}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v2}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$200(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$002(Lcom/xiaopeng/btservice/util/BtBoxesUtil;Lcom/nforetek/bt/aidl/UiCommand;)Lcom/nforetek/bt/aidl/UiCommand;

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$2;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->connectBluetooth()V

    .line 160
    return-void
.end method
