.class public Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private sendAsync:Z

.field private sticky:Z

.field private stickyExpireInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 33
    iput-wide v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->stickyExpireInterval:J

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->sticky:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->sendAsync:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->stickyExpireInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->sticky:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->sendAsync:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;
    .locals 2

    .line 53
    new-instance v0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig;-><init>(Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$1;)V

    return-object v0
.end method

.method public setSendAsync(Z)Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sendAsync"
        }
    .end annotation

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->sendAsync:Z

    return-object p0
.end method

.method public setSticky(Z)Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sticky"
        }
    .end annotation

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->sticky:Z

    return-object p0
.end method

.method public setStickyExpireInterval(J)Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stickyExpireInterval"
        }
    .end annotation

    .line 38
    iput-wide p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/ServerConfig$Builder;->stickyExpireInterval:J

    return-object p0
.end method
