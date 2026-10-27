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

.field public static final enum KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "CamelCase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "PascalCase"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "SnakeCase"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "KebabCase"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "NoChange"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v6

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    .line 6
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x41

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 69
    return-object p1

    .line 58
    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 59
    .local v0, "ch":C
    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 61
    .local v1, "chars":[C
    aget-char v2, v1, v3

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v1, v3

    .line 62
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 65
    .end local v1    # "chars":[C
    :cond_0
    return-object p1

    .line 48
    .end local v0    # "ch":C
    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 49
    .restart local v0    # "ch":C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 51
    .restart local v1    # "chars":[C
    aget-char v2, v1, v3

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    aput-char v2, v1, v3

    .line 52
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 55
    .end local v1    # "chars":[C
    :cond_1
    return-object p1

    .line 32
    .end local v0    # "ch":C
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "buf":Ljava/lang/StringBuilder;
    nop

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 35
    .local v4, "ch":C
    if-lt v4, v2, :cond_3

    if-gt v4, v1, :cond_3

    .line 36
    add-int/lit8 v5, v4, 0x20

    int-to-char v5, v5

    .line 37
    .local v5, "ch_ucase":C
    if-lez v3, :cond_2

    .line 38
    const/16 v6, 0x2d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .end local v5    # "ch_ucase":C
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .end local v4    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 16
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    nop

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 19
    .restart local v4    # "ch":C
    if-lt v4, v2, :cond_6

    if-gt v4, v1, :cond_6

    .line 20
    add-int/lit8 v5, v4, 0x20

    int-to-char v5, v5

    .line 21
    .restart local v5    # "ch_ucase":C
    if-lez v3, :cond_5

    .line 22
    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .end local v5    # "ch_ucase":C
    goto :goto_3

    .line 26
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .end local v4    # "ch":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
