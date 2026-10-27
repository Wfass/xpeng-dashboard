.class public Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;
.super Lcom/car/opensdk/pipebus/IPipeBus$Stub;
.source "VodManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$VodManageServerHolder;,
        Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;,
        Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "vodManager"

.field private static final TAG:Ljava/lang/String; = "VodManagerServer"

.field private static mFuncMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPipeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTestID:Ljava/lang/String;

.field private mVodCommandCallback:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;

.field private final mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mVodIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/car/opensdk/pipebus/IPipeBus$Stub;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mTestID:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "vod"

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$VodManagerServer$SoOSTNf7iJYwrBTMbGMgUz_-k98;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$VodManagerServer$SoOSTNf7iJYwrBTMbGMgUz_-k98;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$1;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 921
    const-string v0, "dump VodManagerServer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    if-eqz p2, :cond_8

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 928
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_7

    .line 929
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x5d4

    if-eq v5, v6, :cond_4

    const/16 v6, 0x5e7

    if-eq v5, v6, :cond_3

    const v6, 0xb608

    if-eq v5, v6, :cond_2

    const v6, 0x2aa4471

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "-func"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    const-string v5, "-id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    const-string v5, "-t"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_4
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 941
    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    aget-object v3, p2, v3

    .line 942
    .local v3, "func":Ljava/lang/String;
    const/4 v4, 0x0

    .line 943
    .local v4, "param":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x2

    array-length v6, p2

    if-ge v5, v6, :cond_6

    .line 944
    add-int/lit8 v5, v2, 0x2

    aget-object v5, p2, v5

    move-object v4, v5

    .line 946
    :cond_6
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mTestID:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->handleTestFunc(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    .end local v3    # "func":Ljava/lang/String;
    .end local v4    # "param":Ljava/lang/String;
    goto :goto_3

    .line 947
    :catch_0
    move-exception v3

    .line 948
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "func err,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 937
    :pswitch_1
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mTestID:Ljava/lang/String;

    .line 938
    goto :goto_3

    .line 934
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->functionTest()V

    .line 935
    return-void

    .line 931
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->dumpAll(Ljava/io/PrintWriter;)V

    .line 932
    return-void

    .line 928
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 955
    .end local v2    # "i":I
    :cond_7
    return-void

    .line 924
    :cond_8
    :goto_4
    const-string v0, "lack of params"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpAll(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registered vod controls:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 962
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "control "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    .line 963
    invoke-interface {v3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    goto :goto_1

    :catch_0
    move-exception v2

    .line 959
    .end local v1    # "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registered vod ids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 968
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    iget v3, v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    iget v3, v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    invoke-interface {v3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;>;"
    goto :goto_2

    .line 972
    :cond_2
    const-string v0, "supported control func:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 974
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "func:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",api:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",param count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 974
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_4

    .line 977
    :cond_3
    return-void
.end method

.method private functionTest()V
    .locals 2

    .line 980
    const-string v0, "IdYouKu"

    .line 981
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "\u5c0f\u9e4f\u6c7d\u8f66"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onSearch(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPageBack(Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayAudioMode(Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayVideoMode(Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;
    .locals 1

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$VodManageServerHolder;->access$300()Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    move-result-object v0

    return-object v0
.end method

.method public static getModuleName()Ljava/lang/String;
    .locals 1

    .line 90
    const-string/jumbo v0, "vodManager"

    return-object v0
.end method

.method private getRecordFromPid(I)Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    .locals 4
    .param p1, "pid"    # I

    .line 910
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 911
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 912
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    iget v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    if-ne p1, v3, :cond_0

    .line 913
    monitor-exit v0

    return-object v2

    .line 915
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :cond_0
    goto :goto_0

    .line 916
    :cond_1
    monitor-exit v0

    .line 917
    const/4 v0, 0x0

    return-object v0

    .line 916
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, "ret":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    aget-object v3, p2, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 876
    .local v3, "param":Ljava/lang/String;
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x50b71147

    if-eq v5, v6, :cond_2

    const v6, 0x5a541175

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "vodSetIdentity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "vodSendCmd"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v2

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 900
    const/4 v0, -0x1

    goto :goto_2

    .line 891
    :pswitch_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-direct {p0, p4}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getRecordFromPid(I)Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    move-result-object v4

    .line 893
    .local v4, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-nez v4, :cond_4

    .line 894
    new-instance v5, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    invoke-direct {v5, p0, v1, p4, p5}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V

    move-object v4, v5

    .line 896
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    goto :goto_2

    .line 878
    :pswitch_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodCommandCallback:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;

    if-nez v4, :cond_5

    .line 879
    const-string v4, "VodManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null VodCommandCallback,param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/16 v0, -0x14

    .line 881
    goto :goto_2

    .line 883
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 884
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 885
    const-string v5, "VodManagerServer"

    const-string v6, "unknown send cmd,no id found"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    goto :goto_2

    .line 888
    :cond_6
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodCommandCallback:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;

    invoke-interface {v5, v4, v3, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;->onVodCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 889
    nop

    .line 904
    .end local v4    # "id":Ljava/lang/String;
    :goto_2
    const-string v4, "VodManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIoControlWithPocket, cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",param="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    if-eqz p3, :cond_7

    array-length v6, p3

    if-lez v6, :cond_7

    aget-object v1, p3, v2

    nop

    :cond_7
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ret="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 904
    invoke-static {v4, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTestFunc(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;

    .line 1023
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1024
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no method for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    return-void

    .line 1029
    :cond_0
    if-nez p2, :cond_1

    .line 1030
    const-string p2, "IdYouKu"

    .line 1033
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",func:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    .line 1036
    .local v1, "paramCount":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 1037
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1038
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 1039
    const-string v5, "addFavor"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1040
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p4, v4, v3

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1042
    :cond_3
    const-string v2, "1"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayAddFavor(Ljava/lang/String;Z)I

    .line 1050
    .end local v1    # "paramCount":I
    :goto_0
    goto :goto_1

    .line 1045
    .restart local v1    # "paramCount":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no suitable param for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    return-void

    .line 1048
    .end local v1    # "paramCount":I
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private initFuncMap()V
    .locals 9

    .line 991
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "search"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onSearch"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "playContent"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayContent"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "searchAndPlay"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onSearchAndPlay"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pageBack"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPageBack"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pageHistory"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPageHistory"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pageRankList"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPageRankList"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pageHome"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPageHome"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pageLogin"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPageLogin"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pageBuyVip"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPageBuyVip"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "play"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayPlay"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "pause"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayPause"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "previous"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayPrevious"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "next"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayNext"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "episode"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayEpisode"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "ff"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayFastForward"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "fb"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayFastBackward"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "seekto"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlaySeekTo"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "speed"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlaySetSpeed"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "resolution"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlaySetResolution"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "skipHead"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlaySkipVideoHead"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "skipTail"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlaySkipVideoTail"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "exit"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayExit"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "addFavor"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayAddFavor"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "audioMode"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayAudioMode"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string/jumbo v1, "videoMode"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayVideoMode"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "skipHeadTileSet"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlaySkipVideoHeadTileSet"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mFuncMap:Ljava/util/HashMap;

    const-string v1, "closeBarrage"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onPlayCloseBarrage"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    goto :goto_0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "VodManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFuncMap,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getModuleImplementor(Ljava/lang/String;)Lcom/car/opensdk/pipebus/IPipeBus;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->initFuncMap()V

    .line 95
    return-void
.end method

.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const-string v0, "VodManagerServer"

    const-string v1, "ioControl, not supported yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithBytes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[B)I
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "bytesIn"    # [B
    .param p5, "bytesOut"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const-string v0, "VodManagerServer"

    const-string v1, "ioControlWithBytes, not supported yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;)I
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "dataIn"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p4, "dataOut"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-string v0, "VodManagerServer"

    const-string v1, "ioControlWithParcelable, not supported yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "results"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 122
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 124
    .local v7, "uid":I
    const-string v0, "VodManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket,cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",call pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public onPageBack(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 291
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPageBack"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    nop

    .line 304
    return v0

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageBack,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v3, -0x1

    return v3

    .line 292
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageBack,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/16 v2, -0x12c

    return v2
.end method

.method public onPageBuyVip(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 414
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPageBuyVip"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    nop

    .line 427
    return v0

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageBuyVip,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v3, -0x1

    return v3

    .line 415
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageBuyVip,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v2, -0x12c

    return v2
.end method

.method public onPageHistory(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 315
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPageHistory"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 328
    return v0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageHistory,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v3, -0x1

    return v3

    .line 316
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageHistory,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/16 v2, -0x12c

    return v2
.end method

.method public onPageHome(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 365
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPageHome"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    nop

    .line 378
    return v0

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageHome,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v3, -0x1

    return v3

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageHome,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/16 v2, -0x12c

    return v2
.end method

.method public onPageLogin(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 389
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPageLogIn"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    nop

    .line 402
    return v0

    .line 397
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageLogin,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v3, -0x1

    return v3

    .line 390
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageLogin,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/16 v2, -0x12c

    return v2
.end method

.method public onPageRankList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 340
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPageRankList"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    nop

    .line 353
    return v0

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageRankList,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v3, -0x1

    return v3

    .line 341
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageRankList,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayAddFavor(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "favor"    # Z

    .line 754
    const/4 v0, 0x0

    .line 756
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 757
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_1

    .line 763
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayAddFavor"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 764
    if-eqz p2, :cond_1

    const-string v7, "1"

    goto :goto_0

    :cond_1
    const-string v7, "0"

    :goto_0
    aput-object v7, v5, v6

    .line 763
    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    nop

    .line 770
    return v0

    .line 765
    :catch_0
    move-exception v2

    .line 766
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayAddFavor,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const/4 v3, -0x1

    return v3

    .line 758
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayAddFavor,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayAudioMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 778
    const/4 v0, 0x0

    .line 780
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 781
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodAudioMode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    nop

    .line 794
    return v0

    .line 789
    :catch_0
    move-exception v2

    .line 790
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayAudioMode,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v3, -0x1

    return v3

    .line 782
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayAudioMode,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayCloseBarrage(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "close"    # Z

    .line 852
    const/4 v0, 0x0

    .line 854
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 855
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_1

    .line 861
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayCloseBarrage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 862
    if-eqz p2, :cond_1

    const-string v7, "1"

    goto :goto_0

    :cond_1
    const-string v7, "0"

    :goto_0
    aput-object v7, v5, v6

    .line 861
    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    nop

    .line 868
    return v0

    .line 863
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayCloseBarrage,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v3, -0x1

    return v3

    .line 856
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayCloseBarrage,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayContent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 242
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayContent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    nop

    .line 255
    return v0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayContent,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v3, -0x1

    return v3

    .line 243
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayContent,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayEpisode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "episode"    # Ljava/lang/String;

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 535
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayEpisode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    nop

    .line 548
    return v0

    .line 543
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayEpisode,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v3, -0x1

    return v3

    .line 536
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayEpisode,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayExit(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 729
    const/4 v0, 0x0

    .line 731
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 732
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayExit"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    nop

    .line 745
    return v0

    .line 740
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayExit,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v3, -0x1

    return v3

    .line 733
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayExit,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayFastBackward(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "timeMs"    # Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 585
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayFB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    nop

    .line 598
    return v0

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayFastBackward,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v3, -0x1

    return v3

    .line 586
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayFastBackward,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayFastForward(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "timeMs"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    .line 559
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 560
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayFF"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    nop

    .line 573
    return v0

    .line 568
    :catch_0
    move-exception v2

    .line 569
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayFastForward,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v3, -0x1

    return v3

    .line 561
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayFastForward,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayNext(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 510
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayNext"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    nop

    .line 523
    return v0

    .line 518
    :catch_0
    move-exception v2

    .line 519
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayNext,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v3, -0x1

    return v3

    .line 511
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayNext,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayPause(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 462
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayPause"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    nop

    .line 475
    return v0

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayPause,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v3, -0x1

    return v3

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayPause,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayPlay(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 438
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayPlay"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    nop

    .line 451
    return v0

    .line 446
    :catch_0
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayPlay,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v3, -0x1

    return v3

    .line 439
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayPlay,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayPrevious(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 486
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayPrevious"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    nop

    .line 499
    return v0

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayPrevious,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v3, -0x1

    return v3

    .line 487
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayPrevious,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlaySeekTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "timeMs"    # Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    .line 609
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 610
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlaySeek"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    nop

    .line 623
    return v0

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaySeekTo,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const/4 v3, -0x1

    return v3

    .line 611
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaySeekTo,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlaySetResolution(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resolution"    # Ljava/lang/String;

    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 660
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlayResolution"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    nop

    .line 673
    return v0

    .line 668
    :catch_0
    move-exception v2

    .line 669
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaySetResolution,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/4 v3, -0x1

    return v3

    .line 661
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaySetResolution,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlaySetSpeed(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "speed"    # Ljava/lang/String;

    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 635
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlaySpeed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    nop

    .line 648
    return v0

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaySetSpeed,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v3, -0x1

    return v3

    .line 636
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaySetSpeed,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlaySkipVideoHead(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 684
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlaySkipHead"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    nop

    .line 697
    return v0

    .line 692
    :catch_0
    move-exception v2

    .line 693
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaySkipVideoHead,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v3, -0x1

    return v3

    .line 685
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaySkipVideoHead,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlaySkipVideoHeadTileSet(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "skip"    # Z

    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 830
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_1

    .line 836
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlaySkipHeadTailSet"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 837
    if-eqz p2, :cond_1

    const-string v7, "1"

    goto :goto_0

    :cond_1
    const-string v7, "0"

    :goto_0
    aput-object v7, v5, v6

    .line 836
    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    nop

    .line 843
    return v0

    .line 838
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaySkipVideoHeadTileSet,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v3, -0x1

    return v3

    .line 831
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaySkipVideoHeadTileSet,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlaySkipVideoTail(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    .line 707
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 708
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 714
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodPlaySkipTail"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    nop

    .line 721
    return v0

    .line 716
    :catch_0
    move-exception v2

    .line 717
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaySkipVideoTail,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v3, -0x1

    return v3

    .line 709
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlaySkipVideoTail,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/16 v2, -0x12c

    return v2
.end method

.method public onPlayVideoMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .line 802
    const/4 v0, 0x0

    .line 804
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 805
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 811
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodVideoMode"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    nop

    .line 818
    return v0

    .line 813
    :catch_0
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayVideoMode,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v3, -0x1

    return v3

    .line 806
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayVideoMode,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/16 v2, -0x12c

    return v2
.end method

.method public onSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 217
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodSearch"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 230
    return v0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSearch,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v3, -0x1

    return v3

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearch,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v2, -0x12c

    return v2
.end method

.method public onSearchAndPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 267
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    if-nez v2, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string/jumbo v3, "vodManager"

    const-string/jumbo v4, "vodSearchAndPlay"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    nop

    .line 280
    return v0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSearchAndPlay,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v3, -0x1

    return v3

    .line 268
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchAndPlay,no valid vod control for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v2, -0x12c

    return v2
.end method

.method public registerListener(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBusListener;)V
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/car/opensdk/pipebus/IPipeBusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 132
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 134
    .local v1, "uid":I
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener,call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v2, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V

    .line 137
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :try_start_0
    invoke-interface {p2}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 143
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 144
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 150
    .local v4, "record2":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v4, :cond_1

    .line 151
    iget v5, v4, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getRecordFromPid(I)Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    move-result-object v5

    .line 152
    .local v5, "record3":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    if-eqz v5, :cond_0

    .line 153
    iput-object v3, v5, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->id:Ljava/lang/String;

    .line 154
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodControlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    const-string v6, "VodManagerServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no valid record for id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v5    # "record3":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :cond_1
    :goto_0
    return-void

    .line 145
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "record2":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "VodManagerServer"

    const-string v5, "PipeListener is dead, ignoring it"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public registerModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public setVodCommandCallback(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mVodCommandCallback:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;

    .line 99
    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;)V
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 164
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 166
    .local v1, "uid":I
    const-string v2, "VodManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterListener,call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 169
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;

    .line 170
    .local v5, "r":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    iget v6, v5, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    if-ne v6, v0, :cond_0

    .line 171
    move-object v2, v5

    .line 172
    goto :goto_1

    .line 174
    .end local v5    # "r":Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
    :cond_0
    goto :goto_0

    .line 175
    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    if-eqz v2, :cond_2

    .line 178
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    invoke-interface {v3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    goto :goto_2

    .line 179
    :catch_0
    move-exception v3

    .line 182
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 183
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 186
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    goto :goto_3

    .line 184
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 189
    :cond_2
    const-string v3, "VodManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unRegisterListener, no record for pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    :goto_3
    return-void

    .line 175
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public unRegisterModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method
