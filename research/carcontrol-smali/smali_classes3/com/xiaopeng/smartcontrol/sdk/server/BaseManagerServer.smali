.class public abstract Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.super Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;
.source "BaseManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mImpl:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/base/AbsBaseManager;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "method",
            "param"
        }
    .end annotation
.end method

.method protected final sendIpc(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "data"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->get()Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSignalImpl(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;->mImpl:Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;->TAG:Ljava/lang/String;

    const-string v0, "setSignalImpl null"

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
