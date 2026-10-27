.class public Lcg;
.super Lda;
.source "StopLogic.java"


# instance fields
.field private a:Lay;

.field private b:Lav;

.field private c:Lax;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lda;-><init>()V

    .line 33
    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    iput-object v0, p0, Lcg;->a:Lay;

    .line 35
    iget-object v0, p0, Lcg;->a:Lay;

    iput-object v0, p0, Lcg;->c:Lax;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 92
    iget-object v0, p0, Lcg;->c:Lax;

    invoke-interface {v0}, Lax;->a()F

    move-result v0

    return v0
.end method

.method public a(FFFFFF)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcg;->a:Lay;

    iput-object v0, p0, Lcg;->c:Lax;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 55
    invoke-virtual/range {v0 .. v6}, Lay;->a(FFFFFF)V

    return-void
.end method

.method public a(FFFFFFFI)V
    .locals 11

    move-object v0, p0

    .line 78
    iget-object v1, v0, Lcg;->b:Lav;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lav;

    invoke-direct {v1}, Lav;-><init>()V

    iput-object v1, v0, Lcg;->b:Lav;

    .line 81
    :cond_0
    iget-object v2, v0, Lcg;->b:Lav;

    iput-object v2, v0, Lcg;->c:Lax;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 82
    invoke-virtual/range {v2 .. v10}, Lav;->a(FFFFFFFI)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcg;->c:Lax;

    invoke-interface {v0}, Lax;->b()Z

    move-result v0

    return v0
.end method

.method public getInterpolation(F)F
    .locals 1

    .line 87
    iget-object v0, p0, Lcg;->c:Lax;

    invoke-interface {v0, p1}, Lax;->a(F)F

    move-result p1

    return p1
.end method
