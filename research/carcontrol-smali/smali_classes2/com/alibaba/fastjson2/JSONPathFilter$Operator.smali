.class final enum Lcom/alibaba/fastjson2/JSONPathFilter$Operator;
.super Ljava/lang/Enum;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/JSONPathFilter$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum AND:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum ENDS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum GE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum GT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum LE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum LT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum NE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum NOT_BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum NOT_CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum NOT_RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum OR:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum REG_MATCH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

.field public static final enum STARTS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/JSONPathFilter$Operator;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 33
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->GT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->GE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->AND:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->OR:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->REG_MATCH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->STARTS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ENDS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "EQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 35
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "NE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 36
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "GT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->GT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 37
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "GE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->GE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 38
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "LT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LT:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 39
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "LE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 40
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "LIKE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 41
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "NOT_LIKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 42
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "RLIKE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 43
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "NOT_RLIKE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 44
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "IN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 45
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "NOT_IN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 46
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "BETWEEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "NOT_BETWEEN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 48
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "AND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->AND:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 49
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "OR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->OR:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 50
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "REG_MATCH"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->REG_MATCH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 51
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "STARTS_WITH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->STARTS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 52
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "ENDS_WITH"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ENDS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 53
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "CONTAINS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 54
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    const-string v1, "NOT_CONTAINS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 33
    invoke-static {}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->$values()[Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->$VALUES:[Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPathFilter$Operator;
    .locals 1

    .line 33
    const-class v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/JSONPathFilter$Operator;
    .locals 1

    .line 33
    sget-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->$VALUES:[Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Lcom/alibaba/fastjson2/JSONPathFilter$1;->$SwitchMap$com$alibaba$fastjson2$JSONPathFilter$Operator:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "not contains"

    return-object v0

    :pswitch_1
    const-string v0, "contains"

    return-object v0

    :pswitch_2
    const-string v0, "ends with"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "starts with"

    return-object v0

    :pswitch_4
    const-string v0, "or"

    return-object v0

    :pswitch_5
    const-string v0, "and"

    return-object v0

    :pswitch_6
    const-string v0, "not between"

    return-object v0

    :pswitch_7
    const-string v0, "between"

    return-object v0

    :pswitch_8
    const-string v0, "not rlike"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "rlike"

    return-object v0

    :pswitch_a
    const-string v0, "not like"

    return-object v0

    :pswitch_b
    const-string v0, "like"

    return-object v0

    :pswitch_c
    const-string v0, "<="

    return-object v0

    :pswitch_d
    const-string v0, "<"

    return-object v0

    :pswitch_e
    const-string v0, ">="

    return-object v0

    :pswitch_f
    const-string v0, ">"

    return-object v0

    :pswitch_10
    const-string v0, "!="

    return-object v0

    :pswitch_11
    const-string v0, "=="

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
