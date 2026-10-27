.class public abstract Lap;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lap$a;,
        Lap$b;
    }
.end annotation


# instance fields
.field public a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lap$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lam;

.field private d:Lap$a;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lap;->f:I

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lap;->g:Ljava/lang/String;

    .line 39
    iput v0, p0, Lap;->a:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lap;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2

    .line 117
    iget-object v0, p0, Lap;->d:Lap$a;

    invoke-virtual {v0, p1}, Lap$a;->a(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public a(IILjava/lang/String;IFFFF)V
    .locals 10

    move-object v0, p0

    move v1, p4

    .line 177
    iget-object v2, v0, Lap;->b:Ljava/util/ArrayList;

    new-instance v9, Lap$b;

    move-object v3, v9

    move v4, p1

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lap$b;-><init>(IFFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 179
    iput v1, v0, Lap;->a:I

    :cond_0
    move v1, p2

    .line 181
    iput v1, v0, Lap;->f:I

    move-object v1, p3

    .line 182
    iput-object v1, v0, Lap;->g:Ljava/lang/String;

    return-void
.end method

.method public a(IILjava/lang/String;IFFFFLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move v1, p4

    .line 151
    iget-object v2, v0, Lap;->b:Ljava/util/ArrayList;

    new-instance v9, Lap$b;

    move-object v3, v9

    move v4, p1

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lap$b;-><init>(IFFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 153
    iput v1, v0, Lap;->a:I

    :cond_0
    move v1, p2

    .line 155
    iput v1, v0, Lap;->f:I

    move-object/from16 v1, p9

    .line 156
    invoke-virtual {p0, v1}, Lap;->a(Ljava/lang/Object;)V

    move-object v1, p3

    .line 157
    iput-object v1, v0, Lap;->g:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lap;->e:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 83
    iget v0, p0, Lap;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(F)V
    .locals 13

    .line 186
    iget-object v0, p0, Lap;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lap;->b:Ljava/util/ArrayList;

    new-instance v2, Lap$1;

    invoke-direct {v2, p0}, Lap$1;-><init>(Lap;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    new-array v1, v0, [D

    const/4 v2, 0x3

    .line 197
    filled-new-array {v0, v2}, [I

    move-result-object v2

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 198
    new-instance v3, Lap$a;

    iget v4, p0, Lap;->f:I

    iget-object v5, p0, Lap;->g:Ljava/lang/String;

    iget v6, p0, Lap;->a:I

    invoke-direct {v3, v4, v5, v6, v0}, Lap$a;-><init>(ILjava/lang/String;II)V

    iput-object v3, p0, Lap;->d:Lap$a;

    .line 200
    iget-object v0, p0, Lap;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lap$b;

    .line 201
    iget v5, v4, Lap$b;->d:F

    float-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    aput-wide v5, v1, v11

    .line 202
    aget-object v5, v2, v11

    iget v6, v4, Lap$b;->b:F

    float-to-double v6, v6

    aput-wide v6, v5, v3

    .line 203
    aget-object v5, v2, v11

    iget v6, v4, Lap$b;->c:F

    float-to-double v6, v6

    const/4 v12, 0x1

    aput-wide v6, v5, v12

    .line 204
    aget-object v5, v2, v11

    const/4 v6, 0x2

    iget v7, v4, Lap$b;->e:F

    float-to-double v7, v7

    aput-wide v7, v5, v6

    .line 205
    iget-object v5, p0, Lap;->d:Lap$a;

    iget v6, v4, Lap$b;->a:I

    iget v7, v4, Lap$b;->d:F

    iget v8, v4, Lap$b;->c:F

    iget v9, v4, Lap$b;->e:F

    iget v10, v4, Lap$b;->b:F

    move-object v4, v5

    move v5, v11

    invoke-virtual/range {v4 .. v10}, Lap$a;->a(IIFFFF)V

    add-int/2addr v11, v12

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lap;->d:Lap$a;

    invoke-virtual {v0, p1}, Lap$a;->b(F)V

    .line 209
    invoke-static {v3, v1, v2}, Lam;->a(I[D[[D)Lam;

    move-result-object p1

    iput-object p1, p0, Lap;->c:Lam;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 104
    iget-object v0, p0, Lap;->e:Ljava/lang/String;

    .line 105
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lap;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lap$b;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lap$b;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lap$b;->b:F

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
