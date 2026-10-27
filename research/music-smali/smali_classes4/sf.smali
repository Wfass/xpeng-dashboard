.class final Lsf;
.super Ljava/lang/Object;
.source "Symbol.java"


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:J

.field g:I

.field final h:I

.field i:Lsf;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lsf;->a:I

    .line 61
    iput p2, p0, Lsf;->b:I

    .line 62
    iput-object p3, p0, Lsf;->c:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lsf;->d:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lsf;->e:Ljava/lang/String;

    .line 65
    iput-wide p6, p0, Lsf;->f:J

    .line 66
    iput p8, p0, Lsf;->h:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 70
    iget v0, p0, Lsf;->g:I

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lsf;->e:Ljava/lang/String;

    invoke-static {v0}, Lsh;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsf;->g:I

    .line 73
    :cond_0
    iget v0, p0, Lsf;->g:I

    return v0
.end method
