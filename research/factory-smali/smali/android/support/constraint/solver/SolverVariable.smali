.class public Landroid/support/constraint/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x6

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I

.field private static uniqueId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field public id:I

.field mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroid/support/constraint/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 2
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 42
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 47
    const/4 v1, 0x6

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 50
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 51
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 105
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 42
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 47
    const/4 v1, 0x6

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 50
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 51
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 100
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 102
    return-void
.end method

.method private static getUniqueName(Landroid/support/constraint/solver/SolverVariable$Type;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 80
    sget v0, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    .line 81
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$1;->$SwitchMap$android$support$constraint$solver$SolverVariable$Type:[I

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 89
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 2
    .param p1, "equation"    # Landroid/support/constraint/solver/ArrayRow;

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 133
    return-void

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 137
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 139
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v0, v1

    .line 140
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 141
    return-void
.end method

.method clearStrengths()V
    .locals 3

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 6
    .param p1, "equation"    # Landroid/support/constraint/solver/ArrayRow;

    .line 149
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v1, v2, :cond_2

    .line 150
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 151
    nop

    .local v0, "j":I
    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "j":I
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 155
    return-void

    .line 149
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 162
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 164
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 165
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 167
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 168
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 0
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .line 181
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 185
    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "representation":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    const-string v0, ""

    .line 196
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0
.end method
