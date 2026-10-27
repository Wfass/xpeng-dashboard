.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->lambda$isExtendedMap$14(Ljava/lang/Class;Ljava/util/List;Ljava/lang/reflect/Field;)V

    return-void
.end method
