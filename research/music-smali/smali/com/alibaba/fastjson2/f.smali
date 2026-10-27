.class public Lcom/alibaba/fastjson2/f;
.super Ljava/lang/Object;
.source "JSONPObject.java"


# instance fields
.field private function:Ljava/lang/String;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/f;->parameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/f;->parameters:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson2/f;->function:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/Object;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/f;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson2/f;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson2/f;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/f;->function:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
