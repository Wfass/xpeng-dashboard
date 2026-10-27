.class public interface abstract annotation Lcom/xiaopeng/aicabin/action/ActionImpl;
.super Ljava/lang/Object;
.source "ActionImpl.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/xiaopeng/aicabin/action/ActionImpl;
        lifeCycle = .enum Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;->FULL:Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;
        startType = .enum Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;->onApplicationResumed:Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;
        threadType = .enum Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;->MainThread:Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;,
        Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;,
        Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;
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
.method public abstract lifeCycle()Lcom/xiaopeng/aicabin/action/ActionImpl$LifeCycle;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract startType()Lcom/xiaopeng/aicabin/action/ActionImpl$StartType;
.end method

.method public abstract threadType()Lcom/xiaopeng/aicabin/action/ActionImpl$ThreadType;
.end method
