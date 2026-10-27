.class abstract Lcom/alibaba/fastjson2/JSONPathFilter;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameLongContainsSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameIntBetweenSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameMatchFilter;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameStringContainsSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameObjectOpSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameStringOpSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;,
        Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;,
        Lcom/alibaba/fastjson2/JSONPathFilter$EndsWithSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$StartsWithSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameDecimalOpSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;,
        Lcom/alibaba/fastjson2/JSONPathFilter$NameIsNull;,
        Lcom/alibaba/fastjson2/JSONPathFilter$Operator;
    }
.end annotation


# instance fields
.field private and:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter;->and:Z

    return-void
.end method


# virtual methods
.method abstract apply(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)Z
.end method

.method public isAnd()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter;->and:Z

    return v0
.end method

.method public setAnd(Z)Lcom/alibaba/fastjson2/JSONPathFilter;
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter;->and:Z

    return-object p0
.end method
