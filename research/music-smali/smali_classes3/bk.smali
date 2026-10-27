.class public Lbk;
.super Lbf;
.source "HelperWidget.java"

# interfaces
.implements Lbj;


# instance fields
.field public ay:[Lbf;

.field public az:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lbf;-><init>()V

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Lbf;

    iput-object v0, p0, Lbk;->ay:[Lbf;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lbk;->az:I

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 4

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget v1, p0, Lbk;->az:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 86
    iget-object v1, p0, Lbk;->ay:[Lbf;

    aget-object v1, v1, v0

    if-nez p1, :cond_0

    .line 87
    iget v3, v1, Lbf;->aw:I

    if-eq v3, v2, :cond_0

    .line 88
    iget p1, v1, Lbf;->aw:I

    return p1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 90
    iget v3, v1, Lbf;->ax:I

    if-eq v3, v2, :cond_1

    .line 91
    iget p1, v1, Lbf;->ax:I

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public a(Lbf;)V
    .locals 3

    if-eq p1, p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget v0, p0, Lbk;->az:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbk;->ay:[Lbf;

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 48
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbf;

    iput-object v0, p0, Lbk;->ay:[Lbf;

    .line 50
    :cond_1
    iget-object v0, p0, Lbk;->ay:[Lbf;

    iget v1, p0, Lbk;->az:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 51
    iput v1, p0, Lbk;->az:I

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lbf;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf;",
            "Ljava/util/HashMap<",
            "Lbf;",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2}, Lbf;->a(Lbf;Ljava/util/HashMap;)V

    .line 57
    check-cast p1, Lbk;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lbk;->az:I

    .line 59
    iget v1, p1, Lbk;->az:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    iget-object v2, p1, Lbk;->ay:[Lbf;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf;

    invoke-virtual {p0, v2}, Lbk;->a(Lbf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lbg;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/ArrayList;ILcd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcd;",
            ">;I",
            "Lcd;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_0
    iget v2, p0, Lbk;->az:I

    if-ge v1, v2, :cond_0

    .line 75
    iget-object v2, p0, Lbk;->ay:[Lbf;

    aget-object v2, v2, v1

    .line 76
    invoke-virtual {p3, v2}, Lcd;->a(Lbf;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    :goto_1
    iget v1, p0, Lbk;->az:I

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lbk;->ay:[Lbf;

    aget-object v1, v1, v0

    .line 80
    invoke-static {v1, p2, p1, p3}, Lbx;->a(Lbf;ILjava/util/ArrayList;Lcd;)Lcd;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b_()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lbk;->az:I

    .line 70
    iget-object v0, p0, Lbk;->ay:[Lbf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
