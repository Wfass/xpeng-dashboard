.class Lcom/amap/api/services/a/ch;
.super Lcom/amap/api/services/a/cy;
.source "DexDownLoadRequest.java"


# instance fields
.field private a:Lcom/amap/api/services/a/cd;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/cd;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amap/api/services/a/cy;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/cd;

    .line 36
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/cd;

    invoke-virtual {v0}, Lcom/amap/api/services/a/cd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
