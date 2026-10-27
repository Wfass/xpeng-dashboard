.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/egg/Egg;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/egg/Rule;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;->f$0:Lcom/xiaopeng/xuiservice/egg/Egg;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;->f$1:Lcom/xiaopeng/xuiservice/egg/Rule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;->f$0:Lcom/xiaopeng/xuiservice/egg/Egg;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$KvsWCN3Ry9Q6d0qmIGMeKesdP18;->f$1:Lcom/xiaopeng/xuiservice/egg/Rule;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$recordRun$13(Lcom/xiaopeng/xuiservice/egg/Egg;Lcom/xiaopeng/xuiservice/egg/Rule;)V

    return-void
.end method
