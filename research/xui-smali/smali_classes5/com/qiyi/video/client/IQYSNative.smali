.class Lcom/qiyi/video/client/IQYSNative;
.super Ljava/lang/Object;
.source "IQYSNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IQYSNative"


# instance fields
.field private mConnectStatusChangedListener:Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

.field private final mDefault:Lcom/qiyi/video/client/IQYSService;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/qiyi/video/client/IQYSManager$RegisterListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/qiyi/video/client/IQYSConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mService:Lcom/qiyi/video/client/IQYSService;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mListeners:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

    invoke-direct {v0}, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;-><init>()V

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mConnectStatusChangedListener:Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    new-instance v1, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    invoke-direct {v1, v0, v0}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;-><init>(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/client/IQYSNative$1;)V

    iput-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mDefault:Lcom/qiyi/video/client/IQYSService;

    .line 31
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mDefault:Lcom/qiyi/video/client/IQYSService;

    iput-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mService:Lcom/qiyi/video/client/IQYSService;

    return-void
.end method

.method static synthetic access$200(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative;->refString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiyi/video/client/IQYSNative;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qiyi/video/client/IQYSNative;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;
    .param p1, "x1"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/qiyi/video/client/IQYSNative;->callbackFailure(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/qiyi/video/client/IQYSNative;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;
    .param p1, "x1"    # Lcom/qiyi/video/client/IQYSService;

    .line 23
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSNative;->mService:Lcom/qiyi/video/client/IQYSService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qiyi/video/client/IQYSNative;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative;->callbackSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qiyi/video/client/IQYSNative;)Lcom/qiyi/video/client/IQYSService;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mDefault:Lcom/qiyi/video/client/IQYSService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qiyi/video/client/IQYSNative;)Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSNative;

    .line 23
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mConnectStatusChangedListener:Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

    return-object v0
.end method

.method private callbackFailure(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 131
    const-string v0, "IQYSNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackFailure() called with: obj = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative;->refString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], code = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], msg = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/qiyi/video/client/IQYSManager$RegisterListener;>;"
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiyi/video/client/IQYSManager$RegisterListener;

    .line 135
    .local v2, "listener":Lcom/qiyi/video/client/IQYSManager$RegisterListener;
    invoke-interface {v2, p2, p3}, Lcom/qiyi/video/client/IQYSManager$RegisterListener;->onRegisterFailure(ILjava/lang/String;)V

    .line 136
    .end local v2    # "listener":Lcom/qiyi/video/client/IQYSManager$RegisterListener;
    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    :cond_1
    return-void
.end method

.method private callbackSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mService:Lcom/qiyi/video/client/IQYSService;

    .line 120
    .local v0, "service":Lcom/qiyi/video/client/IQYSService;
    const-string v1, "IQYSNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackSuccess: ref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/qiyi/video/client/IQYSNative;->refString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/qiyi/video/client/IQYSManager$RegisterListener;>;"
    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiyi/video/client/IQYSManager$RegisterListener;

    .line 124
    .local v3, "listener":Lcom/qiyi/video/client/IQYSManager$RegisterListener;
    invoke-interface {v3, v0}, Lcom/qiyi/video/client/IQYSManager$RegisterListener;->onRegisterSuccess(Lcom/qiyi/video/client/IQYSService;)V

    .line 125
    .end local v3    # "listener":Lcom/qiyi/video/client/IQYSManager$RegisterListener;
    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 128
    :cond_1
    return-void
.end method

.method private refString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    if-nez p1, :cond_0

    const-string v0, "0x00"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V
    .locals 1
    .param p1, "connectStatusChangedListener"    # Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 34
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mConnectStatusChangedListener:Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->addListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V

    .line 35
    return-void
.end method

.method public getService()Lcom/qiyi/video/client/IQYSService;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mService:Lcom/qiyi/video/client/IQYSService;

    .line 43
    .local v0, "service":Lcom/qiyi/video/client/IQYSService;
    const-string v1, "IQYSNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService: ref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mService:Lcom/qiyi/video/client/IQYSService;

    check-cast v0, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;->access$100(Lcom/qiyi/video/client/IQYSNative$IQYSServiceImp;)Lcom/qiyi/video/client/IQYSConnection;

    move-result-object v0

    .line 49
    .local v0, "connection":Lcom/qiyi/video/client/IQYSConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSConnection;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/qiyi/video/client/IQYSManager$RegisterListener;

    .line 53
    const-string v0, "IQYSNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p2, :cond_0

    new-instance v0, Lcom/qiyi/video/client/EmptyRegisterListener;

    invoke-direct {v0}, Lcom/qiyi/video/client/EmptyRegisterListener;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 55
    .local v0, "registerListener":Lcom/qiyi/video/client/IQYSManager$RegisterListener;
    :goto_0
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Lcom/qiyi/video/client/IQYSConnection;

    invoke-direct {v1}, Lcom/qiyi/video/client/IQYSConnection;-><init>()V

    .line 57
    .local v1, "connection":Lcom/qiyi/video/client/IQYSConnection;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 58
    .local v2, "reference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/qiyi/video/client/IQYSConnection;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiyi/video/client/IQYSManager$RegisterListener;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v4, p0, Lcom/qiyi/video/client/IQYSNative;->mListeners:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-object v2, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v4, Lcom/qiyi/video/client/IQYSNative$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/qiyi/video/client/IQYSNative$1;-><init>(Lcom/qiyi/video/client/IQYSNative;Ljava/util/concurrent/atomic/AtomicReference;Lcom/qiyi/video/client/IQYSConnection;)V

    invoke-virtual {v1, v4}, Lcom/qiyi/video/client/IQYSConnection;->setListener(Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;)V

    .line 81
    new-instance v4, Lcom/qiyi/video/client/IQYSNative$2;

    invoke-direct {v4, p0, v2}, Lcom/qiyi/video/client/IQYSNative$2;-><init>(Lcom/qiyi/video/client/IQYSNative;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v4}, Lcom/qiyi/video/client/IQYSConnection;->setStatusListener(Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;)V

    .line 98
    invoke-virtual {v1, p1}, Lcom/qiyi/video/client/IQYSConnection;->connect(Landroid/content/Context;)V

    .line 99
    const-string v4, "IQYSNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register: connection started, ref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/qiyi/video/client/IQYSNative;->refString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v1    # "connection":Lcom/qiyi/video/client/IQYSConnection;
    .end local v2    # "reference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/qiyi/video/client/IQYSConnection;>;"
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qiyi/video/client/IQYSManager$RegisterListener;>;"
    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mService:Lcom/qiyi/video/client/IQYSService;

    invoke-interface {v0, v1}, Lcom/qiyi/video/client/IQYSManager$RegisterListener;->onRegisterSuccess(Lcom/qiyi/video/client/IQYSService;)V

    .line 102
    const-string v1, "IQYSNative"

    const-string v2, "register: connected already"

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_2
    const-string v1, "IQYSNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register: connecting ref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v3}, Lcom/qiyi/video/client/IQYSNative;->refString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mListeners:Ljava/util/Map;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    .local v1, "registerListeners":Ljava/util/List;, "Ljava/util/List<Lcom/qiyi/video/client/IQYSManager$RegisterListener;>;"
    if-eqz v1, :cond_3

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_3
    const/4 v2, -0x1

    const-string v3, "connection created but listeners is null"

    invoke-interface {v0, v2, v3}, Lcom/qiyi/video/client/IQYSManager$RegisterListener;->onRegisterFailure(ILjava/lang/String;)V

    .line 112
    .end local v1    # "registerListeners":Ljava/util/List;, "Ljava/util/List<Lcom/qiyi/video/client/IQYSManager$RegisterListener;>;"
    :goto_1
    return-void
.end method

.method public removeConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V
    .locals 1
    .param p1, "connectStatusChangedListener"    # Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 38
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mConnectStatusChangedListener:Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/qiyi/video/client/ConnectStatusChangedListenerWrapper;->addListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V

    .line 39
    return-void
.end method

.method public unRegister()V
    .locals 3

    .line 142
    const-string v0, "IQYSNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegister: ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v2}, Lcom/qiyi/video/client/IQYSNative;->refString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 144
    .local v0, "connection":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/qiyi/video/client/IQYSConnection;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiyi/video/client/IQYSConnection;

    .line 145
    .local v2, "con":Lcom/qiyi/video/client/IQYSConnection;
    :goto_0
    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v2}, Lcom/qiyi/video/client/IQYSConnection;->disConnect()V

    .line 148
    :cond_1
    iput-object v1, p0, Lcom/qiyi/video/client/IQYSNative;->mReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    return-void
.end method
