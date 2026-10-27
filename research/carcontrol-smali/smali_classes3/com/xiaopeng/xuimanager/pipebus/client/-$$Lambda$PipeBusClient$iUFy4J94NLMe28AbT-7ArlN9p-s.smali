.class public final synthetic Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;->f$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    iput p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;->f$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    iget v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->lambda$notifyBusStatus$1$PipeBusClient(I)V

    return-void
.end method
