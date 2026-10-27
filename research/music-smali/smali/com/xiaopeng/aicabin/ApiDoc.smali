.class public interface abstract annotation Lcom/xiaopeng/aicabin/ApiDoc;
.super Ljava/lang/Object;
.source "ApiDoc.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/xiaopeng/aicabin/ApiDoc;
        param = ""
        resp = Ljava/lang/Void;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract param()Ljava/lang/String;
.end method

.method public abstract resp()Ljava/lang/Class;
.end method
