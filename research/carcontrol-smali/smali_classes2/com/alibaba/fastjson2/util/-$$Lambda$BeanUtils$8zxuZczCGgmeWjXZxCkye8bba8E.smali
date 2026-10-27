.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Method;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Class;

.field public final synthetic f$4:C

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$0:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$1:I

    iput p3, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$2:I

    iput-object p4, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$3:Ljava/lang/Class;

    iput-char p5, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$4:C

    iput-object p6, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$6:[Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$0:Ljava/lang/reflect/Method;

    iget v1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$1:I

    iget v2, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$2:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$3:Ljava/lang/Class;

    iget-char v4, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$4:C

    iget-object v5, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;->f$6:[Ljava/lang/reflect/Field;

    move-object v7, p1

    check-cast v7, Ljava/lang/reflect/Field;

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->lambda$getField$6(Ljava/lang/reflect/Method;IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-void
.end method
