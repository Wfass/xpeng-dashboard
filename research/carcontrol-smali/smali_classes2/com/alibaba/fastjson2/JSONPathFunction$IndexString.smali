.class final Lcom/alibaba/fastjson2/JSONPathFunction$IndexString;
.super Lcom/alibaba/fastjson2/JSONPathFunction$Index;
.source "JSONPathFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IndexString"
.end annotation


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 574
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathFunction$Index;-><init>()V

    .line 575
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFunction$IndexString;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected eq(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFunction$IndexString;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
