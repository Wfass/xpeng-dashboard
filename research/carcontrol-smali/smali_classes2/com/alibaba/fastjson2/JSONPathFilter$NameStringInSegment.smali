.class final Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;
.super Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameStringInSegment"
.end annotation


# instance fields
.field private final not:Z

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;Z)V
    .locals 0

    .line 823
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;-><init>(Ljava/lang/String;J)V

    .line 824
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->values:[Ljava/lang/String;

    .line 825
    iput-boolean p5, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 4

    .line 834
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->values:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    .line 836
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    if-eqz v3, :cond_1

    .line 837
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->not:Z

    return p1
.end method

.method protected applyNull()Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;->not:Z

    return v0
.end method
