.class public final synthetic Lcom/xiaopeng/smartcontrol/ipc/server/ipc/-$$Lambda$AppServer$c1_4NOx0-OOS6QpMlhs9zKpmmag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/-$$Lambda$AppServer$c1_4NOx0-OOS6QpMlhs9zKpmmag;->f$0:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/-$$Lambda$AppServer$c1_4NOx0-OOS6QpMlhs9zKpmmag;->f$0:Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;

    check-cast p1, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->lambda$notifyStickySend$0(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;)V

    return-void
.end method
