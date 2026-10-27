.class public Lcom/xiaopeng/logictree/handler/i;
.super Lcom/xiaopeng/logictree/handler/h;
.source "NetworkInfo.java"


# instance fields
.field private final YC:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 25
    const-string p1, "NetworkInfo"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->CLASS_NAME:Ljava/lang/String;

    .line 26
    const-string p1, "network_management"

    .line 27
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 26
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YC:Landroid/os/INetworkManagementService;

    .line 28
    return-void
.end method

.method private dV(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 1

    .line 93
    nop

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/i;->YC:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/i;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "check whether iface exist ? "

    invoke-static {p1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    nop

    .line 37
    const/4 p1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/i;->YC:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 38
    array-length v3, v2

    move v4, p1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 39
    iget-object v6, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 40
    nop

    .line 41
    nop

    .line 46
    move p1, v1

    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    goto :goto_2

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    :goto_2
    if-eqz p1, :cond_2

    .line 48
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_3

    .line 50
    :cond_2
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 52
    :goto_3
    goto/16 :goto_7

    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    const-string v2, "2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/logictree/handler/i;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "check whether iface up ? "

    invoke-static {p1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/i;->dV(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    .line 55
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 56
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_4

    .line 58
    :cond_4
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 60
    :goto_4
    goto/16 :goto_7

    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    const-string v2, "3"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/logictree/handler/i;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "check whether ip address exist ? "

    invoke-static {p1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/i;->dV(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object p1

    .line 63
    nop

    .line 64
    if-eqz p1, :cond_6

    .line 65
    invoke-virtual {p1}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    .line 66
    const-string v1, "getIpAddress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkAddr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 68
    const-string v1, "getIpAddress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inetaddr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 70
    if-eqz p1, :cond_7

    .line 71
    const-string v1, "getIpAddress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 74
    :cond_6
    move-object p1, v0

    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    .line 75
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_6

    .line 77
    :cond_8
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 79
    :goto_6
    goto :goto_7

    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->YB:[Ljava/lang/String;

    const-string v1, "4"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/logictree/handler/i;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/i;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "check whether phy link up ? "

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/m;->eE()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v1, "UP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 83
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_7

    .line 85
    :cond_a
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/m;->eF()Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_b
    :goto_7
    monitor-exit p0

    return-object v0

    .line 31
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 105
    return-void
.end method
