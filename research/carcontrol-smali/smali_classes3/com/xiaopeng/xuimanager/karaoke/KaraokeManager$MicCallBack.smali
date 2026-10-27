.class public interface abstract Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;
.super Ljava/lang/Object;
.source "KaraokeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MicCallBack"
.end annotation


# static fields
.field public static final MIC_POWER_OFF:I = 0x6

.field public static final MIC_POWER_ON:I = 0x5

.field public static final UDB_DONGLE_OFF:I = 0x4

.field public static final UDB_DONGLE_ON:I = 0x3


# virtual methods
.method public abstract micServiceCallBack(I)V
.end method

.method public abstract onErrorEvent(II)V
.end method

.method public volumeEffectCallBack(II)V
    .locals 0

    return-void
.end method
