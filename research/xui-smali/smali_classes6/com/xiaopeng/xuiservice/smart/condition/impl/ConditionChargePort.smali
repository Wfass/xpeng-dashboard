.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;
.source "ConditionChargePort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final PORT_LEFT:I = 0x1

.field public static final PORT_RIGHT:I = 0x2

.field private static final SINGLETON_LeftChargePortStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_RightChargePortStatusValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final STATUS_CLOSED:I = 0x2

.field public static final STATUS_FAULT:I = 0x3

.field public static final STATUS_MIDDLE:I = 0x1

.field public static final STATUS_OPEN:I = 0x0

.field public static final TYPE:Ljava/lang/String; = "chargePort"


# instance fields
.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->SINGLETON_LeftChargePortStatusValue:Landroid/util/Singleton;

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->SINGLETON_RightChargePortStatusValue:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;I)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Integer;
    .param p2, "port"    # I

    .line 25
    const-string v0, "chargePort"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->port:I

    .line 28
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 35
    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target charge port status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->port:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->SINGLETON_LeftChargePortStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 65
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->port:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 66
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionChargePort;->SINGLETON_RightChargePortStatusValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
