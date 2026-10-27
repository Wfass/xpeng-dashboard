.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbsError;
.super Ljava/lang/Object;
.source "AbsError.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IError;


# instance fields
.field code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbsError;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 12
    iput p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/AbsError;->code:I

    return-void
.end method
