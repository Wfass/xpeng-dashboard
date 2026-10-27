.class public Lcom/xiaopeng/factory/dmcommand/DmParser;
.super Ljava/lang/Object;
.source "DmParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DmParser"


# instance fields
.field private final mDmHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    .line 26
    return-void
.end method

.method private runCmd([BLcom/xiaopeng/factory/dmcommand/DmResponseWriter;)Z
    .locals 10
    .param p1, "cmd"    # [B
    .param p2, "writer"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 57
    const-string v0, "DmParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runCmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "resData":[B
    const/4 v1, 0x0

    .line 60
    .local v1, "argu":[B
    const/4 v2, 0x0

    .line 62
    .local v2, "commandName":[B
    const/4 v3, 0x0

    move v4, v3

    .line 65
    .local v4, "result":Z
    if-eqz p1, :cond_3

    :try_start_0
    array-length v5, p1

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    const/4 v5, 0x2

    new-array v6, v5, [B

    aget-byte v5, p1, v5

    aput-byte v5, v6, v3

    const/4 v5, 0x1

    const/4 v7, 0x3

    aget-byte v7, p1, v7

    aput-byte v7, v6, v5

    move-object v2, v6

    .line 70
    array-length v5, p1

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    invoke-static {p1, v6, v5}, Lcom/xiaopeng/factory/utils/DataHelp;->byteSub([BII)[B

    move-result-object v5

    move-object v1, v5

    .line 73
    invoke-static {v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "key":Ljava/lang/String;
    const-string v6, "DmParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runCmd commandName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v6, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;

    .line 76
    .local v6, "handler":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {v6, v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->handleCommand([B)[B

    move-result-object v7

    move-object v0, v7

    .line 78
    const-string v7, "DmParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v2, v1}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNA([B[B)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 83
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p2, v0}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 85
    const/4 v4, 0x1

    .line 90
    .end local v6    # "handler":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
    :cond_2
    nop

    .line 89
    move-object v3, v5

    .line 92
    .end local v5    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    return v4

    .line 87
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const-string v5, "DmParser"

    const-string v6, "runCmd CMD format not correct"

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return v3

    .line 87
    :goto_2
    nop

    .line 88
    .local v5, "e":Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v5}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 89
    return v3
.end method


# virtual methods
.method public process([BLcom/xiaopeng/factory/dmcommand/DmResponseWriter;)Z
    .locals 4
    .param p1, "cmd"    # [B
    .param p2, "writer"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "result":Z
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/factory/dmcommand/DmParser;->runCmd([BLcom/xiaopeng/factory/dmcommand/DmResponseWriter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "DmParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process done successfully. cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_0
    return v0
.end method

.method public registerDmComandHandler(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 29
    const-string v0, "DmParser"

    const-string v1, "Register DM command handler for user binary"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;

    invoke-direct {v2, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmFactoryMode;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$VersName;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmVersName;-><init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$TestResult;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;

    invoke-direct {v2, p1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmTestResult;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$HwParam;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmHwParam;-><init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmSecurityTest;-><init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$NaviTest;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmNavi;-><init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;->CMD_NAME:[B

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmIndivTest;-><init>(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public unregisterDmComandHandler()V
    .locals 2

    .line 40
    const-string v0, "DmParser"

    const-string v1, "unregister DM command handler"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;

    .line 42
    .local v1, "handler":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
    invoke-virtual {v1}, Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;->destroy()V

    .line 43
    nop

    .line 44
    .end local v1    # "handler":Lcom/xiaopeng/factory/dmcommand/dmhandler/DmCommandHandler;
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/dmcommand/DmParser;->mDmHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    return-void
.end method
