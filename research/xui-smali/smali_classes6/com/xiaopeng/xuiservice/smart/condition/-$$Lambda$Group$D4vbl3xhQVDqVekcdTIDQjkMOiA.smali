.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$D4vbl3xhQVDqVekcdTIDQjkMOiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/env/Env;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/env/Env;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$D4vbl3xhQVDqVekcdTIDQjkMOiA;->f$0:Lcom/xiaopeng/xuiservice/smart/env/Env;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$Group$D4vbl3xhQVDqVekcdTIDQjkMOiA;->f$0:Lcom/xiaopeng/xuiservice/smart/env/Env;

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/Group;->lambda$collectEnv$1(Lcom/xiaopeng/xuiservice/smart/env/Env;Lcom/xiaopeng/xuiservice/smart/condition/Condition;)V

    return-void
.end method
