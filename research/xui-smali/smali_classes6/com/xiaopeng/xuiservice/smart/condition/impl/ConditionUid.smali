.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotEq;
.source "ConditionUid.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotEq<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    const-string v0, "uid"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionNotEq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
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

    .line 19
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
