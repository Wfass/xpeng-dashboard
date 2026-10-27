.class public Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;
.super Ljava/lang/Object;
.source "ServiceStateEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent;


# instance fields
.field private mType:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public type(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;
    .locals 0
    .param p1, "value"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    .line 13
    return-object p0
.end method

.method public type()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;->mType:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    return-object v0
.end method
