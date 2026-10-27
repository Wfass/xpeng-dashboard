.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;
.source "ConditionBeltStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final BELT_6:I = 0x6

.field public static final BELT_7:I = 0x7

.field public static final BELT_8:I = 0x8

.field public static final BELT_DRIVER:I = 0x1

.field public static final BELT_FRONT_RIGHT:I = 0x2

.field public static final BELT_SENCOND_LEFT:I = 0x3

.field public static final BELT_SENCOND_MIDDLE:I = 0x4

.field public static final BELT_SENCOND_RIGHT:I = 0x5

.field public static final NO_WARNING:I = 0x0

.field private static final SINGLETON_BackLeftBeltStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_BackMiddleBeltStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_BackRightBeltStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_DriverBeltStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_PsnBeltStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "belt"

.field public static final WARNING:I = 0x1


# instance fields
.field private final belt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_DriverBeltStatusValue:Landroid/util/Singleton;

    .line 58
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_PsnBeltStatusValue:Landroid/util/Singleton;

    .line 70
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$3;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$3;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_BackLeftBeltStatusValue:Landroid/util/Singleton;

    .line 82
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$4;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_BackMiddleBeltStatusValue:Landroid/util/Singleton;

    .line 94
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$5;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$5;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_BackRightBeltStatusValue:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;I)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Integer;
    .param p2, "belt"    # I

    .line 30
    const-string v0, "belt"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->belt:I

    .line 33
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v1, 0x5

    if-gt p2, v1, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target belt status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid belt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 108
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->belt:I

    packed-switch v0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_BackRightBeltStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 116
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_BackMiddleBeltStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 114
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_BackLeftBeltStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 112
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_PsnBeltStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 110
    :pswitch_4
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->SINGLETON_DriverBeltStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBelt()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus;->belt:I

    return v0
.end method
