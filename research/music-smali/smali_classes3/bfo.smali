.class public Lbfo;
.super Ljava/lang/Object;
.source "MsRadioItem.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 7
    iput v0, p0, Lbfo;->b:I

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lbfo;->c:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 7
    iput v0, p0, Lbfo;->b:I

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lbfo;->c:I

    .line 19
    iput p1, p0, Lbfo;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 38
    iput p1, p0, Lbfo;->c:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lbfo;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lbfo;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 26
    iget v0, p0, Lbfo;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 34
    iget v0, p0, Lbfo;->c:I

    return v0
.end method
