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

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->removeDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setSuspendInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->removeDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;ILjava/lang/String;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->removeSuspendInfoCache(Landroid/os/IBinder;ILjava/lang/String;Z)V

    return-void
.end method

.method private generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 783
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "_"

    if-ne p2, v0, :cond_0

    .line 786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 788
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eq p4, v0, :cond_1

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 1

    .line 770
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 771
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeDisableInfoCache :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WakeupEngineProxy"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 773
    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 774
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "remove  :  "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove after :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    .line 984
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 985
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeDisableSpeechInfoCache :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WakeupEngineProxy"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 987
    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove after :  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeSuspendInfoCache(Landroid/os/IBinder;ILjava/lang/String;Z)V
    .locals 3

    const/4 v0, -0x1

    .line 905
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 906
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeSuspendInfoCache :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WakeupEngineProxy"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 908
    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 909
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "remove after :  "

    if-eqz p4, :cond_0

    .line 911
    iget-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 913
    :cond_0
    iget-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 914
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 915
    invoke-interface {p4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 917
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": infoBeans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 919
    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 921
    :cond_2
    iget-object p4, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private resumeCarSpeechStatus()V
    .locals 13

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeCarSpeechStatus  disableInfoCache size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",suspendInfoCache size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    .line 800
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",disableSpeechInfoCache size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeupEngineProxy"

    .line 799
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

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

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    if-eqz v2, :cond_0

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable from cache:    = ====  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 807
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v5

    .line 808
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getNotifyType()I

    move-result v2

    .line 807
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getType()I

    move-result v8

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v10

    .line 811
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getNotifyType()I

    move-result v11

    move-object v6, p0

    .line 810
    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

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

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 820
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 821
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;

    if-eqz v4, :cond_4

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suspend from cache:    = ====  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v9

    .line 825
    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->getNotifyType()I

    move-result v10

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->isNeedMic()Z

    move-result v11

    const/4 v12, 0x0

    move-object v6, p0

    .line 824
    invoke-direct/range {v6 .. v12}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

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

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 833
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    if-eqz v2, :cond_6

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable speech from cache:    = ====  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getByWho()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v5

    .line 837
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->getNotifyType()I

    move-result v2

    .line 836
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private setDisableInfoCache(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 758
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisableInfoCache :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupEngineProxy"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    new-instance v1, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    move-object v3, v1

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;-><init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 762
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put data  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableInfoCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setDisableSpeechInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v0, -0x1

    .line 972
    invoke-direct {p0, p1, p4, p2, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisableSpeechInfoCache :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupEngineProxy"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 975
    new-instance v1, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    const/4 v5, -0x1

    move-object v3, v1

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;-><init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 976
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put data  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechInfoCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setSuspendInfoCache(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    const/4 v0, -0x1

    .line 869
    invoke-direct {p0, p1, p4, p2, v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->generateKey(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuspendInfoCache :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupEngineProxy"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    new-instance v1, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 873
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 875
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put data  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",suspendInfoCache:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendInfoCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 11

    move-object v8, p0

    .line 844
    iget-object v9, v8, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v10, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$54;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v9, v10}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

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

    return-void
.end method

.method public addShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$17;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public avatarClick(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$3;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public avatarPress()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$4;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public avatarRelease()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$5;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public clearCommandWakeupWord()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$12;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$12;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public clearShortCutWakeupWord()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$16;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$16;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFastWake()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$35;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$35;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFastWakeEnhance(Landroid/os/IBinder;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$41;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$41;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableInterruptWake(Landroid/os/IBinder;)V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$43;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$43;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableMainWakeupWord(Landroid/os/IBinder;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$39;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$39;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableOneshot()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$31;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$31;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

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

    return-void
.end method

.method public disableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

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

    return-void
.end method

.method public disableWakeup()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$7;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableWakeupEnhance(Landroid/os/IBinder;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$25;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$25;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

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

    return-void
.end method

.method public disableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

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

    return-void
.end method

.method public enableFastWake()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$34;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$34;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableFastWakeEnhance(Landroid/os/IBinder;)V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$40;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableInterruptWake(Landroid/os/IBinder;)V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$42;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$42;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableMainWakeupWord(Landroid/os/IBinder;)V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$38;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$38;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableOneshot()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$30;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$30;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8

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

    return-void
.end method

.method public enableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$57;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$57;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableWakeup()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$6;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableWakeupEnhance(Landroid/os/IBinder;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$24;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$24;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8

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

    return-void
.end method

.method public enableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$51;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$51;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public getAllDialogSoundAreaStatus(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$63;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    return-object p1
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
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$62;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;II)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    return-object p1
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

    if-gez p1, :cond_0

    .line 892
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->wakeupSoundAreaDisplayStatus()Z

    move-result v0

    .line 893
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    invoke-direct {v1, p1, v0}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;-><init>(IZ)V

    .line 894
    invoke-virtual {v1}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->getJsonData()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$55;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;I)V

    new-instance v2, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;-><init>(IZ)V

    .line 901
    invoke-virtual {v2}, Lcom/xiaopeng/speech/jarvisproto/SoundAreaStatus;->getJsonData()Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
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

    const/4 v2, 0x0

    .line 421
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

    const/4 v2, 0x0

    .line 378
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

    const/4 v2, 0x1

    .line 302
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

    const/4 v2, 0x0

    .line 292
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

    const/4 v2, 0x1

    .line 353
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
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getWakeupEngine()Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->fetchAll()V

    const-string p1, "WakeupEngineProxy"

    const-string v0, "reset:   onConnect"

    .line 46
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeCarSpeechStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 49
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public pauseDialog()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$19;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$19;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCommandWakeupWord([Ljava/lang/String;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$14;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$14;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public removeShortcutWakeupWord([Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$18;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$18;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeDialog()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$20;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$20;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$53;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$53;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public resumeSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    return-void
.end method

.method public resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 8

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

    return-void
.end method

.method public setDefaultFastWakeEnabled(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$33;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$33;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultOneshotEnabled(Z)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$29;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$29;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultWakeupEnabled(Z)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$23;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$23;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public setHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setWorkerHandler(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V

    return-void
.end method

.method public setWheelWakeupEnabled(Landroid/os/IBinder;Z)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$27;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public startDialog()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$1;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public startDialogFrom(Ljava/lang/String;)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$44;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$44;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public startDialogWithSoundArea(Ljava/lang/String;I)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$45;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$45;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public stopDialog()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$2;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public stopDialogMessage()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$36;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$36;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public stopDialogReason(Ljava/lang/String;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$37;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$37;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$59;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$59;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$52;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method

.method public suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 865
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public updateCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

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

    return-void
.end method

.method public updateMinorWakeupWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

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

    return-void
.end method

.method public updateShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->mIpcRunner:Lcom/xiaopeng/speech/common/util/IPCRunner;

    new-instance v1, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy$15;-><init>(Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->runFunc(Ljava/lang/Object;)V

    return-void
.end method
