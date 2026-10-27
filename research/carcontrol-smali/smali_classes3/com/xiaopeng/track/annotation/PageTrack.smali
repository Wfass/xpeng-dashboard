.class public interface abstract annotation Lcom/xiaopeng/track/annotation/PageTrack;
.super Ljava/lang/Object;
.source "PageTrack.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/xiaopeng/track/annotation/PageTrack;
        value = .enum Lcom/xiaopeng/track/constant/PID;->none:Lcom/xiaopeng/track/constant/PID;
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
.method public abstract value()Lcom/xiaopeng/track/constant/PID;
.end method
