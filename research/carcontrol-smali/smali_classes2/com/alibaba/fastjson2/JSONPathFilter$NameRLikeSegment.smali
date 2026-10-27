.class final Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;
.super Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameRLikeSegment"
.end annotation


# instance fields
.field final not:Z

.field final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/regex/Pattern;Z)V
    .locals 0

    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;-><init>(Ljava/lang/String;J)V

    .line 350
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;->pattern:Ljava/util/regex/Pattern;

    .line 351
    iput-boolean p5, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;->not:Z

    return-void
.end method


# virtual methods
.method apply(Ljava/lang/Object;)Z
    .locals 1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    .line 360
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;->not:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method
