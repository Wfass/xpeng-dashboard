.class Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;
.super Ljava/lang/Object;
.source "TboxTest.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/TboxTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/TboxTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/model/test/TboxTest;->TAG:Ljava/lang/String;

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

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/test/TboxTest;->access$100(Lcom/xiaopeng/commonfunc/model/test/TboxTest;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "xp_tbox"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/tbox/CarTboxManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/TboxTest;->access$002(Lcom/xiaopeng/commonfunc/model/test/TboxTest;Landroid/car/hardware/tbox/CarTboxManager;)Landroid/car/hardware/tbox/CarTboxManager;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Landroid/car/CarNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    iget-object v1, v1, Lcom/xiaopeng/commonfunc/model/test/TboxTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get TboxManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/model/test/TboxTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/TboxTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/TboxTest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/test/TboxTest;->access$002(Lcom/xiaopeng/commonfunc/model/test/TboxTest;Landroid/car/hardware/tbox/CarTboxManager;)Landroid/car/hardware/tbox/CarTboxManager;

    .line 35
    return-void
.end method
