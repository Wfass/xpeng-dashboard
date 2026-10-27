.class public final synthetic Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$VEUdHlT_17T8wmAOpqRq305FVEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$VEUdHlT_17T8wmAOpqRq305FVEs;->f$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/-$$Lambda$AppClient$BusListener$VEUdHlT_17T8wmAOpqRq305FVEs;->f$0:Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;

    invoke-static {v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient$BusListener;->lambda$onPipeBusEvent$0(Lcom/xiaopeng/smartcontrol/ipc/client/ipc/AppClient;)V

    return-void
.end method
