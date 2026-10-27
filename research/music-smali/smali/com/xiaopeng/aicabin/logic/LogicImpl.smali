.class public interface abstract annotation Lcom/xiaopeng/aicabin/logic/LogicImpl;
.super Ljava/lang/Object;
.source "LogicImpl.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/xiaopeng/aicabin/logic/LogicImpl;
        exported = false
        label = "Logic Desc"
        protection = .enum Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Normal:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;
    }
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
.method public abstract exported()Z
.end method

.method public abstract label()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract protection()Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;
.end method
