.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionResourceExist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;
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
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "resource_exist"


# instance fields
.field private final resourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/Boolean;
    .param p2, "resourceId"    # Ljava/lang/String;

    .line 27
    const-string v0, "resource_exist"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->resourceId:Ljava/lang/String;

    .line 30
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resourceId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$convert$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;)V
    .locals 4
    .param p1, "resourceExistValue"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 57
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->existsMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->resourceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->update()V

    .line 59
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "value"    # Ljava/lang/Long;

    .line 49
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;

    .line 50
    .local v0, "resourceExistValue":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->existsMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->resourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 51
    .local v1, "exist":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 52
    return-object v1

    .line 55
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceExist$iDxjYZgojfmmOzt5ARQjPvPwypo;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionResourceExist$iDxjYZgojfmmOzt5ARQjPvPwypo;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 61
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->convert(Ljava/lang/Long;)Ljava/lang/Boolean;

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

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;->SINGLETON:Landroid/util/Singleton;

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

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;-><init>()V

    return-object v0
.end method
