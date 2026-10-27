.class public Lcom/xiaopeng/musicradio/datalist/p;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLAG_FIRST:I = 0x0

.field public static final FLAG_LAST:I = 0x1

.field public static final FLAG_NORMAL:I = -0x1


# instance fields
.field private mData:Ljava/lang/Object;

.field private mFlag:I

.field private mIndexOfType:I

.field private mTag:Ljava/lang/Object;

.field private mType:I


# virtual methods
.method public a()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/p;->mType:I

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/p;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/p;

    .line 92
    iget v2, p0, Lcom/xiaopeng/musicradio/datalist/p;->mType:I

    iget v3, p1, Lcom/xiaopeng/musicradio/datalist/p;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/datalist/p;->mData:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/datalist/p;->mData:Ljava/lang/Object;

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    const/4 v0, 0x2

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/p;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/p;->mData:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
