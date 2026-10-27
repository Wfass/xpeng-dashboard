.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.source "ConditionWindowPos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_POS:F = 100.0f

.field public static final MIN_POS:F = 0.0f

.field private static final SINGLETON_WINDOW_FRONT_LEFT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_WINDOW_FRONT_RIGHT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_WINDOW_REAR_LEFT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_WINDOW_REAR_RIGHT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "window"

.field public static final WINDOW_DRIVER:I = 0x0

.field public static final WINDOW_FRONT_LEFT:I = 0x0

.field public static final WINDOW_FRONT_RIGHT:I = 0x1

.field public static final WINDOW_REAR_LEFT:I = 0x2

.field public static final WINDOW_REAR_RIGHT:I = 0x3


# instance fields
.field private final window:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_FRONT_LEFT:Landroid/util/Singleton;

    .line 70
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_FRONT_RIGHT:Landroid/util/Singleton;

    .line 82
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$3;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$3;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_REAR_LEFT:Landroid/util/Singleton;

    .line 94
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_REAR_RIGHT:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/String;I)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Float;
    .param p2, "compareOpName"    # Ljava/lang/String;
    .param p3, "window"    # I

    .line 27
    const-string/jumbo v0, "window"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;-><init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 28
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->window:I

    .line 30
    if-ltz p3, :cond_1

    const/4 v0, 0x3

    if-gt p3, v0, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target window pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->window:I

    packed-switch v0, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_REAR_RIGHT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 51
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_REAR_LEFT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 49
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_FRONT_RIGHT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 47
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->SINGLETON_WINDOW_FRONT_LEFT:Landroid/util/Singleton;

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

.method public getWindow()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos;->window:I

    return v0
.end method
