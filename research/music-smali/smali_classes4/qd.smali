.class public interface abstract annotation Lqd;
.super Ljava/lang/Object;
.source "JSONType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lqd;
        a = ""
        b = ""
        c = {}
        d = true
        e = {}
        f = .enum Lcom/alibaba/fastjson2/aj;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/aj;
        g = false
        h = {}
        i = {}
        j = {}
        k = Ljava/lang/Void;
        l = {}
        m = ""
        n = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract d()Z
.end method

.method public abstract e()[Lcom/alibaba/fastjson2/ab$b;
.end method

.method public abstract f()Lcom/alibaba/fastjson2/aj;
.end method

.method public abstract g()Z
.end method

.method public abstract h()[Ljava/lang/String;
.end method

.method public abstract i()[Ljava/lang/String;
.end method

.method public abstract j()[Ljava/lang/String;
.end method

.method public abstract k()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract l()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lqo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Ljava/lang/String;
.end method
