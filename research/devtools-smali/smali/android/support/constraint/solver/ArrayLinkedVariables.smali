.class public Landroid/support/constraint/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 47
    const/16 v1, 0x8

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 52
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 55
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 58
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 80
    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 100
    iput-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 101
    iput-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    .line 107
    return-void
.end method


# virtual methods
.method public final add(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 9

    .line 212
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 217
    iput v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 218
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v1

    .line 219
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput p1, p2, v0

    .line 220
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v3, p1, p2

    .line 221
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 222
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_1

    .line 224
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 226
    :cond_1
    return-void

    .line 228
    :cond_2
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 229
    nop

    .line 230
    nop

    .line 231
    move v5, v2

    move v6, v3

    :goto_0
    if-eq v1, v3, :cond_8

    iget v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v7, :cond_8

    .line 232
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    .line 233
    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_6

    .line 234
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, p1, v1

    add-float/2addr v2, p2

    aput v2, p1, v1

    .line 236
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_5

    .line 237
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, p1, :cond_3

    .line 238
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p1, p1, v1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    .line 240
    :cond_3
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p2, p2, v1

    aput p2, p1, v6

    .line 242
    :goto_1
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object p1, p1, v7

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 243
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_4

    .line 245
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 247
    :cond_4
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 249
    :cond_5
    return-void

    .line 251
    :cond_6
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    iget v8, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v7, v8, :cond_7

    .line 252
    nop

    .line 254
    move v6, v1

    :cond_7
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    .line 255
    goto :goto_0

    .line 260
    :cond_8
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v4

    .line 261
    iget-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_a

    .line 264
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v0, v0, v1

    if-ne v0, v3, :cond_9

    .line 265
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_2

    .line 267
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    .line 270
    :cond_a
    :goto_2
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 271
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-ge v1, v5, :cond_c

    .line 273
    move v1, v2

    :goto_3
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v5, v5

    if-ge v1, v5, :cond_c

    .line 274
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    if-ne v5, v3, :cond_b

    .line 275
    nop

    .line 276
    nop

    .line 282
    move v0, v1

    goto :goto_4

    .line 273
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 282
    :cond_c
    :goto_4
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 283
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    .line 284
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 285
    iput-boolean v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 286
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 287
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 288
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 289
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 293
    :cond_d
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput p1, v1, v0

    .line 294
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p1, v0

    .line 295
    if-eq v6, v3, :cond_e

    .line 296
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p2, p2, v6

    aput p2, p1, v0

    .line 297
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, p1, v6

    goto :goto_5

    .line 299
    :cond_e
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, p1, v0

    .line 300
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 302
    :goto_5
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 303
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_f

    .line 305
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 307
    :cond_f
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_10

    .line 308
    iput-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 309
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p1, p1

    sub-int/2addr p1, v4

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 311
    :cond_10
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 357
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 359
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 360
    return-void
.end method

.method final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 6

    .line 369
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 370
    return v2

    .line 372
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 373
    nop

    .line 374
    move v3, v2

    :goto_0
    if-eq v0, v1, :cond_2

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_2

    .line 375
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 376
    const/4 p1, 0x1

    return p1

    .line 378
    :cond_1
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_2
    return v2
.end method

.method public display()V
    .locals 5

    .line 662
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 663
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 665
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 666
    if-nez v2, :cond_0

    .line 667
    goto :goto_1

    .line 669
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method divideByAmount(F)V
    .locals 4

    .line 419
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 420
    nop

    .line 421
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 422
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 423
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 4

    .line 642
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 643
    nop

    .line 644
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 645
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    .line 646
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    .line 648
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 6

    .line 578
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_3

    .line 580
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 581
    const/4 v1, 0x0

    .line 582
    const/4 v2, 0x0

    .line 583
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_2

    .line 584
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 588
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 589
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v5, v3, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_1

    .line 590
    :cond_0
    nop

    .line 593
    move-object v2, v3

    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_2
    return-object v2

    .line 597
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .locals 3

    .line 607
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 608
    nop

    .line 609
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 610
    if-ne v1, p1, :cond_0

    .line 611
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    .line 613
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final getVariableValue(I)F
    .locals 3

    .line 625
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 626
    nop

    .line 627
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1

    .line 628
    if-ne v1, p1, :cond_0

    .line 629
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    .line 631
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 5

    .line 389
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 390
    nop

    .line 391
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_1

    .line 392
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 393
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_0
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    return v1
.end method

.method invert()V
    .locals 5

    .line 404
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 405
    nop

    .line 406
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 407
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 408
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 9

    .line 448
    nop

    .line 449
    nop

    .line 450
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 451
    nop

    .line 452
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_6

    .line 453
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v0

    .line 454
    const v5, 0x3a83126f    # 0.001f

    .line 455
    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-gez v7, :cond_0

    .line 456
    const v5, -0x457ced91    # -0.001f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 457
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v6, v4, v0

    .line 458
    nop

    .line 466
    :goto_1
    move v4, v6

    goto :goto_2

    .line 461
    :cond_0
    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 462
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v6, v4, v0

    .line 463
    goto :goto_1

    .line 466
    :cond_1
    :goto_2
    cmpl-float v5, v4, v6

    if-eqz v5, :cond_5

    .line 467
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v0

    aget-object v5, v5, v7

    .line 468
    iget-object v7, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v8, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v7, v8, :cond_3

    .line 469
    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 470
    return-object v5

    .line 471
    :cond_2
    if-nez v1, :cond_5

    .line 472
    nop

    .line 478
    move-object v1, v5

    goto :goto_3

    .line 474
    :cond_3
    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    if-eqz v3, :cond_4

    iget v4, v5, Landroid/support/constraint/solver/SolverVariable;->strength:I

    iget v6, v3, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v4, v6, :cond_5

    .line 475
    :cond_4
    nop

    .line 478
    move-object v3, v5

    :cond_5
    :goto_3
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v2, v2, 0x1

    .line 479
    goto :goto_0

    .line 480
    :cond_6
    if-eqz v1, :cond_7

    .line 481
    return-object v1

    .line 483
    :cond_7
    return-object v3
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 8

    .line 116
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 118
    return-void

    .line 121
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 122
    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 123
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, v0, v1

    .line 124
    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput p1, p2, v0

    .line 125
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v2, p1, p2

    .line 126
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 127
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_1

    .line 129
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 131
    :cond_1
    return-void

    .line 133
    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 134
    nop

    .line 135
    nop

    .line 136
    move v4, v1

    move v5, v2

    :goto_0
    if-eq v0, v2, :cond_5

    iget v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v6, :cond_5

    .line 137
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_3

    .line 138
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p1, v0

    .line 139
    return-void

    .line 141
    :cond_3
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v0

    iget v7, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_4

    .line 142
    nop

    .line 144
    move v5, v0

    :cond_4
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v3

    .line 151
    iget-boolean v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v4, :cond_7

    .line 154
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v0, v0, v4

    if-ne v0, v2, :cond_6

    .line 155
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_1

    .line 157
    :cond_6
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    .line 160
    :cond_7
    :goto_1
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    if-lt v0, v4, :cond_9

    .line 161
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v4, v6, :cond_9

    .line 163
    move v4, v1

    :goto_2
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v6

    if-ge v4, v6, :cond_9

    .line 164
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v4

    if-ne v6, v2, :cond_8

    .line 165
    nop

    .line 166
    nop

    .line 172
    move v0, v4

    goto :goto_3

    .line 163
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 172
    :cond_9
    :goto_3
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    if-lt v0, v4, :cond_a

    .line 173
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    .line 174
    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 175
    iput-boolean v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 176
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 177
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 178
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 179
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 183
    :cond_a
    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget p1, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput p1, v1, v0

    .line 184
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, p1, v0

    .line 185
    if-eq v5, v2, :cond_b

    .line 186
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p2, p2, v5

    aput p2, p1, v0

    .line 187
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aput v0, p1, v5

    goto :goto_4

    .line 189
    :cond_b
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput p2, p1, v0

    .line 190
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 192
    :goto_4
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 193
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez p1, :cond_c

    .line 195
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 197
    :cond_c
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    iget-object p2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length p2, p2

    if-lt p1, p2, :cond_d

    .line 198
    iput-boolean v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 200
    :cond_d
    return-void
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 8

    .line 320
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-ne v0, p1, :cond_0

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 323
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 324
    return v1

    .line 326
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 327
    nop

    .line 328
    const/4 v3, 0x0

    .line 329
    move v4, v2

    :goto_0
    if-eq v0, v2, :cond_5

    iget v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v5, :cond_5

    .line 330
    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 331
    iget v6, p1, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_4

    .line 332
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, p1, :cond_2

    .line 333
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget p1, p1, v0

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_1

    .line 335
    :cond_2
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    aput v1, p1, v4

    .line 337
    :goto_1
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object p1, p1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    aget-object p1, p1, v5

    iget-object v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 338
    iget p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 339
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, p1, v0

    .line 340
    iget-boolean p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz p1, :cond_3

    .line 342
    iput v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 344
    :cond_3
    iget-object p1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget p1, p1, v0

    return p1

    .line 346
    :cond_4
    nop

    .line 347
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    .line 348
    nop

    .line 329
    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    .line 349
    :cond_5
    return v1
.end method

.method sizeInBytes()I
    .locals 2

    .line 655
    nop

    .line 656
    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    mul-int/2addr v1, v0

    const/4 v0, 0x0

    add-int/2addr v0, v1

    .line 657
    add-int/lit8 v0, v0, 0x24

    .line 658
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 681
    const-string v0, ""

    .line 682
    iget v1, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 683
    nop

    .line 684
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_0

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_0
    return-object v0
.end method

.method updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 4

    .line 434
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 435
    nop

    .line 436
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/SolverVariable;->addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 438
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V
    .locals 8

    .line 496
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 497
    nop

    .line 498
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_2

    .line 499
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget-object v5, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 500
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    .line 501
    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 503
    iget-object v2, p2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 504
    iget v4, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 505
    nop

    .line 506
    move v5, v1

    :goto_2
    if-eq v4, v3, :cond_0

    iget v6, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_0

    .line 507
    iget-object v6, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 509
    iget-object v7, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v7, v7, v4

    .line 510
    mul-float/2addr v7, v0

    invoke-virtual {p0, v6, v7}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 511
    iget-object v6, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    .line 512
    goto :goto_2

    .line 513
    :cond_0
    iget v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v3, p2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 514
    iget-object v0, p2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 519
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 520
    nop

    .line 521
    goto :goto_0

    .line 523
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    :cond_2
    return-void
.end method

.method updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .locals 9

    .line 537
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 538
    nop

    .line 539
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v4, :cond_2

    .line 540
    iget-object v4, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 541
    iget v5, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    if-eq v5, v3, :cond_1

    .line 542
    iget-object v2, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v0, v2, v0

    .line 543
    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    .line 545
    iget v2, v4, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v2, p2, v2

    .line 546
    iget-boolean v4, v2, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_0

    .line 547
    iget-object v4, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 548
    iget v5, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 549
    nop

    .line 550
    move v6, v1

    :goto_2
    if-eq v5, v3, :cond_0

    iget v7, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_0

    .line 551
    iget-object v7, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v7, v7, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v5

    aget-object v7, v7, v8

    .line 553
    iget-object v8, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v8, v5

    .line 554
    mul-float/2addr v8, v0

    invoke-virtual {p0, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 555
    iget-object v7, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v7, v5

    .line 556
    add-int/lit8 v6, v6, 0x1

    .line 557
    goto :goto_2

    .line 559
    :cond_0
    iget v3, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iget v4, v2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 560
    iget-object v0, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 565
    iget v0, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 566
    nop

    .line 567
    goto :goto_0

    .line 569
    :cond_1
    iget-object v3, p0, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    .line 570
    goto :goto_1

    .line 571
    :cond_2
    return-void
.end method
