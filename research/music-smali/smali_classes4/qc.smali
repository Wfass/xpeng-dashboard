.class public interface abstract annotation Lqc;
.super Ljava/lang/Object;
.source "JSONField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lqc;
        a = 0x0
        b = ""
        c = ""
        d = ""
        e = true
        f = true
        g = false
        h = {}
        i = Ljava/lang/Void;
        j = Ljava/lang/Void;
        k = Ljava/lang/Void;
        l = {}
        m = {}
        n = false
        o = ""
        p = ""
        q = ""
        r = false
        s = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()[Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract j()Ljava/lang/Class;
.end method

.method public abstract k()Ljava/lang/Class;
.end method

.method public abstract l()[Lcom/alibaba/fastjson2/u$d;
.end method

.method public abstract m()[Lcom/alibaba/fastjson2/ab$b;
.end method

.method public abstract n()Z
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Z
.end method

.method public abstract s()Z
.end method
