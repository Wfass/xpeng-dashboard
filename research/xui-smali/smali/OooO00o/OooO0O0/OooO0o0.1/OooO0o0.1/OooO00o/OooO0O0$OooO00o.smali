.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string p2, "USB\u8bbe\u5907\u63a5\u5165 "

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "DongleEventManager"

    invoke-virtual {p1, v0, p2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    invoke-virtual {p1, p3}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 5
    iget-object p2, p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    .line 6
    iget-object p2, p2, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;

    if-nez p2, :cond_1

    .line 7
    iget-object p1, p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 8
    invoke-static {p3, p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 10
    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0()Landroid/hardware/usb/UsbManager;

    move-result-object p1

    .line 11
    iget-object p2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 12
    iget-object p2, p2, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "<get-mPermissionIntent>(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/PendingIntent;

    .line 13
    invoke-virtual {p1, p3, p2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method
