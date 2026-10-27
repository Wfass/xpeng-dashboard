.class Lcom/xiaopeng/xuimanager/condition/ConditionManager$ConditionManagerHolder;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/condition/ConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionManagerHolder"
.end annotation


# static fields
.field private static instance:Lcom/xiaopeng/xuimanager/condition/ConditionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;-><init>(Lcom/xiaopeng/xuimanager/condition/ConditionManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager$ConditionManagerHolder;->instance:Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuimanager/condition/ConditionManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ConditionManager$ConditionManagerHolder;->instance:Lcom/xiaopeng/xuimanager/condition/ConditionManager;

    return-object v0
.end method
