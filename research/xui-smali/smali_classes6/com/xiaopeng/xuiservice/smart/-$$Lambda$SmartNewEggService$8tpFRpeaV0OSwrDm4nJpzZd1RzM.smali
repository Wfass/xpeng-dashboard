.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/egg/Rule;

.field private final synthetic f$3:Lcom/xiaopeng/xuiservice/smart/condition/Condition;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$2:Lcom/xiaopeng/xuiservice/egg/Rule;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$3:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$2:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8tpFRpeaV0OSwrDm4nJpzZd1RzM;->f$3:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$startRule$8(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    return-void
.end method
