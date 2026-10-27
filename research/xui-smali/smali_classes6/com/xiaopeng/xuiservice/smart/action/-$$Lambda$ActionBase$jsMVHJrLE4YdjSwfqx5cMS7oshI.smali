.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$jsMVHJrLE4YdjSwfqx5cMS7oshI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/ActionBase;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/ActionBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$jsMVHJrLE4YdjSwfqx5cMS7oshI;->f$0:Lcom/xiaopeng/xuiservice/smart/action/ActionBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionBase$jsMVHJrLE4YdjSwfqx5cMS7oshI;->f$0:Lcom/xiaopeng/xuiservice/smart/action/ActionBase;

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->lambda$notifyStarted$0(Lcom/xiaopeng/xuiservice/smart/action/ActionBase;Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V

    return-void
.end method
