.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;
.source "ConditionSRIconClick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "sr_icon_click"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetValue"    # Ljava/lang/String;

    .line 15
    const-string v0, "sr_icon_click"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;->setOnlyNotifyWhenMatchChanged(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
