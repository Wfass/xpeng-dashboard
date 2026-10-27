.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
.super Ljava/lang/Object;
.source "IStatEvent.java"


# static fields
.field public static final CUSTOM_DEVICE_MCUVER:Ljava/lang/String; = "_mcuver"

.field public static final CUSTOM_EVENT:Ljava/lang/String; = "_event"

.field public static final CUSTOM_MODULE:Ljava/lang/String; = "_module"

.field public static final CUSTOM_MODULE_VERSION:Ljava/lang/String; = "_module_version"

.field public static final CUSTOM_NETWORK:Ljava/lang/String; = "_network"

.field public static final CUSTOM_STARTUP:Ljava/lang/String; = "_st_time"

.field public static final CUSTOM_TIMESTAMP:Ljava/lang/String; = "_time"

.field public static final CUSTOM_UID:Ljava/lang/String; = "_uid"


# virtual methods
.method public abstract getEventName()Ljava/lang/String;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Character;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Number;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract setEventName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventName"
        }
    .end annotation
.end method

.method public abstract toJson()Ljava/lang/String;
.end method
