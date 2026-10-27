.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionKillProcess.java"


# instance fields
.field private final processName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->processName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private isValidProcessName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 55
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2e

    if-eq v4, v3, :cond_2

    const/16 v4, 0x2f

    if-eq v4, v3, :cond_2

    const/16 v4, 0x5f

    if-eq v4, v3, :cond_2

    const/16 v4, 0x2d

    if-eq v4, v3, :cond_2

    const/16 v4, 0x3a

    if-eq v4, v3, :cond_2

    const/16 v4, 0x5b

    if-eq v4, v3, :cond_2

    const/16 v4, 0x40

    if-eq v4, v3, :cond_2

    const/16 v4, 0x5d

    if-ne v4, v3, :cond_1

    .end local v3    # "c":C
    goto :goto_1

    .line 65
    .restart local v3    # "c":C
    :cond_1
    return v0

    .line 52
    .end local v3    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private kill(Ljava/lang/String;)V
    .locals 3
    .param p1, "pidStr"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->pid(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "pid":I
    if-lez v0, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill -9 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil;->execCmd(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;

    .line 36
    :cond_0
    return-void
.end method

.method private pid(Ljava/lang/String;)I
    .locals 1
    .param p1, "pidStr"    # Ljava/lang/String;

    .line 40
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 44
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onStart()V
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->processName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->isValidProcessName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pidof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil;->execCmd(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;

    move-result-object v0

    .line 21
    .local v0, "cmdResult":Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;->output:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;->output:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "pidStrArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 24
    .local v4, "pidStr":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->kill(Ljava/lang/String;)V

    .line 23
    .end local v4    # "pidStr":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "cmdResult":Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;
    .end local v1    # "pidStrArray":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$FV5dXWCoiNc7-UHdi5kS694cxFo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$FV5dXWCoiNc7-UHdi5kS694cxFo;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{processName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
