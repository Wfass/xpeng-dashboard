.class final Lcom/alibaba/fastjson2/j$l;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final i:[Ljava/lang/String;

.field final j:I

.field final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 899
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J)V

    .line 900
    iput-object p4, p0, Lcom/alibaba/fastjson2/j$l;->a:Ljava/lang/String;

    .line 901
    iput-object p5, p0, Lcom/alibaba/fastjson2/j$l;->b:Ljava/lang/String;

    .line 902
    iput-object p6, p0, Lcom/alibaba/fastjson2/j$l;->i:[Ljava/lang/String;

    .line 903
    iput-boolean p7, p0, Lcom/alibaba/fastjson2/j$l;->k:Z

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 907
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-eqz p5, :cond_1

    .line 911
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    :cond_1
    if-eqz p6, :cond_2

    .line 915
    array-length p3, p6

    :goto_1
    if-ge p1, p3, :cond_2

    aget-object p4, p6, p1

    .line 916
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 920
    :cond_2
    iput p2, p0, Lcom/alibaba/fastjson2/j$l;->j:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Z
    .locals 6

    .line 925
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 929
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 930
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/alibaba/fastjson2/j$l;->j:I

    if-ge v0, v2, :cond_1

    .line 931
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$l;->k:Z

    return p1

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$l;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 936
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 937
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$l;->k:Z

    return p1

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 942
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/j$l;->i:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 943
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    .line 944
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 946
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$l;->k:Z

    return p1

    .line 948
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 952
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$l;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 953
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 954
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$l;->k:Z

    return p1

    .line 958
    :cond_6
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$l;->k:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
