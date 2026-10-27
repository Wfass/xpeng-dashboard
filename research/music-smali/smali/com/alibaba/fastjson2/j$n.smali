.class final Lcom/alibaba/fastjson2/j$n;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# instance fields
.field final a:Ljava/util/regex/Pattern;

.field final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/regex/Pattern;Z)V
    .locals 0

    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J)V

    .line 350
    iput-object p4, p0, Lcom/alibaba/fastjson2/j$n;->a:Ljava/util/regex/Pattern;

    .line 351
    iput-boolean p5, p0, Lcom/alibaba/fastjson2/j$n;->b:Z

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Z
    .locals 1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    .line 360
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/j$n;->b:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method
