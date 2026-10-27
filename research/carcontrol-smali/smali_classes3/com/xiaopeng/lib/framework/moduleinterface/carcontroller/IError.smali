.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IError;
.super Ljava/lang/Object;
.source "IError.java"


# static fields
.field public static final ERROR_CODE_SIGNAL_LOST:I = 0x6


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract setCode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method
