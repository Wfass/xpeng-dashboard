.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IAvasController;
.super Ljava/lang/Object;
.source "IAvasController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ILifeCycle;


# static fields
.field public static final AVAS_ANALOG_SOUND_GEAR_1:I = 0x0

.field public static final AVAS_ANALOG_SOUND_GEAR_2:I = 0x1

.field public static final AVAS_ANALOG_SOUND_GEAR_3:I = 0x2

.field public static final AVAS_ANALOG_SOUND_GEAR_4:I = 0x3


# virtual methods
.method public abstract isFault()Z
.end method

.method public abstract setAnalogSoundEffect(I)V
.end method

.method public abstract setAnalogSoundEnable(Z)V
.end method
