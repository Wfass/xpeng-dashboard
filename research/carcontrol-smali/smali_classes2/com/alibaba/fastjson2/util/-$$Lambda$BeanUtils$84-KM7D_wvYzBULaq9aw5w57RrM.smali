.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;->f$2:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;->f$2:Ljava/lang/reflect/Method;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->lambda$getEnumValueField$4(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method
