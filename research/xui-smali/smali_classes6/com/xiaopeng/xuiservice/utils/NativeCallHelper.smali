.class public Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;
.super Ljava/lang/Object;
.source "NativeCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;
    }
.end annotation


# static fields
.field public static final GET_DOLBY_PKG_CHANNEL_COUNT:Ljava/lang/String; = "getDolbyPkgChannelCount"

.field private static final TAG:Ljava/lang/String; = "NativeCallHelper"

.field private static final instance:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;


# instance fields
.field private mBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeCallListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->instance:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mBinderMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    .line 64
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 65
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 66
    const-string v1, "debugCallback"

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$1;-><init>(Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;)V

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mBinderMap:Ljava/util/Map;

    return-object v0
.end method

.method private getDolbyPkgChannelCount(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 141
    const/16 v0, 0xc

    .line 142
    .local v0, "channelCount":I
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "NativeCallHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDolbyPkgChannelCount,pid->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pkg->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x0

    move-object v3, v2

    .line 146
    .local v3, "pkgInfo":Lcom/xiaopeng/app/xpPackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v4

    move-object v3, v4

    .line 147
    const-string v4, "NativeCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDolbyPkgChannelCount,app type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz v3, :cond_0

    iget v2, v3, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "NativeCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDolbyPkgChannelCount,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;
    .locals 1

    .line 97
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->instance:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    return-object v0
.end method


# virtual methods
.method public nativeCall(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "method":Ljava/lang/String;
    const-string v1, "NativeCallHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeCall,method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",reply="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x38cd15b6

    if-eq v1, v2, :cond_1

    const v2, 0x7a8117b8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "debugCallback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "getDolbyPkgChannelCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;>;"
    if-nez v1, :cond_4

    .line 127
    const-string v2, "NativeCallHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeCall, no listener for method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 112
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;>;"
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "inData":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 114
    .local v2, "callPid":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mBinderMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 115
    const-string v3, "NativeCallHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debugCallback already registered for pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    goto :goto_3

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 119
    .local v3, "binder":Landroid/os/IBinder;
    const-string v4, "NativeCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debugCallback,callPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",binder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",inData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mBinderMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v1    # "inData":I
    .end local v2    # "callPid":I
    .end local v3    # "binder":Landroid/os/IBinder;
    goto :goto_3

    .line 106
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "pid":I
    const-string v2, "NativeCallHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTransact, native call in,method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",param pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getDolbyPkgChannelCount(ILandroid/os/Parcel;)V

    .line 110
    .end local v1    # "pid":I
    goto :goto_3

    .line 129
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    .line 130
    .local v3, "listener":Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;
    if-eqz v3, :cond_5

    .line 131
    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;->onNativeCall(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 133
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;
    :cond_5
    goto :goto_2

    .line 137
    .end local v1    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;>;"
    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    const-string v0, "NativeCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNativeCallListener,method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_0
    return-void
.end method

.method public unregisterNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    const-string v0, "NativeCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterNativeCallListener,method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->mNativeCallListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void
.end method
