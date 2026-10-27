.class final Lcom/alibaba/fastjson2/g$c;
.super Lcom/alibaba/fastjson2/g;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final f:Lcom/alibaba/fastjson2/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 999
    new-instance v0, Lcom/alibaba/fastjson2/g$c;

    const-string v1, "#-1"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/g$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson2/g$c;->f:Lcom/alibaba/fastjson2/g$c;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1002
    new-array v0, v0, [Lcom/alibaba/fastjson2/g$b;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/g;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 1

    .line 1027
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1037
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1007
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1017
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1022
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1

    .line 1067
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
