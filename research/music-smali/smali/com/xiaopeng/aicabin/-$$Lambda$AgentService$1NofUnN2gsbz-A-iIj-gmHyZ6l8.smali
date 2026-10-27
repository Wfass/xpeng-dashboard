.class public final synthetic Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/AgentService;

.field private final synthetic f$1:Lcom/xiaopeng/aicabin/event/EventValue;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/AgentService;Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;->f$0:Lcom/xiaopeng/aicabin/AgentService;

    iput-object p2, p0, Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;->f$1:Lcom/xiaopeng/aicabin/event/EventValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;->f$0:Lcom/xiaopeng/aicabin/AgentService;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;->f$1:Lcom/xiaopeng/aicabin/event/EventValue;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/AgentService;->lambda$dispatchEvent$0$AgentService(Lcom/xiaopeng/aicabin/event/EventValue;)V

    return-void
.end method
