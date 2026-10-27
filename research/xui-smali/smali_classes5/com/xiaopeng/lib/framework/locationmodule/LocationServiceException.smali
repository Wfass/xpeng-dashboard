.class public Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;
.super Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
.source "LocationServiceException.java"


# static fields
.field private static final serialVersionUID:J = 0x64L


# instance fields
.field private mReasonCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "reasonCode"    # I

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;->mReasonCode:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "reasonCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;->mReasonCode:I

    .line 21
    return-void
.end method


# virtual methods
.method public getReasonCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;->mReasonCode:I

    return v0
.end method
