.class Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;
.super Ljava/lang/Object;
.source "BtBoxesUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "pName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {p2}, Lcom/nforetek/bt/aidl/UiCommand$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$002(Lcom/xiaopeng/btservice/util/BtBoxesUtil;Lcom/nforetek/bt/aidl/UiCommand;)Lcom/nforetek/bt/aidl/UiCommand;

    .line 128
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready  onServiceConnected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v2}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$200(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$300(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    iget-object v1, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$000(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Lcom/nforetek/bt/aidl/UiCommand;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$400(Lcom/xiaopeng/btservice/util/BtBoxesUtil;Lcom/nforetek/bt/aidl/UiCommand;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 137
    :cond_0
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBtService is null!! from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v2}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$200(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pName"    # Landroid/content/ComponentName;

    .line 143
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onServiceDisconnected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v2}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$200(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    invoke-static {v0}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$500(Lcom/xiaopeng/btservice/util/BtBoxesUtil;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/btservice/util/BtBoxesUtil$1;->this$0:Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->access$002(Lcom/xiaopeng/btservice/util/BtBoxesUtil;Lcom/nforetek/bt/aidl/UiCommand;)Lcom/nforetek/bt/aidl/UiCommand;

    .line 146
    return-void
.end method
