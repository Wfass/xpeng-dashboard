.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionDoorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOOR_DRIVER:I = 0x0

.field public static final DOOR_FRONT_LEFT:I = 0x0

.field public static final DOOR_FRONT_RIGHT:I = 0x1

.field public static final DOOR_REAR_LEFT:I = 0x2

.field public static final DOOR_REAR_RIGHT:I = 0x3

.field private static final SINGLETON_DoorsState:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "[",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_OPEN:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "door"


# instance fields
.field private final door:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->SINGLETON_DoorsState:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;I)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Integer;
    .param p2, "door"    # I

    .line 29
    const-string v0, "door"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->door:I

    .line 32
    if-ltz p2, :cond_2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target door state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid door: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected convert([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "value"    # [Ljava/lang/Integer;

    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->getDoor()I

    move-result v0

    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->convert([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->SINGLETON_DoorsState:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method

.method public getDoor()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDoorState;->door:I

    return v0
.end method

.method public operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;-><init>()V

    return-object v0
.end method
