.class public Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;
    }
.end annotation


# instance fields
.field private sendAsync:Z

.field private sticky:Z

.field private stickyExpireInterval:J


# direct methods
.method private constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->access$000(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->stickyExpireInterval:J

    .line 15
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->access$100(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->sticky:Z

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->access$200(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->sendAsync:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;-><init>(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getStickyExpireInterval()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->stickyExpireInterval:J

    return-wide v0
.end method

.method public isSticky()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->sticky:Z

    return v0
.end method

.method public sendAsync()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;->sendAsync:Z

    return v0
.end method
