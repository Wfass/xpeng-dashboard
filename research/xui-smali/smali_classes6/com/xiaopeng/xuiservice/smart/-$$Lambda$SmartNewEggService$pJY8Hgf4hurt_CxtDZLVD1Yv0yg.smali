.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/ConditionChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/egg/Rule;

.field private final synthetic f$3:Lcom/xiaopeng/xuiservice/smart/condition/Condition;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$2:Lcom/xiaopeng/xuiservice/egg/Rule;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$3:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    return-void
.end method


# virtual methods
.method public final onConditionChange(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$1:Lcom/xiaopeng/xuiservice/egg/Egg;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$2:Lcom/xiaopeng/xuiservice/egg/Rule;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$pJY8Hgf4hurt_CxtDZLVD1Yv0yg;->f$3:Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$startRule$9(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Lcom/xiaopeng/xuiservice/smart/condition/Condition;Z)V

    return-void
.end method
