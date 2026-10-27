.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;
.super Ljava/lang/Object;
.source "GattAospImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->doHidConnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

.field final synthetic val$addr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 1607
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->val$addr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onServiceConnected$0(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "targetDevice2"    # Landroid/bluetooth/BluetoothDevice;

    .line 1626
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1627
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2600(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1628
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .line 1629
    .local v1, "bonded":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1630
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1631
    const/4 v1, 0x1

    .line 1632
    goto :goto_1

    .line 1634
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 1635
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1636
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 1638
    :cond_2
    const-string v2, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin to connect device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    .line 1639
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",bonded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1638
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    if-nez v1, :cond_3

    .line 1643
    const-wide/16 v2, 0xdac

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 1649
    :catch_0
    move-exception v2

    goto :goto_3

    .line 1646
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "connect"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1648
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2400(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Landroid/bluetooth/BluetoothProfile;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_4

    .line 1649
    :goto_3
    nop

    .line 1650
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "GattAospImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke hid connect failed,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    .end local v0    # "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "bonded":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 1610
    const/4 v0, 0x4

    if-ne v0, p1, :cond_3

    .line 1611
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2402(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 1612
    const/4 v0, 0x0

    .line 1613
    .local v0, "targetDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2500(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1614
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->val$addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1615
    move-object v0, v2

    .line 1616
    const-string v1, "GattAospImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHidConnect,target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    goto :goto_1

    .line 1619
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 1620
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1621
    const-string v1, "GattAospImpl"

    const-string v2, "no targetDevice"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    return-void

    .line 1624
    :cond_2
    move-object v1, v0

    .line 1625
    .local v1, "targetDevice2":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->val$addr:Ljava/lang/String;

    new-instance v4, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;

    invoke-direct {v4, p0, v3, v1}, Lcom/xiaopeng/xuiservice/bluetooth/-$$Lambda$GattAospImpl$1$o2LAlHVG-fwwzSZD0t-zA3845WI;-><init>(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 1655
    .end local v0    # "targetDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "targetDevice2":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected,profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 1660
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$1;->this$0:Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;->access$2402(Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 1663
    :cond_0
    const-string v0, "GattAospImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected,profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    return-void
.end method
