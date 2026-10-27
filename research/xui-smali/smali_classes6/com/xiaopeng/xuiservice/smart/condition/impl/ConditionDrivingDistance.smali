.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.source "ConditionDrivingDistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_CLTC:Ljava/lang/String; = "CLTC"

.field public static final MODE_DYNAMIC:Ljava/lang/String; = "DYNAMIC"

.field public static final MODE_NEDC:Ljava/lang/String; = "NEDC"

.field public static final MODE_WLTP:Ljava/lang/String; = "WLTP"

.field private static final SINGLETON_MODE_CLTC:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_MODE_DYNAMIC:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_MODE_NEDC:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_MODE_WLTP:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "drivingDistance"


# instance fields
.field private final mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_CLTC:Landroid/util/Singleton;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_WLTP:Landroid/util/Singleton;

    .line 59
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$3;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$3;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_NEDC:Landroid/util/Singleton;

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$4;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_DYNAMIC:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Float;
    .param p2, "compareOpName"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;

    .line 22
    const-string v0, "drivingDistance"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;-><init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 23
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->mode:Ljava/lang/String;

    .line 25
    const-string v0, "CLTC"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WLTP"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NEDC"

    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DYNAMIC"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid driving distance mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->mode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x568f13e1

    if-eq v1, v2, :cond_3

    const v2, 0x1f9c98

    if-eq v1, v2, :cond_2

    const v2, 0x248076

    if-eq v1, v2, :cond_1

    const v2, 0x28b411

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "WLTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "NEDC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "CLTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "DYNAMIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_DYNAMIC:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 91
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_NEDC:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 89
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_WLTP:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 87
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->SINGLETON_MODE_CLTC:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;->mode:Ljava/lang/String;

    return-object v0
.end method
