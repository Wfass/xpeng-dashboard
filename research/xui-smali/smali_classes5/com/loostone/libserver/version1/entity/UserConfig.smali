.class public Lcom/loostone/libserver/version1/entity/UserConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m_Instance:Lcom/loostone/libserver/version1/entity/UserConfig;


# instance fields
.field private AGENT:Ljava/lang/String;

.field private HEAD_IMAGE:Ljava/lang/String;

.field private NICK_NAME:Ljava/lang/String;

.field private TOKEN:Ljava/lang/String;

.field private TOKEN_ID:Ljava/lang/String;

.field private USER_ID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN_ID:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->USER_ID:Ljava/lang/String;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->AGENT:Ljava/lang/String;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->HEAD_IMAGE:Ljava/lang/String;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->NICK_NAME:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/loostone/libserver/version1/entity/UserConfig;
    .locals 2

    const-class v0, Lcom/loostone/libserver/version1/entity/UserConfig;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libserver/version1/entity/UserConfig;->m_Instance:Lcom/loostone/libserver/version1/entity/UserConfig;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/loostone/libserver/version1/entity/UserConfig;

    invoke-direct {v1}, Lcom/loostone/libserver/version1/entity/UserConfig;-><init>()V

    sput-object v1, Lcom/loostone/libserver/version1/entity/UserConfig;->m_Instance:Lcom/loostone/libserver/version1/entity/UserConfig;

    .line 4
    :cond_0
    sget-object v1, Lcom/loostone/libserver/version1/entity/UserConfig;->m_Instance:Lcom/loostone/libserver/version1/entity/UserConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getHeadImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->HEAD_IMAGE:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->NICK_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->USER_ID:Ljava/lang/String;

    return-object v0
.end method

.method public isAgent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->AGENT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLogin()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logout()V
    .locals 1

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->USER_ID:Ljava/lang/String;

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN_ID:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->AGENT:Ljava/lang/String;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->HEAD_IMAGE:Ljava/lang/String;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->NICK_NAME:Ljava/lang/String;

    return-void
.end method

.method public setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->USER_ID:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN_ID:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->TOKEN:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->AGENT:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->HEAD_IMAGE:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->NICK_NAME:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/UserConfig;->NICK_NAME:Ljava/lang/String;

    return-void
.end method
