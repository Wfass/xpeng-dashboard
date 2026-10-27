.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;
.super Ljava/lang/Object;
.source "IWebSocketInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;
    }
.end annotation


# static fields
.field public static final CODE_NORMAL:I


# virtual methods
.method public abstract byteStringMessage()Lokio/ByteString;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract closedReason()Ljava/lang/String;
.end method

.method public abstract closedReasonCode()I
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isOnOpen()Z
.end method

.method public abstract isOnReconnect()Z
.end method

.method public abstract stringMessage()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
