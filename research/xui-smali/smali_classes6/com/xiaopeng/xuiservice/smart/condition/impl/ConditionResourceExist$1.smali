.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$1;
.super Landroid/util/Singleton;
.source "ConditionResourceExist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;

    move-result-object v0

    return-object v0
.end method
