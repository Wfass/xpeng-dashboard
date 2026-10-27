.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
.super Ljava/lang/Enum;
.source "ArsWorkState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum FOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum FOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum INITING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum STOP:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum UNFOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum UNFOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

.field public static final enum ZERO_POS_LRN:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->STOP:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    .line 8
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v3, "FOLDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->FOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    .line 9
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v5, "FOLD_DURG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->FOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    .line 10
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v7, "UNFOLDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->UNFOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    .line 11
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v9, "UNFOLD_DURG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->UNFOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    .line 12
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v11, "ZERO_POS_LRN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->ZERO_POS_LRN:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    .line 13
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const-string v13, "INITING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->INITING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 5
    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "intValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->intValue:I

    return-void
.end method

.method public static final from(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->INITING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 38
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->ZERO_POS_LRN:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 36
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->UNFOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 34
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->UNFOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 32
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->FOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 30
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->FOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 28
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->STOP:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workState"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 62
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->STOP:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 60
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->INITING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 58
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->ZERO_POS_LRN:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 56
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->UNFOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 54
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->UNFOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 52
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->FOLD_DURG:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 50
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->FOLDING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    .line 48
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->STOP:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;->intValue:I

    return v0
.end method
