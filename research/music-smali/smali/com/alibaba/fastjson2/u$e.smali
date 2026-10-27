.class Lcom/alibaba/fastjson2/u$e;
.super Ljava/lang/Object;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final a:Lsu;

.field final b:Ljava/lang/Object;

.field final c:Ljava/lang/Object;

.field final d:Lcom/alibaba/fastjson2/g;


# direct methods
.method constructor <init>(Lsu;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V
    .locals 0

    .line 4551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4552
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$e;->a:Lsu;

    .line 4553
    iput-object p2, p0, Lcom/alibaba/fastjson2/u$e;->b:Ljava/lang/Object;

    .line 4554
    iput-object p3, p0, Lcom/alibaba/fastjson2/u$e;->c:Ljava/lang/Object;

    .line 4555
    iput-object p4, p0, Lcom/alibaba/fastjson2/u$e;->d:Lcom/alibaba/fastjson2/g;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 4560
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$e;->d:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
