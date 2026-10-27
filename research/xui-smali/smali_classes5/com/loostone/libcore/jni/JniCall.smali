.class public final Lcom/loostone/libcore/jni/JniCall;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OooO00o:Lcom/loostone/libcore/jni/JniCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loostone/libcore/jni/JniCall;

    invoke-direct {v0}, Lcom/loostone/libcore/jni/JniCall;-><init>()V

    sput-object v0, Lcom/loostone/libcore/jni/JniCall;->OooO00o:Lcom/loostone/libcore/jni/JniCall;

    const-string v0, "UsbDongle"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native exec(II)I
.end method

.method public final native getBytes(Landroid/hardware/usb/UsbDeviceConnection;IBBB)[B
    .param p1    # Landroid/hardware/usb/UsbDeviceConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native setUsbDeviceParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
