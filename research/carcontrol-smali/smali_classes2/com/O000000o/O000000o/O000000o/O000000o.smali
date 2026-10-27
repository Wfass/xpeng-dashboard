.class public interface abstract annotation Lcom/O000000o/O000000o/O000000o/O000000o;
.super Ljava/lang/Object;
.source "Expose.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/O000000o/O000000o/O000000o/O000000o;
        O000000o = true
        O00000Oo = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract O000000o()Z
.end method

.method public abstract O00000Oo()Z
.end method
