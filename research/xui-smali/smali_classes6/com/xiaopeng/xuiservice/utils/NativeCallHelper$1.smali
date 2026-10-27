.class Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$1;
.super Ljava/lang/Object;
.source "NativeCallHelper.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 69
    if-eqz p2, :cond_3

    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 74
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, "debugFlag":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->access$000(Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->access$000(Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 77
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 78
    .local v5, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 79
    .local v6, "reply":Landroid/os/Parcel;
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 81
    .local v7, "binder":Landroid/os/IBinder;
    invoke-interface {v7, v1, v5, v6, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write debugFlag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " done"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 85
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/IBinder;>;"
    .end local v5    # "data":Landroid/os/Parcel;
    .end local v6    # "reply":Landroid/os/Parcel;
    .end local v7    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "mBinderMap is empty"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "debugFlag":I
    :cond_2
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NativeCallHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugDump,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 70
    :cond_3
    :goto_2
    const-string v0, "args is null or length < 1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method
