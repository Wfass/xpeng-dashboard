.class public Lcec;
.super Ljava/lang/Object;
.source "DisconnectedBufferOptions.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 35
    iput v0, p0, Lcec;->a:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcec;->b:Z

    .line 37
    iput-boolean v0, p0, Lcec;->c:Z

    .line 38
    iput-boolean v0, p0, Lcec;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 58
    iget v0, p0, Lcec;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 65
    iput p1, p0, Lcec;->a:I

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcec;->b:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcec;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcec;->b:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcec;->d:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcec;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcec;->d:Z

    return v0
.end method
