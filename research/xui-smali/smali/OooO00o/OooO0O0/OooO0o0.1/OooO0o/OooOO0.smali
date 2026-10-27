.class public LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:I

.field public OooO0Oo:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 2

    .line 19
    iget v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    .line 20
    iget v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public OooO00o([BII)I
    .locals 5

    .line 1
    iget v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    .line 2
    iget v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    sub-int/2addr v1, v0

    .line 3
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    if-gtz p3, :cond_0

    return v1

    .line 8
    :cond_0
    iget v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    rem-int/2addr v0, v2

    add-int v3, v0, p3

    if-le v3, v2, :cond_1

    sub-int/2addr v2, v0

    sub-int v3, p3, v2

    .line 12
    iget-object v4, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    invoke-static {v4, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    add-int/2addr p2, v2

    invoke-static {v0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :goto_0
    iget p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    add-int/2addr p1, p3

    iput p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    return p3
.end method

.method public OooO0O0([BII)I
    .locals 4

    .line 1
    iget v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    .line 2
    iget v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    .line 3
    iget v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    sub-int v0, v1, v0

    sub-int/2addr v2, v0

    .line 4
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 5
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 9
    :cond_0
    iget v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    rem-int/2addr v1, v2

    add-int v3, v1, p3

    if-le v3, v2, :cond_1

    .line 11
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    sub-int/2addr v2, v1

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0OO:I

    add-int/2addr p2, v2

    sub-int/2addr p2, v1

    iget-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    sub-int/2addr v2, v1

    sub-int v1, p3, v2

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0Oo:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :goto_0
    iget p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    add-int/2addr p1, p3

    iput p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    return p3
.end method

.method public OooO0O0()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO00o:I

    .line 19
    iput v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooOO0;->OooO0O0:I

    return-void
.end method
