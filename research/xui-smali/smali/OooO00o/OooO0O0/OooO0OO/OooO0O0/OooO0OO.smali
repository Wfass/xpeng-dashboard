.class public final LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;,
        LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;,
        LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0O0:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public OooO0OO:Z

.field public OooO0Oo:Landroid/hardware/usb/UsbInterface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;

    .line 1
    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;-><init>()V

    .line 2
    sput-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;

    .line 28
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0O0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
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

    const-string v0, "vendorName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialNumber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    .line 47
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "ROOT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "k"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;->OooO0O0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;

    goto :goto_0

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;->OooO0O0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;

    .line 63
    :goto_0
    sget-object v1, Lcom/loostone/libcore/jni/JniCall;->OooO00o:Lcom/loostone/libcore/jni/JniCall;

    .line 64
    iget v0, v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0o;->OooO0Oo:I

    .line 65
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/loostone/libcore/jni/JniCall;->setUsbDeviceParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public OooO00o()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    .line 8
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;->OooO00o()V

    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    return-void
.end method

.method public OooO00o(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0Oo:Landroid/hardware/usb/UsbInterface;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0O0;-><init>(Landroid/hardware/usb/UsbInterface;)V

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    return p1
.end method

.method public final OooO00o(Landroid/hardware/usb/UsbDevice;I)Z
    .locals 2
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "usbDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0OO;->OooO00o()Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "HidProxy"

    const-string v0, "check no permission"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 32
    sget-object p2, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    goto :goto_0

    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    const/4 p1, 0x2

    :goto_0
    int-to-byte p1, p1

    const/16 p2, -0x11

    const/16 v0, 0x1d

    .line 35
    invoke-virtual {p0, p2, v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(BBB)[B

    const/4 p2, -0x1

    .line 37
    invoke-virtual {p0, p2, p1, v1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0(BBB)Ljava/lang/String;

    move-result-object p1

    .line 38
    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "check ------> "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HidProxy"

    invoke-virtual {p2, v1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V

    const-string p2, "0001"

    .line 40
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V

    .line 43
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "HidProxy"

    const-string v0, "check ------> start hid failure"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "HidProxy"

    const-string v0, "check ------> check interface failure"

    invoke-virtual {p1, p2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public OooO00o(BBB)[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    if-nez v0, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    sget-object p2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p3, "HidProxy"

    const-string v0, " ------> hidProxy release error"

    invoke-virtual {p2, p3, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_0
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "HidProxy"

    const-string p3, " ------> hidProxy byteArray default"

    invoke-virtual {p1, p2, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [B

    fill-array-data p1, :array_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2, p3}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;->OooO00o(BBB)[B

    move-result-object p1

    const-string p2, "{\n            hidCommunication!!.getBytes(inputByte0, inputByte1, inputByte2)\n        }"

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public final OooO0O0(BBB)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(BBB)[B

    move-result-object p1

    .line 8
    const/4 p2, 0x0

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    const/4 p3, 0x1

    aget-byte p1, p1, p3

    shl-int/lit8 p1, p1, 0x8

    const p3, 0xff00

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    const p2, 0xffff

    and-int/2addr p1, p2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0000"

    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final OooO0O0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;->OooO00o()V

    .line 3
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0Oo:Landroid/hardware/usb/UsbInterface;

    .line 4
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0o0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO00o;

    .line 5
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "HidProxy"

    const-string v2, " ------> hidProxy release"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OooO0O0(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    .line 12
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    if-ltz v0, :cond_2

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 15
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 16
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0Oo:Landroid/hardware/usb/UsbInterface;

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne v2, v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    move v2, v3

    goto :goto_0

    .line 20
    :cond_2
    :goto_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "HidProxy"

    const-string v2, "UsbInterface not found"

    invoke-virtual {p1, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "HidProxy"

    const-string v2, "UsbInterface is null"

    invoke-virtual {p1, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method public final OooO0OO(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "usbDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0Oo:Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "HidProxy"

    const-string v1, "start hid, checkInterface false"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    return p1
.end method
