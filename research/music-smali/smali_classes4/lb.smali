.class public Llb;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:F

.field public d:Llb$a;

.field public e:I

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:F

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLlb$a;IFFIIFZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual/range {p0 .. p11}, Llb;->a(Ljava/lang/String;Ljava/lang/String;FLlb$a;IFFIIFZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;FLlb$a;IFFIIFZ)V
    .locals 0

    .line 42
    iput-object p1, p0, Llb;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Llb;->b:Ljava/lang/String;

    .line 44
    iput p3, p0, Llb;->c:F

    .line 45
    iput-object p4, p0, Llb;->d:Llb$a;

    .line 46
    iput p5, p0, Llb;->e:I

    .line 47
    iput p6, p0, Llb;->f:F

    .line 48
    iput p7, p0, Llb;->g:F

    .line 49
    iput p8, p0, Llb;->h:I

    .line 50
    iput p9, p0, Llb;->i:I

    .line 51
    iput p10, p0, Llb;->j:F

    .line 52
    iput-boolean p11, p0, Llb;->k:Z

    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 58
    iget-object v0, p0, Llb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Llb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    .line 60
    iget v1, p0, Llb;->c:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Llb;->d:Llb$a;

    invoke-virtual {v1}, Llb$a;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget v1, p0, Llb;->e:I

    add-int/2addr v0, v1

    .line 63
    iget v1, p0, Llb;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget v1, p0, Llb;->h:I

    add-int/2addr v0, v1

    return v0
.end method
