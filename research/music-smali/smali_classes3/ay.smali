.class public Lay;
.super Ljava/lang/Object;
.source "StopLogicEngine.java"

# interfaces
.implements Lax;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:F

.field private n:F

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lay;->l:Z

    .line 36
    iput-boolean v0, p0, Lay;->o:Z

    return-void
.end method

.method private a(FFFFF)V
    .locals 8

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lay;->o:Z

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    .line 168
    :cond_0
    iput p1, p0, Lay;->a:F

    div-float v1, p1, p3

    mul-float v2, v1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v4, p1, v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-gez v4, :cond_2

    neg-float p5, p1

    div-float/2addr p5, p3

    mul-float/2addr p5, p1

    div-float/2addr p5, v3

    sub-float p5, p2, p5

    mul-float/2addr p5, p3

    float-to-double v1, p5

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    cmpg-float v1, p5, p4

    if-gez v1, :cond_1

    const-string p4, "backward accelerate, decelerate"

    .line 178
    iput-object p4, p0, Lay;->k:Ljava/lang/String;

    .line 179
    iput v6, p0, Lay;->j:I

    .line 180
    iput p1, p0, Lay;->a:F

    .line 181
    iput p5, p0, Lay;->b:F

    .line 182
    iput v0, p0, Lay;->c:F

    sub-float p4, p5, p1

    div-float/2addr p4, p3

    .line 183
    iput p4, p0, Lay;->d:F

    div-float p3, p5, p3

    .line 184
    iput p3, p0, Lay;->e:F

    add-float/2addr p1, p5

    .line 185
    iget p3, p0, Lay;->d:F

    mul-float/2addr p1, p3

    div-float/2addr p1, v3

    iput p1, p0, Lay;->g:F

    .line 186
    iput p2, p0, Lay;->h:F

    .line 187
    iput p2, p0, Lay;->i:F

    return-void

    :cond_1
    const-string p5, "backward accelerate cruse decelerate"

    .line 190
    iput-object p5, p0, Lay;->k:Ljava/lang/String;

    .line 191
    iput v5, p0, Lay;->j:I

    .line 192
    iput p1, p0, Lay;->a:F

    .line 193
    iput p4, p0, Lay;->b:F

    .line 194
    iput p4, p0, Lay;->c:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    .line 196
    iput p5, p0, Lay;->d:F

    div-float p3, p4, p3

    .line 197
    iput p3, p0, Lay;->f:F

    add-float/2addr p1, p4

    .line 198
    iget p3, p0, Lay;->d:F

    mul-float/2addr p1, p3

    div-float/2addr p1, v3

    .line 199
    iget p3, p0, Lay;->f:F

    mul-float/2addr p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    .line 200
    iput p5, p0, Lay;->e:F

    .line 201
    iput p1, p0, Lay;->g:F

    sub-float p1, p2, p3

    .line 202
    iput p1, p0, Lay;->h:F

    .line 203
    iput p2, p0, Lay;->i:F

    return-void

    :cond_2
    cmpl-float v4, v2, p2

    if-ltz v4, :cond_3

    const-string p3, "hard stop"

    .line 209
    iput-object p3, p0, Lay;->k:Ljava/lang/String;

    mul-float/2addr v3, p2

    div-float/2addr v3, p1

    const/4 p3, 0x1

    .line 211
    iput p3, p0, Lay;->j:I

    .line 212
    iput p1, p0, Lay;->a:F

    .line 213
    iput v0, p0, Lay;->b:F

    .line 214
    iput p2, p0, Lay;->g:F

    .line 215
    iput v3, p0, Lay;->d:F

    return-void

    :cond_3
    sub-float v2, p2, v2

    div-float v4, v2, p1

    add-float v7, v4, v1

    cmpg-float p5, v7, p5

    if-gez p5, :cond_4

    const-string p3, "cruse decelerate"

    .line 222
    iput-object p3, p0, Lay;->k:Ljava/lang/String;

    .line 223
    iput v6, p0, Lay;->j:I

    .line 224
    iput p1, p0, Lay;->a:F

    .line 225
    iput p1, p0, Lay;->b:F

    .line 226
    iput v0, p0, Lay;->c:F

    .line 227
    iput v2, p0, Lay;->g:F

    .line 228
    iput p2, p0, Lay;->h:F

    .line 229
    iput v4, p0, Lay;->d:F

    .line 230
    iput v1, p0, Lay;->e:F

    return-void

    :cond_4
    mul-float p5, p3, p2

    mul-float v1, p1, p1

    div-float/2addr v1, v3

    add-float/2addr p5, v1

    float-to-double v1, p5

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    sub-float v1, p5, p1

    div-float/2addr v1, p3

    .line 235
    iput v1, p0, Lay;->d:F

    div-float v2, p5, p3

    .line 236
    iput v2, p0, Lay;->e:F

    cmpg-float v4, p5, p4

    if-gez v4, :cond_5

    const-string p3, "accelerate decelerate"

    .line 238
    iput-object p3, p0, Lay;->k:Ljava/lang/String;

    .line 239
    iput v6, p0, Lay;->j:I

    .line 240
    iput p1, p0, Lay;->a:F

    .line 241
    iput p5, p0, Lay;->b:F

    .line 242
    iput v0, p0, Lay;->c:F

    .line 243
    iput v1, p0, Lay;->d:F

    .line 244
    iput v2, p0, Lay;->e:F

    add-float/2addr p1, p5

    .line 245
    iget p3, p0, Lay;->d:F

    mul-float/2addr p1, p3

    div-float/2addr p1, v3

    iput p1, p0, Lay;->g:F

    .line 246
    iput p2, p0, Lay;->h:F

    return-void

    :cond_5
    const-string p5, "accelerate cruse decelerate"

    .line 250
    iput-object p5, p0, Lay;->k:Ljava/lang/String;

    .line 252
    iput v5, p0, Lay;->j:I

    .line 253
    iput p1, p0, Lay;->a:F

    .line 254
    iput p4, p0, Lay;->b:F

    .line 255
    iput p4, p0, Lay;->c:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    .line 257
    iput p5, p0, Lay;->d:F

    div-float p3, p4, p3

    .line 258
    iput p3, p0, Lay;->f:F

    add-float/2addr p1, p4

    .line 259
    iget p3, p0, Lay;->d:F

    mul-float/2addr p1, p3

    div-float/2addr p1, v3

    .line 260
    iget p3, p0, Lay;->f:F

    mul-float/2addr p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    .line 262
    iput p5, p0, Lay;->e:F

    .line 263
    iput p1, p0, Lay;->g:F

    sub-float p1, p2, p3

    .line 264
    iput p1, p0, Lay;->h:F

    .line 265
    iput p2, p0, Lay;->i:F

    return-void
.end method

.method private c(F)F
    .locals 5

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lay;->o:Z

    .line 112
    iget v0, p0, Lay;->d:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    .line 113
    iget v1, p0, Lay;->a:F

    mul-float v3, v1, p1

    iget v4, p0, Lay;->b:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    return v3

    .line 115
    :cond_0
    iget v1, p0, Lay;->j:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 116
    iget p1, p0, Lay;->g:F

    return p1

    :cond_1
    sub-float/2addr p1, v0

    .line 119
    iget v0, p0, Lay;->e:F

    cmpg-float v4, p1, v0

    if-gez v4, :cond_2

    .line 121
    iget v1, p0, Lay;->g:F

    iget v3, p0, Lay;->b:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    iget v4, p0, Lay;->c:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    mul-float/2addr v0, v2

    div-float/2addr v4, v0

    add-float/2addr v1, v4

    return v1

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 124
    iget p1, p0, Lay;->h:F

    return p1

    :cond_3
    sub-float/2addr p1, v0

    .line 127
    iget v0, p0, Lay;->f:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    .line 129
    iget v1, p0, Lay;->h:F

    iget v3, p0, Lay;->c:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v0, v2

    div-float/2addr v3, v0

    sub-float/2addr v1, v3

    return v1

    .line 131
    :cond_4
    iput-boolean v3, p0, Lay;->o:Z

    .line 132
    iget p1, p0, Lay;->i:F

    return p1
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 154
    iget-boolean v0, p0, Lay;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lay;->n:F

    invoke-virtual {p0, v0}, Lay;->b(F)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lay;->n:F

    invoke-virtual {p0, v0}, Lay;->b(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public a(F)F
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Lay;->c(F)F

    move-result v0

    .line 149
    iput p1, p0, Lay;->n:F

    .line 150
    iget-boolean p1, p0, Lay;->l:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lay;->m:F

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lay;->m:F

    add-float/2addr p1, v0

    :goto_0
    return p1
.end method

.method public a(FFFFFF)V
    .locals 6

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lay;->o:Z

    .line 138
    iput p1, p0, Lay;->m:F

    cmpl-float v2, p1, p2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 139
    :cond_0
    iput-boolean v1, p0, Lay;->l:Z

    .line 140
    iget-boolean v1, p0, Lay;->l:Z

    if-eqz v1, :cond_1

    neg-float v1, p3

    sub-float v2, p1, p2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p4

    .line 141
    invoke-direct/range {v0 .. v5}, Lay;->a(FFFFF)V

    goto :goto_0

    :cond_1
    sub-float v2, p2, p1

    move-object v0, p0

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    .line 143
    invoke-direct/range {v0 .. v5}, Lay;->a(FFFFF)V

    :goto_0
    return-void
.end method

.method public b(F)F
    .locals 3

    .line 88
    iget v0, p0, Lay;->d:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 89
    iget v1, p0, Lay;->a:F

    iget v2, p0, Lay;->b:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    .line 91
    :cond_0
    iget v1, p0, Lay;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sub-float/2addr p1, v0

    .line 95
    iget v0, p0, Lay;->e:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    .line 97
    iget v1, p0, Lay;->b:F

    iget v2, p0, Lay;->c:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 100
    iget p1, p0, Lay;->h:F

    return p1

    :cond_3
    sub-float/2addr p1, v0

    .line 103
    iget v0, p0, Lay;->f:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    .line 105
    iget v1, p0, Lay;->c:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    return v1

    .line 107
    :cond_4
    iget p1, p0, Lay;->i:F

    return p1
.end method

.method public b()Z
    .locals 3

    .line 159
    invoke-virtual {p0}, Lay;->a()F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lay;->i:F

    iget v2, p0, Lay;->n:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
