.class public Lcom/xiaopeng/xuimanager/common/CommonPipe;
.super Ljava/lang/Object;
.source "CommonPipe.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/common/ICommonPipe;
.implements Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;


# static fields
.field public static final MODULE:Ljava/lang/String; = "XUICommonPipe"

.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuimanager/common/CommonPipe;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CommonPipeClient"


# instance fields
.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

.field private final pipListenerRegisterAndNotify:Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    new-instance v0, Lcom/xiaopeng/xuimanager/common/CommonPipe$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/common/CommonPipe$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;-><init>(Lcom/xiaopeng/xuimanager/common/CommonPipe;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->pipListenerRegisterAndNotify:Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;

    .line 239
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xuiservice"

    const-string v2, "XUICommonPipe"

    .line 238
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v1, "CommonPipeClient"

    .line 240
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/common/CommonPipe$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/common/CommonPipe;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/common/CommonPipe;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/common/CommonPipe;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/common/CommonPipe;

    return-object v0
.end method

.method private static logRemoteError(ILjava/lang/String;)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOTE ERROR: ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonPipeClient"

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 5

    .line 36
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 40
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "XUICommonPipe"

    const-string v4, "getInt"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v2, "getInt: what="

    if-eqz v0, :cond_0

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    .line 45
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonPipeClient"

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 5

    .line 66
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "XUICommonPipe"

    const-string v4, "getLong"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v2, "getLong: what="

    if-eqz v0, :cond_0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getLong()J

    move-result-wide v0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", ret="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CommonPipeClient"

    invoke-static {v2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 126
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "XUICommonPipe"

    const-string v4, "getParcelable"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v2, "getParcelable: what="

    if-eqz v0, :cond_0

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonPipeClient"

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getParcelableList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "XUICommonPipe"

    const-string v4, "getParcelableList"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v2, "getParcelableList: what="

    if-eqz v0, :cond_0

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    .line 164
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonPipeClient"

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 96
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 97
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "XUICommonPipe"

    const-string v4, "getString"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v2, "getString: what="

    if-eqz v0, :cond_0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonPipeClient"

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onPipeBusEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPipeBusParcelEvent(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 199
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 202
    aget-object v0, v0, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "pipe"

    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->pipListenerRegisterAndNotify:Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;->onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/xiaopeng/xuimanager/common/PipeListener;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->pipListenerRegisterAndNotify:Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;->register(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 5

    .line 52
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "XUICommonPipe"

    const-string v3, "setInt"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v1, ", value="

    if-eqz v0, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInt: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success, setInt: what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonPipeClient"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 5

    .line 82
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 83
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setLong(J)V

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "XUICommonPipe"

    const-string v3, "setLong"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v1, ", value="

    if-eqz v0, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLong: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success, setLong: what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonPipeClient"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 142
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Parcelable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 143
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "XUICommonPipe"

    const-string v3, "setParcelable"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v1, ", value="

    if-eqz v0, :cond_0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParcelable: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success, setParcelable: what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonPipeClient"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 172
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableList(Ljava/util/List;)V

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "XUICommonPipe"

    const-string v3, "setParcelableList"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v1, ", value="

    if-eqz v0, :cond_0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParcelableList: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success, setParcelableList: what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonPipeClient"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 112
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 113
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "XUICommonPipe"

    const-string v3, "setString"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v1, ", value="

    if-eqz v0, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setString: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->logRemoteError(ILjava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success, setString: what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonPipeClient"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
