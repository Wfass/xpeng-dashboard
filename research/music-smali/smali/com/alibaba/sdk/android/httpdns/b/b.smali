.class public Lcom/alibaba/sdk/android/httpdns/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private a:[I

.field private a:[Ljava/lang/String;

.field private b:[I

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;[ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    if-nez p3, :cond_1

    new-array p3, v0, [Ljava/lang/String;

    :cond_1
    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/b/b;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    iget-object v1, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    iget-object v1, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    invoke-static {v0, v1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isSameServer([Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)Z
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    invoke-static {v0, v1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isSameServer([Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    invoke-static {v1, v2, p4, p5}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isSameServer([Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    const/4 p1, 0x1

    return p1
.end method

.method public a([Ljava/lang/String;[I)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->isSameServer([Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    const/4 p1, 0x1

    return p1
.end method

.method public a()[I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    return-object v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/b/b;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
