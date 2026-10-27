.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/egg/Egg;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$um3qm_9RQyLz8KlU2d30m_RBqv8;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$installEgg$1(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method
