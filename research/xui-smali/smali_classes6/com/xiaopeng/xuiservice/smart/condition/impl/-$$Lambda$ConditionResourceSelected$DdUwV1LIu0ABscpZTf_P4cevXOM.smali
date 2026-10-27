.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$DdUwV1LIu0ABscpZTf_P4cevXOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$DdUwV1LIu0ABscpZTf_P4cevXOM;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$DdUwV1LIu0ABscpZTf_P4cevXOM;->f$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;

    check-cast p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->lambda$convert$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result p1

    return p1
.end method
