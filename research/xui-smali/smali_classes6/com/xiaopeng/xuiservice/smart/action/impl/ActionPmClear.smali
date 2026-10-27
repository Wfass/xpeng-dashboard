.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionPmClear.java"


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;->packageName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private static isInvalidPackageName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 27
    return v0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 31
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    .line 32
    return v0

    .line 29
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;->isInvalidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm clear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/innerutils/CmdUtil;->execCmd(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/CmdUtil$CmdResult;

    .line 22
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$3yFJvtuTWwVZUPmF23Mdrm3qpwg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$3yFJvtuTWwVZUPmF23Mdrm3qpwg;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
