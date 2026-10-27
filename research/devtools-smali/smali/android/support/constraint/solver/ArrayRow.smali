.class public Landroid/support/constraint/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroid/support/constraint/solver/SolverVariable;

.field final variables:Landroid/support/constraint/solver/ArrayLinkedVariables;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 28
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 31
    new-instance v0, Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;-><init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 32
    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 284
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 285
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 286
    return-object p0
.end method

.method addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 156
    return-object p0
.end method

.method createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 5

    .line 238
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 242
    iget-object p3, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p3, p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 243
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 244
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 245
    return-object p0

    .line 247
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p4, v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    .line 254
    iget-object p4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p4, p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 255
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 256
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 257
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 258
    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    .line 259
    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 261
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_3

    .line 263
    iget-object p4, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p4, p1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 264
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 265
    int-to-float p1, p3

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 266
    :cond_3
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_4

    .line 268
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 269
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 270
    int-to-float p1, p7

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 272
    :cond_4
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    sub-float v3, v0, p4

    mul-float v4, v0, v3

    invoke-virtual {v1, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 273
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float v1, v2, v3

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 274
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float/2addr v2, p4

    invoke-virtual {p1, p5, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 275
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    mul-float/2addr v0, p4

    invoke-virtual {p1, p6, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 276
    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    .line 277
    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 280
    :cond_6
    :goto_0
    return-object p0
.end method

.method createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 0

    .line 116
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 117
    int-to-float p2, p2

    iput p2, p1, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 118
    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 119
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 120
    return-object p0
.end method

.method createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 292
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 293
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 294
    return-object p0
.end method

.method public createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 312
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 313
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 314
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float p2, p5

    invoke-virtual {p1, p4, p2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 315
    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 3

    .line 211
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    div-float/2addr p1, p2

    .line 222
    div-float/2addr p3, p2

    .line 223
    div-float/2addr p1, p3

    .line 227
    neg-int p2, p5

    sub-int/2addr p2, p7

    int-to-float p2, p2

    int-to-float p3, p9

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    int-to-float p3, p11

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 228
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p4, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 229
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p6, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 230
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p2, p10, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 231
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    neg-float p1, p1

    invoke-virtual {p2, p8, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    neg-int p1, p5

    sub-int/2addr p1, p7

    add-int/2addr p1, p9

    add-int/2addr p1, p11

    int-to-float p1, p1

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 216
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p4, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 217
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p6, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 218
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p10, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 219
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p8, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 233
    :goto_1
    return-object p0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 1

    .line 124
    if-gez p2, :cond_0

    .line 125
    const/4 v0, -0x1

    mul-int/2addr v0, p2

    int-to-float p2, v0

    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 126
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0

    .line 128
    :cond_0
    int-to-float p2, p2

    iput p2, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 129
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 131
    :goto_0
    return-object p0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 135
    nop

    .line 136
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 137
    nop

    .line 138
    if-gez p3, :cond_0

    .line 139
    const/4 v0, -0x1

    mul-int/2addr p3, v0

    .line 140
    const/4 v0, 0x1

    .line 142
    :cond_0
    int-to-float p3, p3

    iput p3, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 144
    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 146
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, p3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 149
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 151
    :goto_0
    return-object p0
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 162
    nop

    .line 163
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 164
    nop

    .line 165
    if-gez p4, :cond_0

    .line 166
    const/4 v0, -0x1

    mul-int/2addr p4, v0

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_0
    int-to-float p4, p4

    iput p4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 171
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 173
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 174
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 177
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 178
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 180
    :goto_0
    return-object p0
.end method

.method public createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 2

    .line 185
    nop

    .line 186
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 187
    nop

    .line 188
    if-gez p4, :cond_0

    .line 189
    const/4 v0, -0x1

    mul-int/2addr p4, v0

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_0
    int-to-float p4, p4

    iput p4, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 194
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 196
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 197
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 200
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 201
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 203
    :goto_0
    return-object p0
.end method

.method ensurePositiveConstant()V
    .locals 2

    .line 337
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 339
    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 340
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->invert()V

    .line 342
    :cond_0
    return-void
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 1

    .line 39
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->hasAtLeastOnePositiveVariable()Z

    move-result v0

    return v0
.end method

.method hasKeyVariable()Z
    .locals 2

    .line 43
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->containsKey(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result p1

    return p1
.end method

.method pickRowVariable()V
    .locals 1

    .line 345
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v0, v0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_1

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 352
    :cond_1
    return-void
.end method

.method pivot(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 3

    .line 355
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v2, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 361
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v0

    mul-float/2addr v0, v1

    .line 362
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 363
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    .line 364
    return-void

    .line 366
    :cond_1
    iget p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    div-float/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 367
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->divideByAmount(F)V

    .line 368
    return-void
.end method

.method public reset()V
    .locals 1

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 106
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->clear()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 109
    return-void
.end method

.method sizeInBytes()I
    .locals 2

    .line 319
    nop

    .line 320
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 321
    nop

    .line 323
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 324
    add-int/2addr v0, v1

    .line 326
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 9

    .line 55
    const-string v0, ""

    .line 56
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    nop

    .line 63
    iget v1, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    nop

    .line 67
    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 68
    :goto_2
    if-ge v3, v5, :cond_7

    .line 69
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 70
    if-nez v6, :cond_2

    .line 71
    goto/16 :goto_5

    .line 73
    :cond_2
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v7

    .line 74
    invoke-virtual {v6}, Landroid/support/constraint/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    const/high16 v8, -0x40800000    # -1.0f

    if-nez v1, :cond_3

    .line 76
    cmpg-float v1, v7, v2

    if-gez v1, :cond_5

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    mul-float/2addr v7, v8

    goto :goto_3

    .line 81
    :cond_3
    cmpl-float v1, v7, v2

    if-lez v1, :cond_4

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 84
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    mul-float/2addr v7, v8

    .line 88
    :cond_5
    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_6

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 91
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_4
    nop

    .line 68
    move v1, v4

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 95
    :cond_7
    if-nez v1, :cond_8

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateClientEquations()V
    .locals 1

    .line 35
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V

    .line 36
    return-void
.end method

.method updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z
    .locals 1

    .line 331
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v0, p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 332
    const/4 p1, 0x1

    return p1
.end method
