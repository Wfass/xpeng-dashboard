.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController;
.super Ljava/lang/Object;
.source "IIcmController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController$IcmConnectEventMsgV2;
    }
.end annotation


# static fields
.field public static final LOCAL_RADIO:I = 0x1

.field public static final NET_RADIO:I = 0x2

.field public static final NONE_RADIO:I = 0x3


# virtual methods
.method public abstract setRadioType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
