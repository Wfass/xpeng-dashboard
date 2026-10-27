.class public interface abstract Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;
.super Ljava/lang/Object;
.source "ISecurityModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/ISecurityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    }
.end annotation


# virtual methods
.method public abstract onResult(Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ret",
            "exception"
        }
    .end annotation
.end method
