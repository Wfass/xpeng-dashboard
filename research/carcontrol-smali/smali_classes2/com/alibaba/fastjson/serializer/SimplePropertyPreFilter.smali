.class public Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;
.super Lcom/alibaba/fastjson2/filter/SimplePropertyPreFilter;
.source "SimplePropertyPreFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/SerializeFilter;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/filter/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/filter/SimplePropertyPreFilter;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExcludes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-super {p0}, Lcom/alibaba/fastjson2/filter/SimplePropertyPreFilter;->getExcludes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIncludes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-super {p0}, Lcom/alibaba/fastjson2/filter/SimplePropertyPreFilter;->getIncludes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
