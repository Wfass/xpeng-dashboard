.class public interface abstract Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer$Implementation;
.super Ljava/lang/Object;
.source "MirrorControlManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer$IBaseImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/MirrorControlManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Implementation"
.end annotation


# virtual methods
.method public abstract foldMirror(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFold"
        }
    .end annotation
.end method

.method public abstract getMirrorFoldState()I
.end method
