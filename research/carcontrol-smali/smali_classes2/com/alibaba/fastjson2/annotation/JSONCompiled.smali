.class public interface abstract annotation Lcom/alibaba/fastjson2/annotation/JSONCompiled;
.super Ljava/lang/Object;
.source "JSONCompiled.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/fastjson2/annotation/JSONCompiled;
        referenceDetect = true
        smartMatch = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract referenceDetect()Z
.end method

.method public abstract smartMatch()Z
.end method
