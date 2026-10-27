.class public abstract Lck;
.super Laz;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lck$e;,
        Lck$b;,
        Lck$m;,
        Lck$l;,
        Lck$k;,
        Lck$j;,
        Lck$i;,
        Lck$d;,
        Lck$h;,
        Lck$g;,
        Lck$f;,
        Lck$a;,
        Lck$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Laz;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)Lck;
    .locals 1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :pswitch_0
    new-instance p0, Lck$e;

    invoke-direct {p0}, Lck$e;-><init>()V

    goto :goto_2

    .line 106
    :pswitch_1
    new-instance p0, Lck$m;

    invoke-direct {p0}, Lck$m;-><init>()V

    goto :goto_2

    .line 103
    :pswitch_2
    new-instance p0, Lck$l;

    invoke-direct {p0}, Lck$l;-><init>()V

    goto :goto_2

    .line 100
    :pswitch_3
    new-instance p0, Lck$k;

    invoke-direct {p0}, Lck$k;-><init>()V

    goto :goto_2

    .line 97
    :pswitch_4
    new-instance p0, Lck$j;

    invoke-direct {p0}, Lck$j;-><init>()V

    goto :goto_2

    .line 94
    :pswitch_5
    new-instance p0, Lck$i;

    invoke-direct {p0}, Lck$i;-><init>()V

    goto :goto_2

    .line 91
    :pswitch_6
    new-instance p0, Lck$d;

    invoke-direct {p0}, Lck$d;-><init>()V

    goto :goto_2

    .line 88
    :pswitch_7
    new-instance p0, Lck$h;

    invoke-direct {p0}, Lck$h;-><init>()V

    goto :goto_2

    .line 85
    :pswitch_8
    new-instance p0, Lck$g;

    invoke-direct {p0}, Lck$g;-><init>()V

    goto :goto_2

    .line 82
    :pswitch_9
    new-instance p0, Lck$f;

    invoke-direct {p0}, Lck$f;-><init>()V

    goto :goto_2

    .line 79
    :pswitch_a
    new-instance p0, Lck$c;

    invoke-direct {p0}, Lck$c;-><init>()V

    goto :goto_2

    .line 76
    :pswitch_b
    new-instance p0, Lck$a;

    invoke-direct {p0}, Lck$a;-><init>()V

    .line 114
    :goto_2
    invoke-virtual {p0, p1, p2}, Lck;->a(J)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseArray;)Lck;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/a;",
            ">;)",
            "Lck;"
        }
    .end annotation

    .line 69
    new-instance v0, Lck$b;

    invoke-direct {v0, p0, p1}, Lck$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method


# virtual methods
.method public a(FJLandroid/view/View;Lao;)F
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 44
    iget-object v5, v0, Lck;->a:Lam;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Lck;->g:[F

    invoke-virtual {v5, v6, v7, v8}, Lam;->a(D[F)V

    .line 45
    iget-object v5, v0, Lck;->g:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v8, :cond_0

    .line 47
    iput-boolean v10, v0, Lck;->i:Z

    .line 48
    iget-object v1, v0, Lck;->g:[F

    aget v1, v1, v9

    return v1

    .line 50
    :cond_0
    iget v11, v0, Lck;->k:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 51
    iget-object v11, v0, Lck;->f:Ljava/lang/String;

    invoke-virtual {v4, v3, v11, v10}, Lao;->a(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v11

    iput v11, v0, Lck;->k:F

    .line 52
    iget v11, v0, Lck;->k:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 53
    iput v7, v0, Lck;->k:F

    .line 56
    :cond_1
    iget-wide v11, v0, Lck;->j:J

    sub-long v11, v1, v11

    .line 57
    iget v13, v0, Lck;->k:F

    float-to-double v13, v13

    long-to-double v11, v11

    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v11, v15

    float-to-double v6, v5

    mul-double/2addr v11, v6

    add-double/2addr v13, v11

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v13, v5

    double-to-float v5, v13

    iput v5, v0, Lck;->k:F

    .line 58
    iget-object v5, v0, Lck;->f:Ljava/lang/String;

    iget v6, v0, Lck;->k:F

    invoke-virtual {v4, v3, v5, v10, v6}, Lao;->a(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 59
    iput-wide v1, v0, Lck;->j:J

    .line 60
    iget-object v1, v0, Lck;->g:[F

    aget v1, v1, v10

    .line 61
    iget v2, v0, Lck;->k:F

    invoke-virtual {v0, v2}, Lck;->a(F)F

    move-result v2

    .line 62
    iget-object v3, v0, Lck;->g:[F

    aget v3, v3, v9

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    const/4 v10, 0x1

    .line 64
    :cond_3
    iput-boolean v10, v0, Lck;->i:Z

    return v2
.end method

.method public abstract a(Landroid/view/View;FJLao;)Z
.end method
