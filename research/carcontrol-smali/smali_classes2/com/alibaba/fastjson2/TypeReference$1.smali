.class Lcom/alibaba/fastjson2/TypeReference$1;
.super Lcom/alibaba/fastjson2/TypeReference;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson2/TypeReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/TypeReference;-><init>(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/TypeReference$1;)V

    return-void
.end method
