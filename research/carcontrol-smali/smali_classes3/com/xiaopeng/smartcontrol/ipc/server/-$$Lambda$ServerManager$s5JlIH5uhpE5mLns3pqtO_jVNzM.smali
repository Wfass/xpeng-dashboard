.class public final synthetic Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$s5JlIH5uhpE5mLns3pqtO_jVNzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/ipc/server/ipc/IpcServer$IpcCallback;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$s5JlIH5uhpE5mLns3pqtO_jVNzM;->f$0:Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    return-void
.end method


# virtual methods
.method public final onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/-$$Lambda$ServerManager$s5JlIH5uhpE5mLns3pqtO_jVNzM;->f$0:Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/smartcontrol/ipc/server/ServerManager;->lambda$init$0$ServerManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
