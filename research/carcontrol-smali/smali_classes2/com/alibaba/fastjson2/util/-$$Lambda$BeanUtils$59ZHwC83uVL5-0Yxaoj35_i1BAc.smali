.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$59ZHwC83uVL5-0Yxaoj35_i1BAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$59ZHwC83uVL5-0Yxaoj35_i1BAc;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$59ZHwC83uVL5-0Yxaoj35_i1BAc;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->lambda$getDeclaredField$0(Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method
