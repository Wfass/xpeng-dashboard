.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.source "ConditionAppVersionName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "app_version_name"


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/String;
    .param p2, "compareOpName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 17
    const-string v0, "app_version_name"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;-><init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;->packageName:Ljava/lang/String;

    .line 20
    if-eqz p3, :cond_0

    .line 23
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName$AppVersionNameValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionAppVersionName;->packageName:Ljava/lang/String;

    return-object v0
.end method
