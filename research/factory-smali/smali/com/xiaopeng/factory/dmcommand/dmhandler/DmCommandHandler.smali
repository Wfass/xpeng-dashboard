.class public abstract Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
.super Ljava/lang/Object;
.source "DmCommandHandler.java"


# instance fields
.field protected CLASS_NAME:Ljava/lang/String;

.field protected CMD_NAME:[B

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "DmCommandHandler"

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CLASS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CMD_NAME:[B

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->context:Landroid/content/Context;

    .line 21
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method protected checkArgu([B[B)Z
    .locals 4
    .param p1, "argu"    # [B
    .param p2, "argv"    # [B

    .line 44
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 45
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_0

    .line 46
    return v0

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public declared-synchronized handleCommand([B)[B
    .locals 1
    .param p1, "argu"    # [B

    monitor-enter p0

    .line 24
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseArgu([B)Ljava/util/List;
    .locals 6
    .param p1, "argu"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 55
    .local v1, "paramCount":I
    const/4 v2, 0x3

    .line 56
    .local v2, "index":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .local v3, "paramCount":I
    if-lez v1, :cond_0

    .end local v1    # "paramCount":I
    array-length v1, p1

    if-ge v2, v1, :cond_0

    .line 57
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    .line 58
    .local v1, "length":I
    add-int/lit8 v4, v2, 0x1

    invoke-static {p1, v4, v1}, Lcom/xiaopeng/factory/utils/DataHelp;->byteSub([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToStr([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v4, v1, 0x1

    add-int/2addr v2, v4

    .line 60
    .end local v1    # "length":I
    nop

    .line 55
    move v1, v3

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseArgu res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-static {v0, v5}, Lcom/xiaopeng/factory/utils/DataHelp;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method

.method protected responseNA([B)[B
    .locals 1
    .param p1, "arg"    # [B

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CMD_NAME:[B

    invoke-static {v0, p1}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNA([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected responseNG([B)[B
    .locals 1
    .param p1, "arg"    # [B

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CMD_NAME:[B

    invoke-static {v0, p1}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected responseOK([B)[B
    .locals 1
    .param p1, "arg"    # [B

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CMD_NAME:[B

    invoke-static {v0, p1}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected responseWithValue([B[B)[B
    .locals 1
    .param p1, "arg"    # [B
    .param p2, "value"    # [B

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->CMD_NAME:[B

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseWithValue([B[B[B)[B

    move-result-object v0

    return-object v0
.end method
