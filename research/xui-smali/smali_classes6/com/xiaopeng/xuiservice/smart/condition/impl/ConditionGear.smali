.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionIn;
.source "ConditionGear.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionIn<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON_GEAR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "gear"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;->SINGLETON_GEAR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "targetValue"    # [Ljava/lang/String;

    .line 15
    const-string v0, "gear"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionIn;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 10
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;->gearToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gearToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "gear"    # I

    .line 41
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 49
    :pswitch_0
    const-string v0, "p"

    return-object v0

    .line 47
    :pswitch_1
    const-string v0, "r"

    return-object v0

    .line 45
    :pswitch_2
    const-string v0, "n"

    return-object v0

    .line 43
    :pswitch_3
    const-string v0, "d"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 37
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;->SINGLETON_GEAR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
