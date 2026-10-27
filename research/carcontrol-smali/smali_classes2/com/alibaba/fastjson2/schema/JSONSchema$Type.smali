.class public final enum Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
.super Ljava/lang/Enum;
.source "JSONSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/schema/JSONSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/schema/JSONSchema$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum AllOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Any:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum AnyOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Array:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Boolean:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Const:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Enum:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Integer:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Null:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Number:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum Object:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum OneOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum String:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

.field public static final enum UnresolvedReference:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 857
    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Null:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Boolean:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Object:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Array:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Number:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->String:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Integer:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Enum:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Const:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->OneOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->AllOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->AnyOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Any:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->UnresolvedReference:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 858
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Null:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 859
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Boolean"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Boolean:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 860
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Object"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Object:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 861
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Array"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Array:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 862
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Number"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Number:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 863
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "String"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->String:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 866
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Integer"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Integer:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 867
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Enum"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Enum:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 868
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Const"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Const:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 869
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "OneOf"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->OneOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 870
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "AllOf"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->AllOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 871
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "AnyOf"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->AnyOf:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 872
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "Any"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Any:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 873
    new-instance v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    const-string v1, "UnresolvedReference"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->UnresolvedReference:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    .line 857
    invoke-static {}, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->$values()[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->$VALUES:[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 857
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 880
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "integer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "Boolean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "array"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "boolean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "Array"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "Null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string v2, "Integer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "string"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v2, "object"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string v2, "number"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v2, "String"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v2, "Object"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_d
    const-string v2, "Number"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 895
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Boolean:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    .line 901
    :pswitch_1
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Array:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    .line 883
    :pswitch_2
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Null:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    .line 889
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Integer:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    .line 886
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->String:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    .line 898
    :pswitch_5
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Object:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    .line 892
    :pswitch_6
    sget-object p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Number:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_d
        -0x739a70a1 -> :sswitch_c
        -0x6bc5b3cf -> :sswitch_b
        -0x3da724b7 -> :sswitch_a
        -0x3cff5cc1 -> :sswitch_9
        -0x352a9fef -> :sswitch_8
        -0x2811e6e2 -> :sswitch_7
        0x2539a7 -> :sswitch_6
        0x33c587 -> :sswitch_5
        0x3c98239 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x58c7259 -> :sswitch_2
        0x67140408 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 857
    const-class v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 857
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->$VALUES:[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method
