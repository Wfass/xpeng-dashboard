.class public abstract Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
.end method

.method public arrayToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "array"    # [Ljava/lang/Object;

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 73
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
.end method

.method public ioControlWithBytes(Ljava/lang/String;[Ljava/lang/String;[B[BII)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "bytesIn"    # [B
    .param p4, "bytesOut"    # [B
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p3, "dataOut"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public abstract ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
.end method

.method public isEnabled()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onClientDied(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 86
    return-void
.end method

.method public abstract removeListener()V
.end method
