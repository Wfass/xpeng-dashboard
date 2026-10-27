.class public interface abstract Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;
.super Ljava/lang/Object;
.source "Ipc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/ipc/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnServerStatusListener"
.end annotation


# static fields
.field public static final STATUS_RESTART:I = 0x2

.field public static final STATUS_START:I = 0x1


# virtual methods
.method public abstract onServerStatus(Ljava/lang/String;I)V
.end method
