.class public Lai;
.super Lad;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai$a;
    }
.end annotation


# instance fields
.field g:Lai$a;

.field h:Lae;

.field private i:I

.field private j:[Laj;

.field private k:[Laj;

.field private l:I


# direct methods
.method public constructor <init>(Lae;)V
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lad;-><init>(Lae;)V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Lai;->i:I

    .line 30
    iget v0, p0, Lai;->i:I

    new-array v1, v0, [Laj;

    iput-object v1, p0, Lai;->j:[Laj;

    .line 31
    new-array v0, v0, [Laj;

    iput-object v0, p0, Lai;->k:[Laj;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lai;->l:I

    .line 33
    new-instance v0, Lai$a;

    invoke-direct {v0, p0, p0}, Lai$a;-><init>(Lai;Lai;)V

    iput-object v0, p0, Lai;->g:Lai$a;

    .line 155
    iput-object p1, p0, Lai;->h:Lae;

    return-void
.end method

.method static synthetic a(Lai;Laj;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lai;->f(Laj;)V

    return-void
.end method

.method private final e(Laj;)V
    .locals 5

    .line 197
    iget v0, p0, Lai;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lai;->j:[Laj;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 198
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laj;

    iput-object v0, p0, Lai;->j:[Laj;

    .line 199
    iget-object v0, p0, Lai;->j:[Laj;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laj;

    iput-object v0, p0, Lai;->k:[Laj;

    .line 201
    :cond_0
    iget-object v0, p0, Lai;->j:[Laj;

    iget v2, p0, Lai;->l:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 202
    iput v2, p0, Lai;->l:I

    .line 204
    iget v2, p0, Lai;->l:I

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Laj;->b:I

    iget v2, p1, Laj;->b:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    move v2, v0

    .line 205
    :goto_0
    iget v3, p0, Lai;->l:I

    if-ge v2, v3, :cond_1

    .line 206
    iget-object v3, p0, Lai;->k:[Laj;

    iget-object v4, p0, Lai;->j:[Laj;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v2, p0, Lai;->k:[Laj;

    new-instance v4, Lai$1;

    invoke-direct {v4, p0}, Lai$1;-><init>(Lai;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 214
    :goto_1
    iget v2, p0, Lai;->l:I

    if-ge v0, v2, :cond_2

    .line 215
    iget-object v2, p0, Lai;->j:[Laj;

    iget-object v3, p0, Lai;->k:[Laj;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_2
    iput-boolean v1, p1, Laj;->a:Z

    .line 220
    invoke-virtual {p1, p0}, Laj;->a(Lad;)V

    return-void
.end method

.method private final f(Laj;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 224
    :goto_0
    iget v2, p0, Lai;->l:I

    if-ge v1, v2, :cond_2

    .line 225
    iget-object v2, p0, Lai;->j:[Laj;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 226
    :goto_1
    iget v2, p0, Lai;->l:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 227
    iget-object v2, p0, Lai;->j:[Laj;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 229
    iput v2, p0, Lai;->l:I

    .line 230
    iput-boolean v0, p1, Laj;->a:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Laf;[Z)Laj;
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    move v1, p1

    .line 168
    :goto_0
    iget v2, p0, Lai;->l:I

    if-ge v0, v2, :cond_3

    .line 169
    iget-object v2, p0, Lai;->j:[Laj;

    aget-object v2, v2, v0

    .line 170
    iget v3, v2, Laj;->b:I

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 173
    :cond_0
    iget-object v3, p0, Lai;->g:Lai$a;

    invoke-virtual {v3, v2}, Lai$a;->a(Laj;)V

    if-ne v1, p1, :cond_1

    .line 175
    iget-object v2, p0, Lai;->g:Lai$a;

    invoke-virtual {v2}, Lai$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 178
    :cond_1
    iget-object v2, p0, Lai;->g:Lai$a;

    iget-object v3, p0, Lai;->j:[Laj;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lai$a;->b(Laj;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_4
    iget-object p1, p0, Lai;->j:[Laj;

    aget-object p1, p1, v1

    return-object p1
.end method

.method public a(Laf;Lad;Z)V
    .locals 5

    .line 238
    iget-object p1, p2, Lad;->a:Laj;

    if-nez p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object p3, p2, Lad;->e:Lad$a;

    .line 244
    invoke-interface {p3}, Lad$a;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 246
    invoke-interface {p3, v1}, Lad$a;->a(I)Laj;

    move-result-object v2

    .line 247
    invoke-interface {p3, v1}, Lad$a;->b(I)F

    move-result v3

    .line 248
    iget-object v4, p0, Lai;->g:Lai$a;

    invoke-virtual {v4, v2}, Lai$a;->a(Laj;)V

    .line 249
    iget-object v4, p0, Lai;->g:Lai$a;

    invoke-virtual {v4, p1, v3}, Lai$a;->a(Laj;F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    invoke-direct {p0, v2}, Lai;->e(Laj;)V

    .line 252
    :cond_1
    iget v2, p0, Lai;->b:F

    iget v4, p2, Lad;->b:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Lai;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0, p1}, Lai;->f(Laj;)V

    return-void
.end method

.method public d(Laj;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lai;->g:Lai$a;

    invoke-virtual {v0, p1}, Lai$a;->a(Laj;)V

    .line 191
    iget-object v0, p0, Lai;->g:Lai$a;

    invoke-virtual {v0}, Lai$a;->b()V

    .line 192
    iget-object v0, p1, Laj;->h:[F

    iget v1, p1, Laj;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 193
    invoke-direct {p0, p1}, Lai;->e(Laj;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 160
    iget v0, p0, Lai;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lai;->l:I

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lai;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lai;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    :goto_0
    iget v2, p0, Lai;->l:I

    if-ge v1, v2, :cond_0

    .line 262
    iget-object v2, p0, Lai;->j:[Laj;

    aget-object v2, v2, v1

    .line 263
    iget-object v3, p0, Lai;->g:Lai$a;

    invoke-virtual {v3, v2}, Lai$a;->a(Laj;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lai;->g:Lai$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
