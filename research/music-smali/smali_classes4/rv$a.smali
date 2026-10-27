.class final Lrv$a;
.super Ljava/lang/Object;
.source "ASMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:[Ljava/lang/String;

.field d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lrv$a;->a:Ljava/lang/String;

    .line 395
    iput-object p2, p0, Lrv$a;->b:Ljava/lang/String;

    .line 396
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lrv$a;->c:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 397
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 398
    iget-object p2, p0, Lrv$a;->c:[Ljava/lang/String;

    aget-object v0, p3, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lrv$a;->a:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lrv$a;->b:Ljava/lang/String;

    .line 390
    iput-object p3, p0, Lrv$a;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 410
    :cond_1
    check-cast p1, Lrv$a;

    .line 411
    iget-object v2, p0, Lrv$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lrv$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lrv$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lrv$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lrv$a;->c:[Ljava/lang/String;

    iget-object p1, p1, Lrv$a;->c:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 416
    iget v0, p0, Lrv$a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 417
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lrv$a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lrv$a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 418
    iget-object v1, p0, Lrv$a;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    iput v0, p0, Lrv$a;->d:I

    .line 421
    :cond_0
    iget v0, p0, Lrv$a;->d:I

    return v0
.end method
