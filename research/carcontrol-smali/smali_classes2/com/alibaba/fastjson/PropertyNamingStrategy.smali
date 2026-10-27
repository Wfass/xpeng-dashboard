.class public final enum Lcom/alibaba/fastjson/PropertyNamingStrategy;
.super Ljava/lang/Enum;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum CamelCase1x:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum LowerCaseWithDashes:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum LowerCaseWithDots:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum LowerCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithDashes:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithDots:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum UpperCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum UpperCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 7
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithDashes:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithDots:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->LowerCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->LowerCaseWithDashes:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->LowerCaseWithDots:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "CamelCase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "CamelCase1x"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 19
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "PascalCase"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "SnakeCase"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "UpperCase"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 29
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithSpaces"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 37
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithUnderScores"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 45
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithDashes"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithDashes:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "UpperCamelCaseWithDots"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCamelCaseWithDots:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 63
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "KebabCase"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 73
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "UpperCaseWithUnderScores"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->UpperCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 83
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "LowerCaseWithUnderScores"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->LowerCaseWithUnderScores:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 94
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "LowerCaseWithDashes"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->LowerCaseWithDashes:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "LowerCaseWithDots"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->LowerCaseWithDots:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 106
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "NoChange"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 107
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "NeverUseThisValueExceptDefaultValue"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 7
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    .line 7
    const-class v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    .line 7
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 110
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x41

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return-object p1

    .line 154
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_1

    if-gt v0, v1, :cond_1

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 157
    aget-char v0, p1, v4

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    aput-char v0, p1, v4

    .line 158
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    return-object p1

    .line 144
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 147
    aget-char v0, p1, v4

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    aput-char v0, p1, v4

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_3
    return-object p1

    .line 128
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_7

    .line 130
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_6

    if-gt v3, v1, :cond_6

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    if-lez v4, :cond_5

    const/16 v5, 0x2d

    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_b

    .line 114
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_a

    if-gt v3, v1, :cond_a

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    if-lez v4, :cond_9

    const/16 v5, 0x5f

    .line 118
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 122
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 125
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
