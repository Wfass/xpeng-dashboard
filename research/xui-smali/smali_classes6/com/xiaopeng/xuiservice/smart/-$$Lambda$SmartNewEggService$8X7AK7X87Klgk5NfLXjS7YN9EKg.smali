.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;->f$2:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    return-void
.end method


# virtual methods
.method public final onConditionChange(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$8X7AK7X87Klgk5NfLXjS7YN9EKg;->f$2:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$installEgg$4(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V

    return-void
.end method
