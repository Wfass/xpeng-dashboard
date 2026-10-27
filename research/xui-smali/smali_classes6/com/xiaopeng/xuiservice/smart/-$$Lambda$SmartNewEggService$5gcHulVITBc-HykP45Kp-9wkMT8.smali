.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

.field private final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$5gcHulVITBc-HykP45Kp-9wkMT8;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Lcom/xiaopeng/xuiservice/egg/Egg;

    check-cast p2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$dump$17(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/io/PrintWriter;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;)V

    return-void
.end method
