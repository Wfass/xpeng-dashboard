.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$IPCKey;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPCKey"
.end annotation


# static fields
.field public static final BOOLEAN_VALUE:Ljava/lang/String; = "boolean_value"

.field public static final INT_VALUE:Ljava/lang/String; = "int_value"

.field public static final SOUND_MODE:Ljava/lang/String; = "sound_mode"

.field public static final STRING_MSG:Ljava/lang/String; = "string_msg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
