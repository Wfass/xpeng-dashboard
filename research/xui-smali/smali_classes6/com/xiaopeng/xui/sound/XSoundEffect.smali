.class public interface abstract Lcom/xiaopeng/xui/sound/XSoundEffect;
.super Ljava/lang/Object;
.source "XSoundEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/sound/XSoundEffect$SoundLoader;,
        Lcom/xiaopeng/xui/sound/XSoundEffect$Location;,
        Lcom/xiaopeng/xui/sound/XSoundEffect$ID;
    }
.end annotation


# static fields
.field public static final FX_DEL:I = 0x5

.field public static final FX_DEMO:I = -0x1

.field public static final FX_SWITCH_OFF:I = 0x4

.field public static final FX_SWITCH_ON:I = 0x3

.field public static final FX_TOUCH:I = 0x1

.field public static final FX_WHEEL_SCROLL:I = 0x2

.field public static final LOCATION_ASSETS:I = 0x0

.field public static final LOCATION_RES:I = 0x2

.field public static final LOCATION_SYSTEM:I = 0x1


# virtual methods
.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method
