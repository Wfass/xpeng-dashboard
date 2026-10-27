.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private final TOKEN_EXPIRE_TIME_IN_MS:J

.field private final mAccessKeyId:Ljava/lang/String;

.field private final mAccessKeySecret:Ljava/lang/String;

.field private final mActiveTimeInMs:J

.field private final mSecurityToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/32 v0, 0x2dc6c0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->TOKEN_EXPIRE_TIME_IN_MS:J

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mSecurityToken:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mAccessKeySecret:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mAccessKeyId:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mActiveTimeInMs:J

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/32 v0, 0x2dc6c0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->TOKEN_EXPIRE_TIME_IN_MS:J

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mSecurityToken:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mAccessKeySecret:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mAccessKeyId:Ljava/lang/String;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mActiveTimeInMs:J

    .line 27
    return-void
.end method


# virtual methods
.method public accessKeyId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mAccessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public acessKeySecret()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method public securityToken()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public stillFresh()Z
    .locals 4

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 43
    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mActiveTimeInMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->mActiveTimeInMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2dc6c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
