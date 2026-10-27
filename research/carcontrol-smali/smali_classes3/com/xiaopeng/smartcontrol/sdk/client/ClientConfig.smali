.class public Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;
.super Ljava/lang/Object;
.source "ClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;
    }
.end annotation


# instance fields
.field private callbackHandler:Landroid/os/Handler;

.field private sticky:Z

.field private waitTimeout:I


# direct methods
.method private constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->access$000(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->sticky:Z

    .line 13
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->access$100(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->waitTimeout:I

    .line 14
    invoke-static {p1}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;->access$200(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->callbackHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;-><init>(Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWaitTimeout()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->waitTimeout:I

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/ClientConfig;->sticky:Z

    return v0
.end method
