.class public Lcom/alibaba/fastjson2/filter/BeanContext;
.super Ljava/lang/Object;
.source "BeanContext.java"


# instance fields
.field private final beanClass:Ljava/lang/Class;

.field private final features:J

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldClass:Ljava/lang/Class;

.field private final fieldType:Ljava/lang/reflect/Type;

.field private final format:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->beanClass:Ljava/lang/Class;

    .line 39
    iput-object p2, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->method:Ljava/lang/reflect/Method;

    .line 40
    iput-object p3, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->field:Ljava/lang/reflect/Field;

    .line 41
    iput-object p4, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->name:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->label:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldClass:Ljava/lang/Class;

    .line 44
    iput-object p7, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldType:Ljava/lang/reflect/Type;

    .line 45
    iput-wide p8, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->features:J

    .line 46
    iput-object p10, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->beanClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFeatures()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->features:J

    return-wide v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isJsonDirect()Z
    .locals 4

    .line 82
    iget-wide v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->features:J

    const-wide/high16 v2, 0x4000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
