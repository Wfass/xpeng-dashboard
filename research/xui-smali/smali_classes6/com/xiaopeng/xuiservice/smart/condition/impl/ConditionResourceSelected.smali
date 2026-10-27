.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionResourceSelected.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "resource_selected"


# instance fields
.field private final resourceId:Ljava/lang/String;

.field private final resourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;I)V
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/Boolean;
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .line 30
    const-string v0, "resource_selected"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceId:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceType:I

    .line 33
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resourceId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$convert$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z
    .locals 2
    .param p1, "ri"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 69
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$convert$1(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;)V
    .locals 5
    .param p1, "resourceSelectedValue"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getSelectedResourceList(I)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "selectedList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->selectedMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 65
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v1, :cond_0

    .line 66
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 67
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->selectedMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceType:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$DdUwV1LIu0ABscpZTf_P4cevXOM;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$DdUwV1LIu0ABscpZTf_P4cevXOM;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->update()V

    .line 71
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "value"    # Ljava/lang/Long;

    .line 52
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;

    .line 53
    .local v0, "resourceSelectedValue":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->selectedMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 54
    .local v1, "oneTypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "exist":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 56
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/Boolean;

    .line 58
    :cond_0
    if-eqz v2, :cond_1

    .line 59
    return-object v2

    .line 62
    :cond_1
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$oNyQTsmND1V0PZ5jxm7qvhm0I58;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceSelected$oNyQTsmND1V0PZ5jxm7qvhm0I58;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;)V

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 73
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->convert(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method

.method public operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;-><init>()V

    return-object v0
.end method
