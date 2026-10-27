.class public Lcom/xiaopeng/xuiservice/XUIServiceBusServer;
.super Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;
.source "XUIServiceBusServer.java"


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

.field private static final TAG:Ljava/lang/String; = "XUIServiceBusServer"

.field private static final serviceName:Ljava/lang/String; = "xuiservice"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->INSTANCE:Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;-><init>()V

    .line 24
    const-string v0, "XUIServiceBusServer"

    const-string v1, "XUIServiceBusServer create"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/XUIServiceBusServer;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/xuiservice/XUIServiceBusServer;->INSTANCE:Lcom/xiaopeng/xuiservice/XUIServiceBusServer;

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 73
    if-eqz p3, :cond_6

    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p3, v0

    const-string v3, "-test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const-string v0, "do basic test..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    return-void

    .line 81
    :cond_1
    aget-object v2, p3, v0

    const-string v3, "-m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    array-length v0, p3

    if-le v0, v1, :cond_2

    .line 83
    aget-object v0, p3, v1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->hasModule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    aget-object v0, p3, v1

    const/4 v1, 0x2

    invoke-static {p2, v0, p3, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 85
    return-void

    .line 88
    :cond_2
    const-string v0, "lack of module name"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    aget-object v1, p3, v0

    const-string v2, "-l"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    aget-object v0, p3, v0

    const-string v1, "-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    :cond_4
    const-string v0, "managers from dump dispatcher:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->getDumpModules()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 93
    const-string v0, "********"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 96
    return-void

    .line 74
    :cond_6
    :goto_1
    const-string v0, "dump xuiservice,lack of params"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string/jumbo v0, "xuiservice"

    return-object v0
.end method

.method public onTransactEnter(ILandroid/os/Parcel;Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .param p5, "key"    # Ljava/lang/String;

    .line 52
    const-string v0, "XUIServiceBusServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransactEnter,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",reply="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onTransactLeave(ILandroid/os/Parcel;Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .param p5, "key"    # Ljava/lang/String;

    .line 67
    const-string v0, "XUIServiceBusServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransactLeave,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",reply="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
