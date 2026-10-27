.class public final Lcom/alibaba/fastjson2/af;
.super Lcom/alibaba/fastjson2/ad;
.source "JSONWriterUTF16JDK8UF.java"


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/ab$a;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/ad;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Z)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/ad;->b(Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/af;->r()V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/af;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 23
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/af;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    .line 24
    :goto_1
    sget-object v3, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v5, Labf;->h:J

    invoke-virtual {v3, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    .line 25
    array-length v5, v3

    move v6, v1

    .line 28
    :goto_2
    array-length v7, v3

    if-ge v6, v7, :cond_6

    .line 29
    aget-char v7, v3, v6

    .line 30
    iget-char v8, p0, Lcom/alibaba/fastjson2/af;->j:C

    if-eq v7, v8, :cond_5

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_5

    const/16 v8, 0x20

    if-lt v7, v8, :cond_5

    if-eqz v0, :cond_3

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_5

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_5

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    const/16 v8, 0x29

    if-eq v7, v8, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    const/16 v8, 0x7f

    if-le v7, v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    .line 40
    iget p1, p0, Lcom/alibaba/fastjson2/af;->n:I

    add-int v0, p1, v5

    add-int/lit8 v0, v0, 0x2

    .line 43
    iget-object v2, p0, Lcom/alibaba/fastjson2/af;->w:[C

    array-length v2, v2

    if-lt v0, v2, :cond_7

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/af;->e(I)V

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/af;->w:[C

    add-int/lit8 v2, p1, 0x1

    .line 48
    iget-char v6, p0, Lcom/alibaba/fastjson2/af;->j:C

    aput-char v6, v0, p1

    .line 49
    array-length p1, v3

    invoke-static {v3, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    .line 51
    iget-char p1, p0, Lcom/alibaba/fastjson2/af;->j:C

    aput-char p1, v0, v2

    add-int/2addr v2, v4

    .line 52
    iput v2, p0, Lcom/alibaba/fastjson2/af;->n:I

    return-void

    .line 56
    :cond_8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/af;->g(Ljava/lang/String;)V

    return-void
.end method
