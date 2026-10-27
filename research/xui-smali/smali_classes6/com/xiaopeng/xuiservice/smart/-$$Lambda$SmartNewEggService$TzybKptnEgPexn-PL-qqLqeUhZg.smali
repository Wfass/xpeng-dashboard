.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$TzybKptnEgPexn-PL-qqLqeUhZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$TzybKptnEgPexn-PL-qqLqeUhZg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$TzybKptnEgPexn-PL-qqLqeUhZg;->f$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    check-cast p1, Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$TzybKptnEgPexn-PL-qqLqeUhZg(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Lcom/xiaopeng/xuiservice/egg/Egg;)V

    return-void
.end method
