.class public interface abstract annotation Lcom/android/car/internal/ExcludeFromCodeCoverageGeneratedReport;
.super Ljava/lang/Object;
.source "ExcludeFromCodeCoverageGeneratedReport.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/car/internal/ExcludeFromCodeCoverageGeneratedReport;
        details = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/internal/ExcludeFromCodeCoverageGeneratedReport$Reason;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final BOILERPLATE_CODE:I = 0x1

.field public static final DEBUGGING_CODE:I = 0x3

.field public static final DEPRECATED_CODE:I = 0x0

.field public static final DUMP_INFO:I = 0x2


# virtual methods
.method public abstract details()Ljava/lang/String;
.end method

.method public abstract reason()I
.end method
