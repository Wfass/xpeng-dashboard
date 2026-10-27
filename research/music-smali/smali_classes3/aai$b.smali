.class public final enum Laai$b;
.super Ljava/lang/Enum;
.source "JSONSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laai$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laai$b;

.field public static final enum AllOf:Laai$b;

.field public static final enum Any:Laai$b;

.field public static final enum AnyOf:Laai$b;

.field public static final enum Array:Laai$b;

.field public static final enum Boolean:Laai$b;

.field public static final enum Const:Laai$b;

.field public static final enum Enum:Laai$b;

.field public static final enum Integer:Laai$b;

.field public static final enum Null:Laai$b;

.field public static final enum Number:Laai$b;

.field public static final enum Object:Laai$b;

.field public static final enum OneOf:Laai$b;

.field public static final enum String:Laai$b;

.field public static final enum UnresolvedReference:Laai$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 858
    new-instance v0, Laai$b;

    const-string v1, "Null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Null:Laai$b;

    .line 859
    new-instance v0, Laai$b;

    const-string v1, "Boolean"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Boolean:Laai$b;

    .line 860
    new-instance v0, Laai$b;

    const-string v1, "Object"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Object:Laai$b;

    .line 861
    new-instance v0, Laai$b;

    const-string v1, "Array"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Array:Laai$b;

    .line 862
    new-instance v0, Laai$b;

    const-string v1, "Number"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Number:Laai$b;

    .line 863
    new-instance v0, Laai$b;

    const-string v1, "String"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->String:Laai$b;

    .line 866
    new-instance v0, Laai$b;

    const-string v1, "Integer"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Integer:Laai$b;

    .line 867
    new-instance v0, Laai$b;

    const-string v1, "Enum"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Enum:Laai$b;

    .line 868
    new-instance v0, Laai$b;

    const-string v1, "Const"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Const:Laai$b;

    .line 869
    new-instance v0, Laai$b;

    const-string v1, "OneOf"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->OneOf:Laai$b;

    .line 870
    new-instance v0, Laai$b;

    const-string v1, "AllOf"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->AllOf:Laai$b;

    .line 871
    new-instance v0, Laai$b;

    const-string v1, "AnyOf"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->AnyOf:Laai$b;

    .line 872
    new-instance v0, Laai$b;

    const-string v1, "Any"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->Any:Laai$b;

    .line 873
    new-instance v0, Laai$b;

    const-string v1, "UnresolvedReference"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Laai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laai$b;->UnresolvedReference:Laai$b;

    .line 857
    invoke-static {}, Laai$b;->a()[Laai$b;

    move-result-object v0

    sput-object v0, Laai$b;->$VALUES:[Laai$b;

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

.method public static a(Ljava/lang/String;)Laai$b;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 880
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "integer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "Boolean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "array"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "boolean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "Array"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_5
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "Null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_7
    const-string v2, "Integer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v2, "string"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v2, "object"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_a
    const-string v2, "number"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_b
    const-string v2, "String"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v2, "Object"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_d
    const-string v2, "Number"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x6

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 901
    :pswitch_0
    sget-object p0, Laai$b;->Array:Laai$b;

    return-object p0

    .line 898
    :pswitch_1
    sget-object p0, Laai$b;->Object:Laai$b;

    return-object p0

    .line 895
    :pswitch_2
    sget-object p0, Laai$b;->Boolean:Laai$b;

    return-object p0

    .line 892
    :pswitch_3
    sget-object p0, Laai$b;->Number:Laai$b;

    return-object p0

    .line 889
    :pswitch_4
    sget-object p0, Laai$b;->Integer:Laai$b;

    return-object p0

    .line 886
    :pswitch_5
    sget-object p0, Laai$b;->String:Laai$b;

    return-object p0

    .line 883
    :pswitch_6
    sget-object p0, Laai$b;->Null:Laai$b;

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
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a()[Laai$b;
    .locals 3

    const/16 v0, 0xe

    .line 857
    new-array v0, v0, [Laai$b;

    sget-object v1, Laai$b;->Null:Laai$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Boolean:Laai$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Object:Laai$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Array:Laai$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Number:Laai$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->String:Laai$b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Integer:Laai$b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Enum:Laai$b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Const:Laai$b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->OneOf:Laai$b;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->AllOf:Laai$b;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->AnyOf:Laai$b;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->Any:Laai$b;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Laai$b;->UnresolvedReference:Laai$b;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Laai$b;
    .locals 1

    .line 857
    const-class v0, Laai$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laai$b;

    return-object p0
.end method

.method public static values()[Laai$b;
    .locals 1

    .line 857
    sget-object v0, Laai$b;->$VALUES:[Laai$b;

    invoke-virtual {v0}, [Laai$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laai$b;

    return-object v0
.end method
