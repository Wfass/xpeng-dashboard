.class Lcom/xiaopeng/commonfunc/model/test/CarTest$1;
.super Ljava/lang/Object;
.source "CarTest.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/CarTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/CarTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$100(Lcom/xiaopeng/commonfunc/model/test/CarTest;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "xp_tbox"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/tbox/CarTboxManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$002(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/hardware/tbox/CarTboxManager;)Landroid/car/hardware/tbox/CarTboxManager;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$100(Lcom/xiaopeng/commonfunc/model/test/CarTest;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "xp_diagnostic"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$202(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/diagnostic/XpDiagnosticManager;)Landroid/car/diagnostic/XpDiagnosticManager;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$100(Lcom/xiaopeng/commonfunc/model/test/CarTest;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "xp_mcu"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$302(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/hardware/mcu/CarMcuManager;)Landroid/car/hardware/mcu/CarMcuManager;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;-><init>(Lcom/xiaopeng/commonfunc/model/test/CarTest;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$402(Lcom/xiaopeng/commonfunc/model/test/CarTest;Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;)Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$502(Lcom/xiaopeng/commonfunc/model/test/CarTest;Z)Z
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/car/CarNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v1, v1, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get TboxManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$202(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/diagnostic/XpDiagnosticManager;)Landroid/car/diagnostic/XpDiagnosticManager;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/CarTest;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/CarTest;->access$002(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/hardware/tbox/CarTboxManager;)Landroid/car/hardware/tbox/CarTboxManager;

    .line 52
    return-void
.end method
