.class public Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;
.super Ljava/lang/Object;
.source "Labels.java"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/LabelFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/filter/Labels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultLabelFilter"
.end annotation


# instance fields
.field final excludes:[Ljava/lang/String;

.field final includes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 13
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 14
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 21
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    .line 22
    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_1
    iput-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method
