.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f$1:Ljava/lang/annotation/Annotation;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;->f$0:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;->f$1:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;->f$0:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;->f$1:Ljava/lang/annotation/Annotation;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->lambda$isWriteEnumAsJavaBean$2(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method
