.class public Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
.super Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeupEngineProxy"


# instance fields
.field private final disableInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/common/bean/DisableInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final disableSpeechInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/common/bean/DisableInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/IPCRunner<",
            "Lcom/xiaopeng/speech/coreapi/IWakeupEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final suspendInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/speech/common/util/IPCRunner;

    const-string v1, "WakeupEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->removeDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setSuspendInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->removeDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->removeSuspendInfoCache(Landroid/os/IBinder;ILjava/lang/String;Z)V

    return-void
.end method

.method private generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 782
    if-eqz p1, :cond_2

    .line 783
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "key":Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 788
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    :goto_0
    if-eq p4, v1, :cond_1

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_1
    return-object v0

    .line 795
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 770
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisableInfoCache :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove after :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    :cond_0
    return-void
.end method

.method private removeDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .line 984
    const/4 v0, -0x1

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisableSpeechInfoCache :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove after :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    :cond_0
    return-void
.end method

.method private removeSuspendInfoCache(Landroid/os/IBinder;ILjava/lang/String;Z)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "removeAll"    # Z

    .line 905
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSuspendInfoCache :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 908
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 909
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    if-eqz p4, :cond_0

    .line 911
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 914
    .local v1, "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 915
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 917
    :cond_1
    const-string v2, "WakeupEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove after :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": infoBeans"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 919
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 921
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .end local v1    # "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;"
    :goto_0
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove after :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    :cond_3
    return-void
.end method

.method private resumeCarSpeechStatus()V
    .locals 14

    .line 799
    const-string v0, "WakeupEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCarSpeechStatus  disableInfoCache size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",suspendInfoCache size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    .line 800
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",disableSpeechInfoCache size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 803
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/DisableInfoBean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    .line 804
    .local v2, "disableInfoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    if-eqz v2, :cond_1

    .line 805
    const-string v3, "WakeupEngineProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable from cache:    = ====  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 807
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v5

    .line 808
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getNotifyType()I

    move-result v6

    .line 807
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 810
    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getType()I

    move-result v9

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v11

    .line 811
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getNotifyType()I

    move-result v12

    .line 810
    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 814
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/DisableInfoBean;>;"
    .end local v2    # "disableInfoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    :cond_1
    :goto_1
    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 819
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 820
    .local v2, "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 821
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;

    .line 822
    .local v4, "infoBean":Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;
    if-eqz v4, :cond_3

    .line 823
    const-string v5, "WakeupEngineProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "suspend from cache:    = ====  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v10

    .line 825
    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getNotifyType()I

    move-result v11

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->isNeedMic()Z

    move-result v12

    const/4 v13, 0x0

    .line 824
    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 820
    .end local v4    # "infoBean":Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 828
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;>;"
    .end local v2    # "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;"
    .end local v3    # "i":I
    :cond_4
    goto :goto_2

    .line 831
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 832
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 833
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/DisableInfoBean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    .line 834
    .local v2, "disableInfoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    if-eqz v2, :cond_6

    .line 835
    const-string v3, "WakeupEngineProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable speech from cache:    = ====  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v5

    .line 837
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getNotifyType()I

    move-result v6

    .line 836
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 839
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/DisableInfoBean;>;"
    .end local v2    # "disableInfoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    :cond_6
    goto :goto_4

    .line 841
    :cond_7
    return-void
.end method

.method private setDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "notifyType"    # I

    .line 758
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisableInfoCache :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    new-instance v1, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;-><init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 762
    .local v1, "mInfoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    const-string v2, "WakeupEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put data  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .end local v1    # "mInfoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    :cond_0
    return-void
.end method

.method private setDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 972
    const/4 v0, -0x1

    invoke-direct {p0, p1, p4, p2, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisableSpeechInfoCache :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 975
    new-instance v1, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    const/4 v4, -0x1

    move-object v2, v1

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;-><init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 976
    .local v1, "infoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 977
    const-string v2, "WakeupEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put data  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    .end local v1    # "infoBean":Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
    :cond_0
    return-void
.end method

.method private setSuspendInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "notifyType"    # I
    .param p5, "needMic"    # Z

    .line 869
    const/4 v0, -0x1

    invoke-direct {p0, p1, p4, p2, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "key":Ljava/lang/String;
    const-string v1, "WakeupEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSuspendInfoCache :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    new-instance v1, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 873
    .local v1, "mInfoBean":Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;
    iget-object v2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 874
    .local v2, "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;"
    if-nez v2, :cond_0

    .line 875
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 877
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v3, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v3, "WakeupEngineProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "put data  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",suspendInfoCache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    .end local v1    # "mInfoBean":Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;
    .end local v2    # "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;>;"
    :cond_1
    return-void
.end method

.method private suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "notifyType"    # I
    .param p5, "needMic"    # Z
    .param p6, "handleCache"    # Z

    .line 844
    move-object v8, p0

    iget-object v9, v8, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v10, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v9, v10}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 862
    return-void
.end method


# virtual methods
.method public addCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "actions"    # [Ljava/lang/String;
    .param p2, "words"    # [Ljava/lang/String;
    .param p3, "pinyin"    # [Ljava/lang/String;
    .param p4, "threshold"    # [Ljava/lang/String;
    .param p5, "greetings"    # [Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v8, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$13;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public addShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "words"    # [Ljava/lang/String;
    .param p2, "pinyin"    # [Ljava/lang/String;
    .param p3, "threshold"    # [Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public avatarClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "greeting"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public avatarPress()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public avatarRelease()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public clearCommandWakeupWord()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$12;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$12;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public clearShortCutWakeupWord()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$16;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$16;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public disableFastWake()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$35;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$35;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public disableFastWakeEnhance(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$41;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$41;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public disableInterruptWake(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$43;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$43;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 575
    return-void
.end method

.method public disableMainWakeupWord(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$39;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$39;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 515
    return-void
.end method

.method public disableOneshot()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$31;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$31;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 412
    return-void
.end method

.method public disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "notifyType"    # I

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v8, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$48;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 659
    return-void
.end method

.method public disableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$56;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$56;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 948
    return-void
.end method

.method public disableWakeup()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public disableWakeupEnhance(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$25;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$25;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "notifyType"    # I

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v8, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$46;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$46;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 618
    return-void
.end method

.method public disableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$50;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$50;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method public enableFastWake()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$34;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$34;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public enableFastWakeEnhance(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method public enableInterruptWake(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$42;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$42;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method public enableMainWakeupWord(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$38;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$38;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 500
    return-void
.end method

.method public enableOneshot()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$30;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$30;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$49;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 679
    return-void
.end method

.method public enableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$57;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$57;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 968
    return-void
.end method

.method public enableWakeup()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$6;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public enableWakeupEnhance(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$24;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$24;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "byWho"    # Ljava/lang/String;
    .param p4, "notifyType"    # I

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$47;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$47;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 638
    return-void
.end method

.method public enableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$51;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$51;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 719
    return-void
.end method

.method public getAllDialogSoundAreaStatus(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 3
    .param p1, "screenId"    # I

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    return-object v0
.end method

.method public getAvatarStatus()Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$60;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$60;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    return-object v0
.end method

.method public getDialogSoundAreaStatus(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "soundArea"    # I

    .line 1061
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    return-object v0
.end method

.method public getDialogSwitchStatus()Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    .locals 3

    .line 1046
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$61;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$61;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    return-object v0
.end method

.method public getMinorWakeupWord()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$10;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSoundAreaStatus(I)Ljava/lang/String;
    .locals 4
    .param p1, "soundArea"    # I

    .line 891
    if-gez p1, :cond_0

    .line 892
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->wakeupSoundAreaDisplayStatus()Z

    move-result v0

    .line 893
    .local v0, "displayStatus":Z
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    invoke-direct {v1, p1, v0}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;-><init>(IZ)V

    .line 894
    .local v1, "soundAreaStatus":Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;
    invoke-virtual {v1}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->getJsonData()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 896
    .end local v0    # "displayStatus":Z
    .end local v1    # "soundAreaStatus":Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;I)V

    new-instance v2, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;-><init>(IZ)V

    .line 901
    invoke-virtual {v2}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->getJsonData()Ljava/lang/String;

    move-result-object v2

    .line 896
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupWords()[Ljava/lang/String;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$8;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultEnableFastWake()Z
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$32;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$32;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    .line 421
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDefaultEnableOneshot()Z
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$28;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$28;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    .line 378
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDefaultEnableWakeup()Z
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$22;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$22;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    .line 302
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableWakeup()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$21;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$21;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    .line 292
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWheelWakeupEnabled()Z
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$26;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$26;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    .line 353
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getWakeupEngine()Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    .line 46
    const-string v0, "WakeupEngineProxy"

    const-string v1, "reset:   onConnect"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeCarSpeechStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "onConnect exception "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .line 56
    return-void
.end method

.method public pauseDialog()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$19;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$19;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public removeCommandWakeupWord([Ljava/lang/String;)V
    .locals 2
    .param p1, "words"    # [Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$14;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$14;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public removeShortcutWakeupWord([Ljava/lang/String;)V
    .locals 2
    .param p1, "words"    # [Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$18;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$18;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public resumeDialog()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$20;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$20;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public resumeDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$53;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$53;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public resumeSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;

    .line 885
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    .line 886
    return-void
.end method

.method public resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "notifyType"    # I
    .param p4, "removeAll"    # Z

    .line 997
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$58;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method public setDefaultFastWakeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$33;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$33;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public setDefaultOneshotEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$29;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$29;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public setDefaultWakeupEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$23;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$23;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    .line 755
    return-void
.end method

.method public setWheelWakeupEnabled(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public startDialog()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public startDialogFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$44;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$44;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 586
    return-void
.end method

.method public startDialogWithSoundArea(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "soundArea"    # I

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$45;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$45;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 597
    return-void
.end method

.method public stopDialog()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public stopDialogMessage()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$36;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$36;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public stopDialogReason(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$37;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$37;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$59;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$59;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method public suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method public suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "byWho"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "notifyType"    # I
    .param p5, "needMic"    # Z

    .line 865
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 866
    return-void
.end method

.method public updateCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "actions"    # [Ljava/lang/String;
    .param p2, "words"    # [Ljava/lang/String;
    .param p3, "pinyin"    # [Ljava/lang/String;
    .param p4, "threshold"    # [Ljava/lang/String;
    .param p5, "greetings"    # [Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v8, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$11;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$11;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public updateMinorWakeupWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;
    .param p3, "threshold"    # Ljava/lang/String;
    .param p4, "greetings"    # [Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v7, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$9;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public updateShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "words"    # [Ljava/lang/String;
    .param p2, "pinyin"    # [Ljava/lang/String;
    .param p3, "threshold"    # [Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$15;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    .line 228
    return-void
.end method
