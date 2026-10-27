.class public Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;
.super Ljava/lang/Object;
.source "ClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callbackHandler:Landroid/os/Handler;

.field private sticky:Z

.field private waitTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->sticky:Z

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->waitTimeout:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->callbackHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->sticky:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->waitTimeout:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->callbackHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;
    .locals 2

    .line 78
    new-instance v0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;-><init>(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$1;)V

    return-object v0
.end method

.method public setCallbackHandler(Landroid/os/Handler;)Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->callbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setSticky(Z)Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sticky"
        }
    .end annotation

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->sticky:Z

    return-object p0
.end method

.method public setWaitTimeout(I)Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waitTimeout"
        }
    .end annotation

    .line 63
    iput p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->waitTimeout:I

    return-object p0
.end method
