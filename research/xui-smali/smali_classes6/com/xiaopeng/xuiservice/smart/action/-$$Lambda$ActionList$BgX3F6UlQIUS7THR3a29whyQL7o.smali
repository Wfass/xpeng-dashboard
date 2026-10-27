.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionList$BgX3F6UlQIUS7THR3a29whyQL7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/ActionList;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/ActionList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionList$BgX3F6UlQIUS7THR3a29whyQL7o;->f$0:Lcom/xiaopeng/xuiservice/smart/action/ActionList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$ActionList$BgX3F6UlQIUS7THR3a29whyQL7o;->f$0:Lcom/xiaopeng/xuiservice/smart/action/ActionList;

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/action/ActionList;->lambda$new$0(Lcom/xiaopeng/xuiservice/smart/action/ActionList;Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    return-void
.end method
