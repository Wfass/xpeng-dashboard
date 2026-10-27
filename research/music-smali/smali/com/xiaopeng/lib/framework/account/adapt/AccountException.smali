.class public Lcom/xiaopeng/lib/framework/account/adapt/AccountException;
.super Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
.source "AccountException.java"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;-><init>(Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountException;->mCode:I

    return v0
.end method
