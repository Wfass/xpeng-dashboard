.class public final synthetic Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$8M90hJE7bcGG1dZF6l7poszo1bA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$8M90hJE7bcGG1dZF6l7poszo1bA;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$8M90hJE7bcGG1dZF6l7poszo1bA;->f$0:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->lambda$notifyBusStatus$0(ILjava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V

    return-void
.end method
